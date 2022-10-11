library(dplyr)
library(ggplot2)

#Deliverable 1
MechaCar_mpg <- read.csv(file="../R_Analysis/MechaCar_mpg.csv")

print(head(MechaCar_mpg))

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_mpg)

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_mpg))

Suspension_Coil <- read.csv(file="../R_Analysis/Suspension_Coil.csv")

#Deliverable 2

total_summary <- summarize(Suspension_Coil,mean(PSI), median(PSI),var(PSI), sd(PSI))

lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups='keep')

#Deliverable 3

t.test((Suspension_Coil$PSI), mu = 1500)

t.test(subset(Suspension_Coil,Manufacturing_Lot=="Lot1")$PSI, mu = 1500)
t.test(subset(Suspension_Coil,Manufacturing_Lot=="Lot2")$PSI, mu = 1500)
t.test(subset(Suspension_Coil,Manufacturing_Lot=="Lot3")$PSI, mu = 1500)
