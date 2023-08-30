ages=c(21,30,40,22,45,50,51,23,25,35)
plot(ages)
salary=c(21000,30000,40000,22000,45000,50000,51000,23000,25000,35000)
plot (salary)

plot(ages,salary) #age will go x-axis and salary y-axis

help("plot")

airquality=datasets::airquality

#Top 10 rows and last 10 rows

head(airquality,10)
tail(airquality,10)
names(airquality)   #names of all columns

df=airquality[,-6] #excludes column no 6
df
summary(airquality[,1])   #summary statistics for column 1
summary(airquality$temp)

airquality$Wind  #display of wind column

#Visualization of these df

plot(airquality$Wind)
plot(airquality$Temp,airquality$Wind,type="p")
plot(airquality) #scatterplot
help(plot)
plot(airquality$Ozone,airquality$Month)
plot(airquality$Month,airquality$Ozone)

plot(airquality$Wind,type="p")  # p:points, l:line, b:Both
plot(airquality$Wind, type="l")
plot(airquality$Wind,type="b")

plot(airquality$Wind,
     xlab='Ozone concentration',
     ylab='No of Instances',
     main='Ozone levels in NY city',
     col='red',
     type='l')
plot(airquality,col='red')
plot(airquality$Ozone,airquality$Solar.R)


#Horizontal bar plot

barplot(airquality$Ozone,
        main="Ozone concentration in air",
        ylab='ozone levels',
        col='blue',
        horiz=T,
        axes=F)
help(barplot)


#Histogram

hist(airquality$Temp)

hist(airquality$Temp,
     main='Solar radiation values in air',
     xlab='solar rad',
     col='blue',
     border='red')

help(hist)


#Single box plot      #It means outliers or extreme values.

help("boxplot")


boxplot(airquality$Wind,
        main='boxplot',
        col='blue',
        border='red',
        horizontal = T)

boxplot.stats(airquality$Wind)$out  #oultier values

airquality$Ozone


#Multiple Box Plots

boxplot(airquality[,1:4],
        main='Multiple box plots',
        horizontal= TRUE,
        col='pink')


# Margin of grid(mar)(bootom,left,top,right)
#no of rows and columns(mfrow)
#whether a border is to be included(bty)
#and position of 
#labels(las:1 for horizontal,las:0 for vertical)
#bty-box round the plot(o,n,7,L,C,U)

help(par)

par(mfrow=c(4,3),mar=c(1,2,1,2),las=0,bty='o')
plot(airquality$Ozone)
plot(airquality$Ozone,airquality$Wind)
plot(airquality$Ozone,type='l')
plot(airquality$Wind,type='l')
plot(airquality$Solar.R,type='l')
barplot(airquality$Ozone,main='ozone concentration',xlab='ozone levels',col='green',horiz=T)
hist(airquality$Solar.R)
boxplot(airquality$Solar.R)
boxplot(airquality[,0:4],amin="multiple box plots")


# Considering NA values

airquality
max(airquality$Wind)
min(airquality$Temp)
min(airquality$Solar.R)
mean(airquality$Solar.R)
mean(airquality$Wind)

mean(airquality$Solar.R,na.rm=T)
median(airquality$Ozone)
median(airquality$Ozone,na.rm=T)
min(airquality$Ozone)
min(airquality$Ozone,na.rm=T)


View(airquality)


# Variance   #Standard Deviation
   var(airquality$Wind)
   sd(airquality$Ozone)
   sd(airquality$Ozone,na.rm=T)

   skewness(airquality$Ozone,na.rm=T) 
   kurtosis(airquality$Ozone,na.rm=T) 
   skewness(airquality[,1:4],na.rm=T)
  
#Density plot
   
plot(density(airquality$Wind))
plot(density(airquality$Ozone,na.rm=T))



#In class excerise

e_quakes=datasets::quakes

   


   
   
   
   
   
   