#define a variable
# 1.creating  variable using (=) operator
age=30
# 2.creating variable using (<-) operator
# it should be use for community standard
age<- 30
# reserved keyword in R /in built function
?Reserved



#  entering input ( variable assignment)
num<- 10
#  evaluation (printing variable)
# 1. using print() function
print(num)
# 2. using cat() function
cat(num)
# 3. using calling variable itlself
num

#  data type
#  1. numeric
# numeric(discrete,continous)
x<-5
#check data type
typeof(x) #object
class(x) #class

height<- 1.56
typeof(height)
class(height)




#2. Text/Character/string

comment<-'you are looking good'
typeof(comment)
class(comment)

# 3. boolean data 
is_weekday<- TRUE
typeof(is_weekday)
class(is_weekday)
# operators
2+5
#  arithmetic operator
num1=10
num2=2
num1+num2#addition
num1-num2#subtraction
num1*num2#multipy
num1/num2#division
num1^num2#exponent
num1%%num2#reminder(it is need for know about odd or evan number. ans 0 means evan ,1 means odd)


#2.logical operator
# Negeation
#a. today is friday(positive)

#b. today is not friday(negative)

2==2 #equality
2==3

num1>num2#greater
num1<num2
num1>=num2# greater (True)or equal(false)

num1<=num2# lessthan (false)or equal(false)
num1!=num2# is not equal
# Logical And(&&)
2>1 && 4<2

2==2&&2>1

# logical OR
2==2 | 2>1
2>1 | 4<2
2==3 | 4<2

# Logical not
# Negeation
#a. today is friday(positive)

#b. today is not friday(negative)
2==2
!2==2
# 3. relational operation
2==2 #equality
2==3

num1>num2#greater
num1<num2
num1>=num2# greater (True)or equal(false)

num1<=num2# lessthan (false)or equal(false)
num1!=num2# is not equal

# data structure in R
#1. vector( to store collection of heterogeneous item)
# 1.create a vector using c() function
ages<-c(16,15,12,23,25,28)
typeof(ages)

#2. creating a vector  using : (colon )operator 
student<- 1:20
student
choromosomes<- 1:22
choromosomes
#3. creating a vector using a seq(start, stop, step) function
seq_vector=seq(1,47,3)# numeric vector
seq_vector
# mixed vector
mixed_vec= c(1,T,'black')
mixed_vec
# subsetting/indexing
ages<-c(16,15,12,23,25,28)
ages[3]
ages[c(1,4)]
ages[1:4]
# Matrix (to store 2D data)

# create a matrix using matrix()
matrix(1:9)
# fix row
matrix(1:9,nrow = 3)# number count by using col(default)
# fix column
matrix(1:9,nrow = 3,ncol = 3)# number count by using col(default)

# number count by using row
matrix(1:9,nrow = 3,ncol = 3, byrow = T)
mat=matrix(1:9,nrow = 3,ncol = 3,
           dimnames=list(
             c('x','y','z'),
             c('a','b','c')
           ))
c('x','y','z')
c('a','b','c')
mat
# column names
colnames(mat)
#row name
rownames(mat)
# check dimention
dim(mat)
# check length
length(mat)
nrow(mat)
ncol(mat)


mat=matrix(1:9,nrow = 3,ncol = 3,
           dimnames=list(
             c('x','y','z'),
             c('a','b','c')
           ))
mat
mat[1]
mat[1,2]# specific element
# row subset
mat[1,]
#column subset
mat[,2]

#list 

list(
  row=c('x','y','z'),
  col=c('a','b','c')
)

# factor (catagorical)# most important datatype
smokers<-c('yes','no','yes','yes','no')
length(smokers)
summary(smokers)
typeof(smokers)

# convert into factors
smokers<-factor(c('yes','no','yes','yes','no'))
length(smokers)
summary(smokers)
typeof(smokers)
class(smokers)

# built in data
data()
BOD

# sample size =6
age=c(12,23,25,24,26,28)

smoker=c('no','yes','yes','yes','no','yes')
marital_status=c("married",'married','unmarried','nothing','nothing','married')
#dataframe
df=data.frame(
  age=c(12,23,25,24,26,28),
  smoker=c('no','yes','yes','yes','no','yes'),
  marital_status=c("married",'married','unmarried','nothing','nothing','married')
)
class(df)
# exploring data
dim(df)
# check data structure
str(df)
# acees column
df$age
df$smoker
# fix data type usinf as family
as.factor(df$smoker)
str(df)
df$smoker=as.factor(df$smoker)
str(df)
df$marital_status=as.factor(df$marital_status)
str(df)
# summary
summary(df)

