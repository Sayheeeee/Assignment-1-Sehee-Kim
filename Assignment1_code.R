x <- 3
print(x)
x

x<-1:20 #integer sequence 
x

z<-c(1:100)
z
v<-c(TRUE, FALSE)
v
name<-c("sehee")

x<-vector("numeric", length=10) #define type 
x
x<-vector("logical", length=100)
x
x<-vector("integer", length=10) 
x
#use to change True false values to different types 

#############################################################
y<-c(1.7,"a") #coersion occurs 
y<-c(TRUE,"a")
y
y<-c(TRUE,1)
y
class(y) 

#vector must be in same class

f<-c(1,1.2,32,33.5)
f

f<-c(1,2,3,4,5,6,7,8,9,10)
class(f) #numeric 

e<-as.integer(f)
class(e)#integer 

x<-c(TRUE,1,FALSE,2)
x
class(x) #numeric 
#char numb logic integer
x<-c(FALSE, "TRUE")
class(x)


x<-c(0,1,2,3,4,5,6,7,8,9,10)
as.character(x)
as.logical(x) #0만 false 
as.numeric(x)


#matrices 
m<-matrix(1:6,nrow=2,ncol=3)
m
dim(m)# row column
attributes(m)# dimension

m<-1:10
dim(m)<-c(2,5)
m

x<-1:5
y<-10:14
cbind(x,y)
rbind(x,y)

getwd()

###################3/20
#define numbers first 
#list
d<-c(3,4,5,2,1,5)
c<-matrix(d,nrow=2,ncol=3)
c

#e<-list(5,"a",(FALSE,T),4i) #element one by one 
e
e<-list(5,"a",FALSE,4i) 
e

#factors
x<-factor(c("yes", "yes","no"),levels=c("yes","no"))
x
table(x)

g<-factor(c("Female","Male","Male","Female","Male","Female","Female","boy","girl"))
g
table(g) #entity
unclass(g) #class to numerical one

#missing values 
#Na(lack of data--> can have a class also) vs NaN(odds result)

x<-c(1,2,NA,10,3)
x
is.na(x)
is.nan(x)
x<-c(1,2,NaN,NA,4)
is.na(x) #NA is NaN but False for vice versa 
is.nan(x)

#data frame 
#all columns must have the same numbers of rows

x<-data.frame(foo=1:4, bar=c(T,T,F,F))
x
nrow(x)
ncol(4)

x<-data.frame(name=c("kim","lee", "sehee","kendal"),
              gender=c("Female","Male","Female","Male"),
              gpa=c(3.9,4.2,4.5,4.0),
              nationality=c("Korea","USA",NA,"Japan")
)
x
is.na(x)
is.na(x$nationality)
str(x)
as.factor(x$gender)#적용하지 않으면 저장안됨 
str(x)
y<-data.frame(name="jennie",gender="Female",gpa=3.5,nationality="Korea")
rbind(x,y)

#Names 
x<-1:3
names(x)
names(x)<-c("foo","bar","norf")#assign names 
x
x<-list(a=1,b=2,c=3,d=4)
x #list can assign names 
x$a

m<-matrix(1:6,nrow=2,ncol=3)
m
dimnames(m)<-list(c("a","b"),c("c","d","e"))
m
k<-c(1,2,3,4)
getwd()

