#' ---
#' title: "Process EuroLST data for Bavaria"
#' author: "RS-eco"
#' ---

# Only selected bioclim variables are available online

# Specify file directory
filedir <- "/home/matt/Documents/Data/EuroLST/"

# Specify filenames
vars <- c("bio01", "bio02", "bio03", "bio04", "bio05", "bio06", "bio07", "bio10", "bio11")
files <- paste0("eurolst_clim.", vars, ".zip")

# Download files
lapply(files, function(file){
  if(!file.exists(paste0(filedir, file))){
    download.file(paste0("http://www.geodati.fmach.it/eurolst/", file, "?sequence=1"), 
                  destfile=paste0(filedir, file))
  }
})

#' Unzip files
lapply(files, function(file){unzip(paste0(filedir, file), exdir = filedir)})

#' Load files
dat <- raster::stack(paste0(filedir, sub(".zip", ".tif", files)))
raster::plot(dat[[1]])

load("data/bavaria.rda")
bavaria_laea <- sp::spTransform(bavaria, raster::projection(dat))
dat_bav <- raster::crop(dat, bavaria_laea, snap="out")

load("data/tk25_grid.rda")
tk25_r <- raster::rasterFromXYZ(tk25_grid)
(eurolst_bav_gk <- raster::projectRaster(dat_bav, crs=sp::CRS("+init=epsg:31468")))
eurolst_bav_tk25 <- raster::resample(eurolst_bav_gk, tk25_r, method="bilinear")
raster::plot(eurolst_bav_tk25)
eurolst_bav_tk25 <- raster::mask(eurolst_bav_tk25, tk25_r)
raster::plot(eurolst_bav_tk25)
eurolst_bav_tk25 <- as.data.frame(raster::rasterToPoints(eurolst_bav_tk25))

colnames(eurolst_bav_tk25) <- c("x", "y", "bio1", "bio2", "bio3", "bio4", "bio5", "bio6", "bio7", "bio10", "bio11")
head(eurolst_bav_tk25)
save(eurolst_bav_tk25, file="data/eurolst_bav_tk25.rda", compress="xz")

