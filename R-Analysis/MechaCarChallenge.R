> library(dplyr)
> library(tidyverse)
> mecha_mpg <- read.csv(file='./Resources/MechaCar_mpg.csv',check.names=F,stringsAsFactors = F) 
Error in file(file, "rt") : cannot open the connection
In addition: Warning message:
  In file(file, "rt") :
  cannot open file './Resources/MechaCar_mpg.csv': No such file or directory
> mecha_mpg <- read.csv(file='./R_Analysis/MechaCar_mpg.csv',check.names=F,stringsAsFactors = F) 
Error in file(file, "rt") : cannot open the connection
In addition: Warning message:
  In file(file, "rt") :
  cannot open file './R_Analysis/MechaCar_mpg.csv': No such file or directory
> mecha_mpg <- read.csv('MechaCar_mpg.csv',check.names=F,stringsAsFactors = F) 
> lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha_mpg)

Call:
  lm(formula = mpg ~ vehicle_length + vehicle_weight + spoiler_angle + 
       ground_clearance + AWD, data = mecha_mpg)

Coefficients:
  (Intercept)    vehicle_length    vehicle_weight     spoiler_angle  
-1.040e+02         6.267e+00         1.245e-03         6.877e-02  
ground_clearance               AWD  
3.546e+00        -3.411e+00  

> summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha_mpg)) 

Call:
  lm(formula = mpg ~ vehicle_length + vehicle_weight + spoiler_angle + 
       ground_clearance + AWD, data = mecha_mpg)

Residuals:
  Min       1Q   Median       3Q      Max 
-19.4701  -4.4994  -0.0692   5.4433  18.5849 

Coefficients:
  Estimate Std. Error t value Pr(>|t|)    
(Intercept)      -1.040e+02  1.585e+01  -6.559 5.08e-08 ***
  vehicle_length    6.267e+00  6.553e-01   9.563 2.60e-12 ***
  vehicle_weight    1.245e-03  6.890e-04   1.807   0.0776 .  
spoiler_angle     6.877e-02  6.653e-02   1.034   0.3069    
ground_clearance  3.546e+00  5.412e-01   6.551 5.21e-08 ***
  AWD              -3.411e+00  2.535e+00  -1.346   0.1852    
---
  Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 8.774 on 44 degrees of freedom
Multiple R-squared:  0.7149,	Adjusted R-squared:  0.6825 
F-statistic: 22.07 on 5 and 44 DF,  p-value: 5.35e-11

> lm(mpg ~ vehicle_length + ground_clearance, data=mecha_mpg)

Call:
  lm(formula = mpg ~ vehicle_length + ground_clearance, data = mecha_mpg)

Coefficients:
  (Intercept)    vehicle_length  ground_clearance  
-91.557             6.081             3.567  

> summary(lm(mpg ~ vehicle_length + ground_clearance, data=mecha_mpg)) 

Call:
  lm(formula = mpg ~ vehicle_length + ground_clearance, data = mecha_mpg)

Residuals:
  Min      1Q  Median      3Q     Max 
-17.493  -7.705   1.344   6.642  18.500 

Coefficients:
  Estimate Std. Error t value Pr(>|t|)    
(Intercept)      -91.5573    13.9649  -6.556 3.86e-08 ***
  vehicle_length     6.0811     0.6732   9.033 7.68e-12 ***
  ground_clearance   3.5669     0.5401   6.604 3.26e-08 ***
  ---
  Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 9.078 on 47 degrees of freedom
Multiple R-squared:  0.674,	Adjusted R-squared:  0.6601 
F-statistic: 48.59 on 2 and 47 DF,  p-value: 3.637e-12

> suspension_coil <-read.csv('Suspension_Coil'check.names=F,stringsAsFactors = F)
Error: unexpected symbol in "suspension_coil <-read.csv('Suspension_Coil'check.names"
> suspension_coil<-read.csv('Suspension_Coil'check.names=F,stringsAsFactors = F)
Error: unexpected symbol in "suspension_coil<-read.csv('Suspension_Coil'check.names"
> suspension_coil <-read.csv('Suspension_Coil',check.names=F,stringsAsFactors = F)
Error in file(file, "rt") : cannot open the connection
In addition: Warning message:
  In file(file, "rt") :
  cannot open file 'Suspension_Coil': No such file or directory
> setwd("C:/Users/Lee/Desktop/R-Analysis")
> suspension_coil <-read.csv('Suspension_Coil',check.names=F,stringsAsFactors = F)
Error in file(file, "rt") : cannot open the connection
In addition: Warning message:
  In file(file, "rt") :
  cannot open file 'Suspension_Coil': No such file or directory
