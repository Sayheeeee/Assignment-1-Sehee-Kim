str(airquality)

data_airquality<-data.frame(airquality)
data_airquality

data_airquality<-data_airquality[complete.cases(data_airquality),]
data_airquality
sum(is.na(data_airquality))#0
dim(data_airquality)#6columns

#the sum and mean of columns
sum_c<-c()
mean_c<-c()
for (i in 1:ncol(data_airquality)){
  sum_c[i]<-sum(data_airquality[,i])
  mean_c[i]<-mean(data_airquality[,i])
  
}
sum_c
mean_c
