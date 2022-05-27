library(tidyverse)
setwd("C:/Users/sophi/OneDrive/Desktop/GitHubRepo/MechaCar_Statistical_Analysis")
Mecha_Car <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=Mecha_Car) 
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=Mecha_Car))