> suspension_coil <-read.csv('Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
> total_summary <- mecha_coil %>% summarize(Mean_PSI=mean(PSI),
                                            +                                           Median_PSI=median(PSI),
                                            +                                           Var_PSI=var(PSI),
                                            +                                           Std_Dev_PSI=sd(PSI),
                                            +                                           Num_Coil=n(), .groups = 'keep') 
Error in summarize(., Mean_PSI = mean(PSI), Median_PSI = median(PSI),  : 
                     object 'mecha_coil' not found
                   > total_summary <- suspension_coil %>% summarize
                   > View(total_summary)
                   > View(suspension_coil)
                   > View(suspension_coil)
                   > total_summary <- mecha_coil %>% summarize(Mean_PSI=mean(PSI),  Median_PSI=median(PSI),  Var_PSI=var(PSI),Std_Dev_PSI=sd(PSI),Num_Coil=n(), .groups = 'keep') 
                   Error in summarize(., Mean_PSI = mean(PSI), Median_PSI = median(PSI),  : 
                                        object 'mecha_coil' not found
                                      > total_summary <- suspension_coil %>% summarize(Mean_PSI=mean(PSI),  Median_PSI=median(PSI),  Var_PSI=var(PSI),Std_Dev_PSI=sd(PSI),Num_Coil=n(), .groups = 'keep') 
                                      > View(suspension_coil)
                                      > View(total_summary)
                                      > lot_summary <- suspension_coil  %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI), Median_PSI=median(PSI), Var_PSI=var(PSI), Std_Dev_PSI=sd(PSI), Num_Coil=n(), .groups = 'keep')
                                      > View(total_summary)
                                      > View(lot_summary)
                                      > plt1 <- ggplot(mecha_coil,aes(y=PSI)) #import dataset into ggplot2
                                      Error in ggplot(mecha_coil, aes(y = PSI)) : object 'mecha_coil' not found
                                      > plt1 <- ggplot(suspension_coil,aes(y=PSI)) #import dataset into ggplot2
                                      > plt1 + geom_boxplot() #add boxplot
                                      > plt2 <- ggplot(suspension_coil,aes(x=Manufacturing_Lot,y=PSI))
                                      > plt2 + geom_boxplot()
                                      > t.test(mecha_coil$PSI,mu=1500)
                                      Error in t.test(mecha_coil$PSI, mu = 1500) : 
                                        object 'mecha_coil' not found
                                      > t.test(suspension_coil$PSI,mu=1500)
                                      
                                      One Sample t-test
                                      
                                      data:  suspension_coil$PSI
                                      t = -1.8931, df = 149, p-value = 0.06028
                                      alternative hypothesis: true mean is not equal to 1500
                                      95 percent confidence interval:
                                        1497.507 1500.053
                                      sample estimates:
                                        mean of x 
                                      1498.78 
                                      
                                      > lot1 <- subset(suspension_coil, Manufacturing_Lot=="Lot1")
                                      > lot2 <- subset(suspension_coil, Manufacturing_Lot=="Lot2")
                                      > lot3 <- subset(suspension_coil, Manufacturing_Lot=="Lot3")
                                      > t.test(lot1$PSI,mu=1500)
                                      
                                      One Sample t-test
                                      
                                      data:  lot1$PSI
                                      t = 0, df = 49, p-value = 1
                                      alternative hypothesis: true mean is not equal to 1500
                                      95 percent confidence interval:
                                        1499.719 1500.281
                                      sample estimates:
                                        mean of x 
                                      1500 
                                      
                                      > t.test(lot2$PSI,mu=1500)
                                      
                                      One Sample t-test
                                      
                                      data:  lot2$PSI
                                      t = 0.51745, df = 49, p-value = 0.6072
                                      alternative hypothesis: true mean is not equal to 1500
                                      95 percent confidence interval:
                                        1499.423 1500.977
                                      sample estimates:
                                        mean of x 
                                      1500.2 
                                      
                                      > t.test(lot3$PSI,mu=1500)
                                      
                                      One Sample t-test
                                      
                                      data:  lot3$PSI
                                      t = -2.0916, df = 49, p-value = 0.04168
                                      alternative hypothesis: true mean is not equal to 1500
                                      95 percent confidence interval:
                                        1492.431 1499.849
                                      sample estimates:
                                        mean of x 
                                      1496.14 