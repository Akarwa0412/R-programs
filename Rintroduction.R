"Hello World!"
'Hello World!'
5
5 10 20

name="AK"
name
a="Aditya"
a
age=40
age
b=32
b
Name   #variable name should be same #R is case sensitive language 

name

g="15"
age=age+5
age
age=age+10
age
age=age-5
age
5*10
5/2
text="Good"
paste("Students are",text) # It is used to give full statement #It is a function
paste("My name is:",a)
var1=var2=var3="Orange"

#Legal variable Names

myvar="Aditya"
my_var="Krishna"
myVar="Aarav"
MYVAR="Harsh"
myvar3="Ayush"
this.year=2023
this.name="Sanand"

#Illegal Variable Names

2myvar="s"
my-var="v"
my var="c"
_my_var="e"
my_v@var="f"

#Data Types in R

#Numeric/Float - decimal whole +ve -ve
#Even if it is float or +ve -ve it will show numeric

x=10.5
class(x)
class(name)

#Integer
#WHole +ve -ve any bt for integer u should end it with L

y=150L
class(y)

#Character/string

x="R is exciting"
class(x)

#logical/boolean
#All capital letters ex.TRUE or FALSE

x=TRUE #or T, FALSE,F
class(x)
x=F
class(x)


# != it means not eequal to opeartor
  1 != 6

#Artihmetic Operators
  
x=20
y=3

x+y
x-y
x*y
x/y
x^2
y^2

x %% y # modulus it gives remainder #in R modulus is given by %%

x%%y

x %/% y # It gives floor division value  # in R floor division symbol is %/%

x %/% y

2 * pi

??Constants

LETTERS
letters
month.abb
month.name
pi

#Built in Math Functions

max(25,80,23)
min(20,3,2,7)
sqrt(144)
abs(-4.5)  #It returns absolute value.Even if it is -ve it will return +ve


#Data Structures: vectors,DataFrames
#Homogeneous vectors
#vector of strings
#Vectors are created using c in strings as well as numbers

fruits=c("Banana","Apple","Orange","Pineapple","Cherry")
class(fruits)

#Vector of numbers

num=c(10,50,20)
class(num)
n2=c(T,F,TRUE,FALSE)
class(n2)

# Heterogenous Vectors

mix=c(20,1.5,"Mango",TRUE,4L,F)
class(mix)

#Operations on Vectors

x=c(2,5,8,4)
y=c(1,9,9,9)

x+y
x*5
(x+y)*1.5     #It will follow bodmas rule



#Sequence

1:10
40:45

seq(1,50,5)  # start value,end value, increment value

seq(1,50,by=3)  # by is an optional keyword if not given then also will work
seq(1,10)
seq(10,1,-2)   #decrement value

n1=1.5:6.2


# Repetation

rep(35,6)
rep("Apple",7)


# Random Sample

sample(1:50,3)
sample(1:10,200)  # error default value for replace=FALSE
sample(1:10,200,replace=TRUE)
sample(c("HP","Lenvoa","Dell"),7,replace =T)
sample(c("HP","Dell","Acer"),2)


# Indexing/ Accessing Vector elements
  # Indexing in R starts from 1 and in Python starts from 0
  # Indexing starts with [] brackets

x=c(10,20,30,42,54,46,88,57,24)
x [7]
x[4]

x[c(4,5)]

x[-1]         #removal of first element
x[-3]         #removal of 3rd element like this u can remove just put index no
x[c(-2,-5)]   #removal 2 element same time

x[1]= 4     #Replace value of 1st index
x

x[-1] = 5     #Excluding the index no fig all others are replace with number
x

x[4]=30
x[8]=12
x[3]=48
x

x[c(1,6,3)]  # Display value of these indices
x[1,3]  # Raise an error

y=c(1,9,9,9)
y
y<9

y[y<9]=7
y

y[y>7]=10
y


#Relational Opeartos with Vectors

marks=c(60,30,50,80,90)
marks>50
marks<60

marks[marks>50]
marks==80

names=c("Aditya","Krishna","Aarav","Ayush","Suraj")
p1=c('a','b')

"Aditya" %in% names      #To check wheter name is in vector or not we use Person name and %in% in our string name
"Suraj" %in% names
'aditya' %in% names     #Case sensitive we used A in our name and here used small a


#Slicing

marks

marks[3:7]
marks[5]

marks[3]=97
marks

marks[-3]=100
marks
marks[6]=66
marks

price=c(2999,4999,4394,2844,1385,5879,9734,7489,3854,5678)
price[2:7]
price[price>3000]

#Sorting
sort(price)  # It writes in ascending order the prices. #Default is ascending order it always print ascending 

sort(price,descending = T) #raise an error

sort(price,decreasing = T) # It is correct argument for descending order

length(marks)   #Length gives no of elements in vector

help(paste) # U can get info about anything like this type help(function name)
help("paste")    
paste(1:12)

nth=paste(1:12,c("st","nd","rd",rep("th",9)))
nth

month.name
month.abb

paste(month.abb,"is the",nth,"month of the year")

#Basic functions on Vectors
price
length(price)
max(price)
min(price)
sun(price)
sum(price)
mean(price)
median(price)
mode(price)


#Data frames    To create data frames u must have same no of input in both
#Slicing data frames

a=c(42,18,91,87,66)
b=c("p","q","r","s","t")
                        
data.frame(a,b)
df=data.frame(a,b)

df1=data.frame(
  Training=c("Strength","Stamina","Other"),
  Pulse=c(100,150,200),
  Duration=c(60,30,45)
)  

df1[,1] #all rows,1st column  # blank means all rows 

df1[2,] #2nd row all column

df1[,3]

df1[,]  #all rows and all column
 
df1$Training  #for many row columns use $ symbol to mention column name

df2=data.frame(
  height=c(150,160),
  weight=c(65,72)
)

food=data.frame(
  name=c("PAv Bhaji","PBM","Kaju KAtli","Panner Tikka","Masala PAPAD","Choclate shake"),
  type=c("Veg","Veg","Veg","Veg","Veg","Liquid"),
  taste=c("Sweet","Sweet","Sweet","Spicy","Spicy","Chill"),
  price=c(120,230,250,240,80,150)
)
food

# Rows with food type:Veg
food[food$type=="veg",]

#all spicy food with less than 300
food[food$taste=="Spicy" & food$price<300,]


# Orange, mtcars    are built in data set
Orange
mtcars

dim(mtcars) #no of rows and no of column. Dim stands for dimension
nrow(mtcars) #no of rows. nrow only gives rows
ncol(mtcars) #no of column. ncol only give colum
str (mtcars) #str stands for structure. it gives structure col name data type and values
summary(mtcars)

help(mtcars) #info of dataset
mtcars$cyl #individual col cyl values
table(mtcars$cyl) #there are 11 cars having 4 cylinder,7 cars-6 cylinder,14 cars-8cylinder 
mtcars$gear
table(mtcars$gear)


#USArrests-another database
USArrests
help("USArrests")
View(USArrests) #database opens in new window in new tab #capital V is there for view function

head(USArrests) #by default shows first 6 records
tail(USArrests) #last 6 records
head(USArrests,8) #now it will show first 8 record
tail(USAreests,10) # now will show last 10 record
#If u dont give any value will give ddefault as 6


data()  #Will give all available data sets







