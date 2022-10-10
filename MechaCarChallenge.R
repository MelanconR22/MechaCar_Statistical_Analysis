library(dplyr)
library(ggplot2)
MechaCar_mpg <- read.csv(file="../R_Analysis/MechaCar_mpg.csv")

print(head(MechaCar_mpg))

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_mpg)

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_mpg))
