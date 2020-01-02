#' ---
#' title: "Create CCI data for Bavaria"
#' author: "RS-eco"
#' ---

## CCI Land-cover data

# Specify file directory
filedir <- "/media/matt/Data/Documents/Wissenschaft/Data/LC_CCI/"

# Define filenames
years <- 1992:2015
filenames <- paste0("ESACCI-LC-L4-LCCS-Map-300m-P1Y-", years, "-v2.0.7.tif")

# Download files
lapply(filenames, function(x){
  download.file(paste0("ftp://geo10.elie.ucl.ac.be/v207/", x), 
                destfile=paste0(filedir, x))
})

# Load files
files <- paste0(filedir, filenames)
dat <- raster::stack(files)

# Crop by extent of bavaria
load("data/bavaria.rda")
cci_bav <- raster::crop(dat, bavaria, snap="out")

# Re-sample to TK25
load("data/tk25_grid.rda")
tk25_r <- raster::rasterFromXYZ(tk25_grid)
(cci_bav_gk <- raster::projectRaster(cci_bav, crs=sp::CRS("+init=epsg:31468")))
cci_bav_tk25 <- raster::resample(cci_bav_gk, tk25_r, method="ngb")
cci_bav_tk25 <- raster::mask(cci_bav_tk25, tk25_r)
cci_bav_tk25 <- as.data.frame(raster::rasterToPoints(cci_bav_tk25))
colnames(cci_bav_tk25) <- c("x", "y", years)
head(cci_bav_tk25)

# Define categories
library(dplyr)
round10 <- function(x, na.rm = FALSE) round(x/10, digits=0)*10
cci_bav_tk25 <- cci_bav_tk25 %>% mutate_at(vars(-c(x,y)), round10) %>%
  mutate_at(vars(-c(x,y)), factor, levels = seq(0,220, by=10), 
            labels=c("No Data", "Cropland, rainfed", "Cropland, irrigated or post-flooding",
                     "Mosaic cropland (>50%) / natural vegetation (tree, shrub, herbaceous cover) (<50%)",
                     "Mosaic natural vegetation (tree, shrub, herbaceous cover) (>50%) / cropland (<50%)",
                     "Tree cover, broadleaved, evergreen, closed to open (>15%)",
                     "Tree cover, broadleaved, deciduous, closed to open (>15%)",
                     "Tree cover, needleleaved, evergreen, closed to open (>15%)",
                     "Tree cover, needleleaved, deciduous, closed to open (>15%)",
                     "Tree cover, mixed leaf type (broadleaved and needleleaved)",
                     "Mosaic tree and shrub (>50%) / herbaceous cover (<50%)",
                     "Mosaic herbaceous cover (>50%) / tree and shrub (<50%)", "Shrubland", "Grassland", "Lichens and mosses", 
                     "Sparse vegetation (tree, shrub, herbaceous cover) (<15%)", "Tree cover, flooded, fresh or brakish water", 
                     "Tree cover, flooded, saline water", "Shrub or herbaceous cover, flooded, fresh/saline/brakish water",
                     "Urban areas", "Bare areas", "Water bodies", "Permanent snow and ice"))

# Save to file
save(cci_bav_tk25, file="data/cci_bav_tk25.rda", compress="xz")
