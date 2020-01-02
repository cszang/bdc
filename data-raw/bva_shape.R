#' Extract Brutvoegel Data from Bavarian Atlas Zip File
#' see: https://www.lfu.bayern.de/natur/atlas_brutvoegel/index.htm

# saP-relevante Brutvögel-Arten

tmp <- tempfile(fileext=".zip")
download.file("https://www.lfu.bayern.de/natur/atlas_brutvoegel/doc/bva_shape.zip", destfile=tmp)

tmp_dir <- tempdir()
dat <- unzip(tmp, exdir=tmp_dir)

files <- dat[grep(dat, pattern=".shp$")]

bird_bva <- lapply(files, sf::st_read)
bird_bva_shape <- lapply(bird_bva, function(x) dplyr::select(x, -c(geometry)))
bird_bva_shape <- plyr::rbind.fill(bird_bva_shape)
bird_bva_geo <-  lapply(bird_bva, function(x) dplyr::select(x, geometry))
bird_bva_shape$geom <- do.call(rbind, bird_bva_geo)
bird_bva_shape <- sf::st_as_sf(bird_bva_shape)

plot(st_geometry(bird_bva_shape %>% dplyr::filter(GermanName == "Haubentaucher")))

save(bird_bva_shape, file="data/bird_bva_shape.rda", compress="xz")

file.remove(tmp)
file.remove(list.files(tmp_dir, full.names=T, recursive=T))
