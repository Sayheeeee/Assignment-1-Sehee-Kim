#data frame 
df<-data.frame(
  x1=c(1:9,NA),
  x2=c(2:10,NA),
  x3=c(3:11,NA),
  x4=c(4:12,NA)
)
dim(df) 
str(df)
df

df<-df[complete.cases(df),]
df

