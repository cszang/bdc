#' ---
#' title: "Protected area data for Bavaria"
#' author: "RS-eco"
#' ---

library(sf); library(raster)

# Set file directory
filedir <- "/media/matt/Data/Documents/Wissenschaft/Data/WDPA"

# Download PAs of Germany
#download.file("d1gam3xoknrgr2.cloudfront.net/current/WDPA_Dec2019_DEU-shapefile.zip",
#              destfile=paste0(filedir, "/WDPA_Dec2019_DEU-shapefile.zip"))

# Can be downloaded from protectedplanet.net, but is updated every month, 
# you have to adjust the month and year according to the current date.

# Unzip shapefile
#unzip(paste0(filedir, "/WDPA_Dec2019_DEU-shapefile.zip"), exdir = filedir)

# Read PA file
pa_poly <- sf::st_read(dsn=paste0(filedir, "/WDPA_Dec2019_DEU-shapefile-polygons.shp"))
pa_point <- sf::st_read(dsn=paste0(filedir, "/WDPA_Dec2019_DEU-shapefile-points.shp"))

# Load outline of bavaria
load("data/bavaria.rda")

# Subset PAs by extent of Bavaria
bavaria <- sf::st_as_sf(bavaria)

# Identify intersections
pa_bav_lst <- sf::st_intersects(pa_poly, bavaria)

# Subset data
pa_bav <- pa_poly[which(lengths(pa_bav_lst) > 0),]
plot(st_geometry(pa_bav))

#Save to file
save(pa_bav, file="data/pa_bav.rda", compress="xz")

# Load TK25 grid
load("data/tk25_grid.rda")
tk25_r <- raster::rasterFromXYZ(tk25_grid)
raster::projection(tk25_r) <- sp::CRS("+init=epsg:31468")

#' Transform shapefile into GK projection
pa_poly_gk <- st_transform(pa_poly, crs=sp::CRS("+init=epsg:31468"))
pa_point_gk <- st_transform(pa_point, crs=sp::CRS("+init=epsg:31468"))

# Just get IUCN categories
# Specify raster resolution (1km)
cover <-  fasterize::fasterize(pa_poly_gk, raster=disaggregate(tk25_r, fact=10), by="IUCN_CAT")
cover <- aggregate(cover, fact=10, fun=sum)
plot(cover)

# Crop by extent of bavaria
pa_bav_tk25 <- raster::mask(raster::crop(cover, tk25_r, snap="out"), tk25_r)

#' Turn into data.frame
pa_bav_tk25 <- as.data.frame(raster::rasterToPoints(pa_bav_tk25))
pa_bav_tk25 <- pa_bav_tk25 %>% tidyr::gather(iucn_cat, perc_cov, -c(x,y))
colnames(pa_bav_tk25) <- c("x", "y", "iucn_cat", "perc_cov")

#' Save shapefile as RDA file
save(pa_bav_tk25, file="data/pa_bav_tk25.rda", compress="xz")
