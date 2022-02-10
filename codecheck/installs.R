## installs.R -- set up necessary R packages
## SJE


options(warn = -1) 

install.packages("gstat")
install.packages("sp")
install.packages("gwrr")

## hit a problem with ModelMap; it relies on terra package which needs something
## called gdal-config
## This was installed using `paru gdal' on arch, selecting community/gdal 3.3.1-9
install.packages("rgdal")
install.packages("ModelMap") # depends on rgdal

install.packages("RColorBrewer")
install.packages("ape")
install.packages("usdm")

install.packages("tidyr")
install.packages("MASS")


## paru udunits
## required for the 'units' R package
## Aur (1) udunits-2.2.28-2
install.packages("Compositional") #takes ~ 10 mins
install.packages("dplyr")
install.packages("spatialEco")
install.packages("broom")
install.packages("pastecs")

install.packages("GWmodel")

##renv::snapshot()

library("gwrr")
library("sp")
library("gstat")
library("ModelMap")
library("RColorBrewer")
library("ape")
library("usdm")
library("rgdal")
library("tidyr")
library("MASS")
library("Compositional")
library("dplyr")
library("spatialEco")
library("broom")
library("GWmodel") 
library("pastecs")
