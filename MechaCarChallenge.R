library(tidyverse)
setwd("C:/Users/sophi/OneDrive/Desktop/GitHubRepo/MechaCar_Statistical_Analysis")
mechaCar <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=Mecha_Car) 
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=Mecha_Car))

suspensionCoils <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
totalSummary <- suspensionCoils %>%  summarize(Mean=mean(PSI),Median=median(PSI),Variance = var(PSI), SD = sd(PSI),  .groups = 'keep')
lotSummary <- suspensionCoils %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Medain=median(PSI),Variance = var(PSI), SD = sd(PSI),  .groups = 'keep')

t.test(suspensionCoils$PSI, mu = 1500)
t.test(subset(suspensionCoils,Manufacturing_Lot == "Lot1")$PSI, mu = 1500)
t.test(subset(suspensionCoils,Manufacturing_Lot == "Lot2")$PSI, mu = 1500)
t.test(subset(suspensionCoils,Manufacturing_Lot == "Lot3")$PSI, mu = 1500)
