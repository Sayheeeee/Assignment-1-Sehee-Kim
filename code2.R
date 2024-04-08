#########################################3/27
#vectorized options
x<-1:4
y<-6:9
x+y
x<-matrix(1:4,2,2)
y<-matrix(rep(10,4),2,2)
x*y
x
y
x%*%y

x<-8

#if
if(x>3){
  y<-10
}else{
  y<-0
}

#for
for( i in 1:10){
  print(i)
}


x<-c("a","b","c","d")
for( i in 1:4){
  print(x[i])
}

for( i in seq_along(x)){
  print(x[i])
}

for(letter in x){ #if you know all of them are character
  print(letter)
}


for(variable in x){ 
  print(variable)
}

#nested for loops 
x<-matrix(1:6,2,3)
x
for( i in seq_len(nrow(x))){
  for(j in seq_len(ncol(x))){
    print(x[i,j])
  }
}

for( i in seq_len(ncol(x))){
  for(j in seq_len(nrow(x))){
    print(x[j,i])
  }
}

count<-0
while (count<10){
  print(count)
  count<- count +1
}

z<-5
while(z>=3 &&z<=10){
  print(z)
  
  coin<- rbinom(1,1,0.5)
  
  if(coin ==1){
    z<-z+1 
  }else{
    z<-z-1 #until zero 
  }
  
}

?rbinom

#repeat
x<-1
repeat{
  print(x)
  x=x+1
  if(x==6){ # we do not print 6
    break
  }
}

x<-1:10
cnt<-0

repeat{
  print(v)
  cnt = cnt+1
  if (cnt >=100){
    break
  }
}

########################4/3
#environment 
#a diversion on binding values to symbol 
#based on environments
#scoping rules 

#lm<- function(x) {x*x} #not linear model 

search()
# what environments I have --> packages
#priority: latest one beside gloval env
#reopen--> you will see basic package of R 

#binding values to symbol

#lexical scoping 
f<-function(x,y){
  y <-2 
  y^2 +g(x) 
}

y<-15

g<-function(x){
  x*y
}

f(3)
f(3)#y<-2
g(2) #2*15 global env

#combined_atc_23
#memory large 


make.power<-function(n){
  pow<- function(x){
    x^n #x= free variable 
  }
  pow
}

cube<- make.power(3)
cube(3)

quad<- make.power(4)
quad(3)

square <-make.power(2)
square(3)

#exploring a function 
ls(environment(cube)) # "n" , "pow"
ls(environment(quad)) # "n" , "pow"
ls(environment(square))
get("n",environment(cube)) #3
get("n",environment(quad)) #4
get("n",environment(square)) #2
get("pow",environment(square)) #function 


g<- function(x){
  a<-3
  x+a+y+w 
}
g(5)
#object w not found 

w<-4
g(5) #you get answer

a<-5
g(5) #same answer #using a which is inside the function 


#coding rules 

#dates and times R 

#dates in R

x<-as.Date("2024-04-03")
x
unclass(x)

x<- Sys.time()
x

p<-as.POSIXct(x)
p
names(unclass(p))

datestring <-c("January 10, 2012 10:40","December 9, 2011 9:11")
x<-strptime(datestring,"%B %d, %Y %H:%M")
x

#Loop Functions

#lapply : loop over a list and evaluate a function on each element 
lapply
x<-list(a=1:5, b=rnorm(10)) #can be used in different row numbers
x
lapply(x,mean)
lapply(x,sd)
lapply(x,sum)

x<-1:100
lapply(x,runif,1,5) #x=1/x=2/x=3/x=4 numbers min=1 max=5
?runif
?lapply
lapply(x,rnorm,0,1) #N(0,1) numbers of 1~100

#sapply: 
x<- list(a=1:4, b=rnorm(10), c=rnorm(20,1),d=rnorm(20,3))
x
mean(x) #warning massage 
sapply(x,mean) #table
lapply(x,mean)

#apply: evaluate a function over the margins of an array(rows or columns if it's matrix
str(apply)

x<-matrix(rnorm(200),20,10)
x
dim(x)
apply(x,2,mean) #mean of each column
apply(x,1,mean) #mean of each row 
