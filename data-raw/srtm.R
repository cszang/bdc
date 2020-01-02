# Altitude and terrain data

# SRTM 3ArcSec Data was downloaded from: https://gdex.cr.usgs.gov/gdex/
# https://search.earthdata.nasa.gov/

filedir <- "/media/matt/Data/Documents/Wissenschaft/Data/SRTM"

file <- c(paste0(filedir, "/NASA_SRTM_v3.0_3ArcSec_Bav.tif"), 
          paste0(filedir, "/NGA_SRTM_3ArcSec_Bav.tif"))[1]

library(raster)
alt_bav <- raster(file)
names(alt_bav)

# Load bavaria outline
load("data/bavaria.rda")

# Turn to tk25 grid
load("data/tk25_grid.rda")
tk25_r <- raster::rasterFromXYZ(tk25_grid)
raster::projection(tk25_r) <- sp::CRS("+init=epsg:31468")
alt_bav <- raster::projectRaster(alt_bav, crs=sp::CRS("+init=epsg:31468"))

# Calculate terrain variables
slope <- terrain(alt_bav, opt='slope')
aspect <- terrain(alt_bav, opt='aspect')
hill <- hillShade(slope, aspect, 40, 270)
plot(hill, col=grey(0:100/100), legend=FALSE, main='Bavaria')
plot(alt_bav, col=rainbow(25, alpha=0.35), add=TRUE)

# Terrain Ruggedness Index (TRI)
tri <- terrain(alt_bav, opt="TRI")
#TRI <- focal(x, w=f, fun=function(x, ...) sum(abs(x[-5]-x[5]))/8, pad=TRUE, padValue=NA)

# Topographic Position Index (TPI)
tpi <- terrain(alt_bav, opt="TPI")
#TPI <- focal(x, w=f, fun=function(x, ...) x[5] - mean(x[-5]), pad=TRUE, padValue=NA)

# TPI for different neighborhood size:
tpiw <- function(x, w=5) {
  m <- matrix(1/(w^2-1), nc=w, nr=w)
  m[ceiling(0.5 * length(m))] <- 0
  f <- focal(x, m)
  x - f
}
tpi5 <- tpiw(alt_bav)

# Roughness
roughness <-terrain(alt_bav, opt="roughness")
#rough <- focal(x, w=f, fun=function(x, ...) max(x) - min(x), pad=TRUE, padValue=NA, na.rm=TRUE)

# flowdir
flowdir <- terrain(alt_bav, opt="flowdir")

# Stack together, resample and crop by extent
alt_bav_tk25 <- stack(alt_bav, aspect, slope, hill, tri, tpi, tpi5, roughness, flowdir)
alt_bav_tk25 <- raster::resample(alt_bav_tk25, tk25_r, method="bilinear")
alt_bav_tk25 <- raster::mask(raster::crop(alt_bav_tk25, tk25_r), tk25_r)

# Turn into tbl_cube
alt_bav_tk25 <- as.data.frame(rasterToPoints(alt_bav_tk25))
colnames(alt_bav_tk25) <- c("x", "y", "altitude", "aspect", "slope", "hillshade", "tri", "tpi", 
                                "tpi5", "roughness", "flowdir")

# Save to file
save(alt_bav_tk25, file="data/alt_bav_tk25.rda", compress="xz")
