library(dplyr)
mechacar_table <- read.csv('MechaCar_mpg.csv',check.names = F,stringsAsFactors = F)
lm(formula = mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechacar_table)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechacar_table))

suspension_table <- read.csv('Suspension_Coil.csv',check.names = F,stringsAsFactors = F)

?summarize()
total_summary <- suspension_table %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))
lot_summary <- suspension_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI)) 

?t.test()
t.test(suspension_table$PSI)

t.test(subset(suspension_table,Manufacturing_Lot=="Lot1",select = PSI))
t.test(subset(suspension_table,Manufacturing_Lot=="Lot2",select = PSI))
t.test(subset(suspension_table,Manufacturing_Lot=="Lot3",select = PSI))
