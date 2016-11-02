## This script will...
## 1. Load the trait database
## 2. plot each measurement location  
## This code assumes that geographic coordinates (input) follow the WGS84 system

#########################################
library(maps)
library(ggplot2)

setwd('../Code/')

# Site coordinates
input <- "../Data/plasticityData4gitHub_references_sample.csv"
coord<-read.csv(input,header=TRUE,sep=",",dec = ".")
#coord2 <- coord[complete.cases(coord),]
map.dat <- map_data("world")

mp <-ggplot() + geom_polygon(aes(long,lat, group=group), fill="grey65", data=map.dat) + theme_bw() +
  labs(x="Longitude",y="Latitude")

#visit.x2 <- coord2$Longitude
#visit.y2 <- coord2$Latitude
visit.x2 <- coord$Lon
visit.y2 <- coord$Lat

# set the map limits
latlimits <- c(-55, 90) 
longlimits <- c(-180, 180) 

# Now Layer the cities on top
mp <- mp+ geom_point(aes(x=visit.x2, y=visit.y2) ,color="orange", size=1) +
  coord_cartesian(xlim = longlimits, ylim = latlimits) 
mp <- mp + coord_quickmap(xlim = longlimits, ylim = latlimits)


# This will do the right thing
pdf("../Figures/map.pdf")
print(mp)
dev.off()
mp


