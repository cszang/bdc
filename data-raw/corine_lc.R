#' ---
#' title: "Create Corine land cover data for Bavaria"
#' author: "RS-eco"
#' ---

# Downloaded from https://land.copernicus.eu/pan-european/corine-land-cover

# Specify file directory
filedir <- "/media/matt/Data/Documents/Wissenschaft/Data/Corine/"

# Load files
cha_files <- list.files(filedir, pattern=".*_CHA.*\\.tif$", full.names=T)
clc_files <- list.files(filedir, pattern=".*_CLC.*\\.tif$", full.names=T)
cha_dat <- raster::stack(cha_files)
clc_dat <- raster::stack(clc_files)

# Crop by extent of bavaria
load("data/bavaria.rda")
bavaria_laea <- sp::spTransform(bavaria, raster::projection(cha_dat))
cha_bav <- raster::crop(cha_dat, bavaria_laea, snap="out")
clc_bav <- raster::crop(clc_dat, bavaria_laea, snap="out")

# Re-sample to TK25
load("data/tk25_grid.rda")
tk25_r <- raster::rasterFromXYZ(tk25_grid)
(cha_bav_gk <- raster::projectRaster(cha_bav, crs=sp::CRS("+init=epsg:31468")))
(clc_bav_gk <- raster::projectRaster(clc_bav, crs=sp::CRS("+init=epsg:31468")))
corine_cha_bav_tk25 <- raster::resample(cha_bav_gk, tk25_r, method="ngb")
corine_lc_bav_tk25 <- raster::resample(clc_bav_gk, tk25_r, method="ngb")
corine_cha_bav_tk25 <- raster::mask(corine_cha_bav_tk25, tk25_r)
corine_lc_bav_tk25 <- raster::mask(corine_lc_bav_tk25, tk25_r)
raster::plot(corine_cha_bav_tk25)
raster::plot(corine_lc_bav_tk25)
corine_cha_bav_tk25 <- as.data.frame(raster::rasterToPoints(corine_cha_bav_tk25))
corine_lc_bav_tk25 <- as.data.frame(raster::rasterToPoints(corine_lc_bav_tk25))
colnames(corine_cha_bav_tk25) <- c("x", "y", 2000, 2006, 2012, 2018)
colnames(corine_lc_bav_tk25) <- c("x", "y", 1990, 2000, 2006, 2012, 2018)
head(corine_cha_bav_tk25)
head(corine_lc_bav_tk25)

# Define categories
library(dplyr)
corine_lc_bav_tk25 <- corine_lc_bav_tk25 %>%
  mutate_at(vars(-c(x,y)), factor, levels = c(111, 112, 121, 122, 123, 124, 131, 132, 133, 141, 142, 211, 212, 213, 221, 222, 
                                              223, 231, 241, 242, 243, 244, 311, 312, 313, 321, 322, 323, 324, 331, 332, 333, 
                                              334, 335, 411, 412, 421, 422, 423, 511, 512, 521, 522, 523, 999), 
            labels=c("Continuous urban fabric","Discontinuous urban fabric","Industrial or commercial units",
                     "Road and rail networks and associated land","Port areas","Airports","Mineral extraction sites","Dump sites",
                     "Construction sites","Green urban areas","Sport and leisure facilities","Non-irrigated arable land",
                     "Permanently irrigated land", "Rice fields", "Vineyards", "Fruit trees and berry plantations", "Olive groves",
                     "Pastures", "Annual crops associated with permanent crops", "Complex cultivation patterns",
                     "Land principally occupied by agriculture with significant areas of natural vegetation",
                     "Agro-forestry areas","Broad-leaved forest", "Coniferous forest", "Mixed forest", "Natural grasslands",
                     "Moors and heathland", "Sclerophyllous vegetation", "Transitional woodland-shrub", "Beaches dunes sands",
                     "Bare rocks", "Sparsely vegetated areas", "Burnt areas", "Glaciers and perpetual snow", "Inland marshes",
                     "Peat bogs", "Salt marshes", "Salines", "Intertidal flats", "Water courses", "Water bodies",
                     "Coastal lagoons", "Estuaries", "Sea and ocean", "NODATA"))

# Save to file
save(corine_lc_bav_tk25, file="data/corine_lc_bav_tk25.rda", compress="xz")
save(corine_cha_bav_tk25, file="data/corine_cha_bav_tk25.rda", compress="xz")
