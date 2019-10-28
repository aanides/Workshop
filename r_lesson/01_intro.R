3+2
3/2
2* (4+2)
(4
#Data type
#number type
class (3)  
class (3L)
as.integer(3)

)
class (as.integer(3))
#complex
3 + 1i
class (3+1i)
#word types
#string
'dog'
'plant'
true
TRUE
300 > 200
3 == 3L
2 == 3L
TRUE > FALSE
#variable
my_var = 'Tucson'
dog <- 3
3 -> dog
8day
.day <- 1
.day
3day <- 9
true > false
prob1.lm
prob1_lm
x <- 3
y <- 2
y <- 17.4
x+y
x <- 3; y <- 2; y <- 17.4 ; x+y
#data structures
#vector
1:10
num_vector <- 1:10
num_vector
logical_vector <- c(TRUE, FALSE, TRUE)
char_vector <- c('Matt', 'Asher', 'Sarah')
class (num_vector)
class (char_vector)
class (logical_vector)
mixed <- c(TRUE, 'a', 0)
class (mixed)
mixed <- c(TRUE,'a')
class(mixed)
#list
my_list <- list(1,'a',TRUE)
#matrix
#vector with multiple dimmensitions
m <- matrix(nrow=2, ncol=3)
m
my_list
m <- matrix (1:6, nrow=2, ncol=3)
m
m <- matrix (1:6, nrow=2, ncol=3, byrow = TRUE)
m
#Date Frame
df <- data.frame(id= letters[1:10], x = 1:10, y=11:20)
df
class (df)
ncol(df)
nrow(df)
str (df)
fact <- c(rep(1,4), rep(2,3), rep(3,5))
factor(fact)
summary (fact)
summary (df)
cats <- data.frame(coat=c('calico', 'black', 'tabby'),
                   weight = c(2.1,5.0,3.2), 
                   likes_string = c(1,0,1))
CATS                   
getwd()
write.csv(x=cats, file = 'cats_data.csv', row.names = FALSE)
cats2 <- read.csv(file='cats_data.csv')
cats2
cats == cats2
?read.csv
cats$coat
cats$weight
cats$weight+2
age <-c(3,4,5)
cbind(cats, age)
#load gapminder data
gapminder <- read.csv(file = 'gapminder.csv')
str(gapminder)
head(gapminder)
tail (gapminder)
nrow(gapminder)
ncol(gapminder)
dim(gapminder)
summary(gap)
summary(gapminder)
?str
#subset
min(gapminder$year)
summary(gapminder$lifeExp)
#dataframe [x,y]
gapminder [1,1]
gapminder[1:5,6]
colnames(gapminder)
gapminder [20:22, 3:6]
gapminder[-3:-1704, -3:-4]
head(gapminder[,c('lifeExp','pop')])
head(gapminder[gapminder$year==1997,])
?c
gapminder[gapminder$country=='Gabon',4]
head(gapminder[ ,c('lifeExp','pop')])
head(gapminder[,c('lifeExp','pop')])
gapminder[gapminder$country=='Gabon',c(4,6)
          