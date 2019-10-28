install.packages('ggplot2')
install.packages("ggplot2")
library (ggplot2)
#dataframe
#variables
#visualization
gapminder<-read.csv('gapminder.csv', stringsAsFactors = TRUE)

ggplot(data=gapminder, mapping = aes(x = gdpPercap, y = lifeExp)) + geom_point()

ggplot(data=gapminder, mapping = aes(x = year, y = lifeExp, color = continent)) + geom_line()

ggplot(data=gapminder, mapping = aes(x = year, y = lifeExp, color = continent, by=country)) + geom_line()

#combine visualizations

ggplot(data=gapminder, mapping = aes(x = year, y = lifeExp, 
                                     color = continent, by=country)) + geom_line(mapping = aes(color=continent)) + geom_point()

?geom_line

ggplot(data=gapminder, mapping = aes(x = year, y = lifeExp, 
        color = continent, by=country)) + geom_line(mapping = aes(color=continent))

ggplot(data=gapminder, mapping = aes(x = year, y = lifeExp, 
         by=country)) + geom_line(mapping = aes(color=continent))


ggplot(data=gapminder, mapping = aes(x = year, y = lifeExp, 
                                     by=country)) + geom_point()

lifeExpYear <- ggplot(data=gapminder, mapping = aes(x = year, y = lifeExp, 
                                     by=country)) + geom_line(mapping=aes(color=continent)+geom_point()
ggsave(filename= "lifeExp_vs_year.png", lifeExpYear)
ggplot(data=gapminder, mapping = aes(x = year, y = lifeExp, 
                                     color = continent, by=country)) + geom_line(mapping = aes(color=continent))
ggplot(data=gapminder, mapping = aes(x = year, y = lifeExp, color = continent)) + geom_line()                                                               

ggplot(data=gapminder,mapping = aes(x=year, y=lifeExp, by=country))+
  geom_point()+geom_line(mapping=aes(color=continent))

#Fittingm models
ggplot(data=gapminder, mapping = aes(x = gdpPercap, y = lifeExp))+
  geom_point() + scale_x_log10() + geom_smooth(method = 'loess'))

ggplot(data=gapminder, mapping = aes(x=gdpPercap, y = lifeExp) +
         geom_point(mapping=aes(color=continent)) + 
         scale_x_log10() + 
         geom_smooth(method = 'loess'))

#exercise:by continent
ggplot(data=gapminder, mapping = aes(x = gdpPercap, y = lifeExp, color = continent, by=continent))+
  geom_point() + scale_x_log10() + geom_smooth(method = 'loess'))

ggplot(data=gapminder, mapping = aes(x = gdpPercap, y = lifeExp)) +
  geom_point(mapping=aes (color = continent)) + 
  scale_x_log10() + 
  geom_smooth(method ='loess')

#Exercise Answer
ggplot(data = gapminder, mapping = aes(x=gdpPercap, y= lifeExp, color=continent)) +
  geom_point(shape=17, size=3) + scale_x_log10() + geom_smooth(method = 'loess')

#playing around
ggplot(data = gapminder, mapping = aes(x=gdpPercap, y= lifeExp, color=continent, by=country)) +
  geom_point(shape=17, size=3) + scale_x_log10() + geom_smooth(method = 'loess')

ggplot(data = gapminder, mapping = aes(x=gdpPercap, y= lifeExp)) +
  geom_point(shape=17, size=3,color=continent, by=country) +
  scale_x_log10() +
  geom_smooth(method = 'loess')

ggplot(data = gapminder, mapping=aes(x=gdpPercap, y=lifeExp))+
  geom_point(mapping=aes(color=continent),shape=17,size=3) +
  scale_x_log10() +
  geom_smooth(method='loess', colour='red')

#back from lunch
ggplot(data = gapminder, mapping = aes(x=gdpPercap)) +
  geom_density()

ggplot(data = gapminder, mapping = aes(x=gdpPercap, color = continent)) +
  geom_density()

ggplot(data = gapminder, mapping = aes(x=gdpPercap, fill = continent)) +
  geom_density() +
  scale_x_log10()

ggplot(data=gapminder, mapping=aes(x=gdpPercap, fill=continent)) +
  geom_density() +
  scale_x_log10() +
  facet_wrap(~continent)

#loops
for(my_var in 1:10){
  print(my_var)
}
}
1:10
for (i in 1:3) {
  for (j in letters[1:3]) {
  print(paste(i,j))
  }
}

#using loops to automitize
c <- c()
c
for (i in 1:5) {
  c<-c(c,i^2)
  print(c)
}

    
  }
}


"x continent has a life expentancy between __ and __"
for(cont in unique(gapminder$continent))

for(cont in unique(gapminder$continent)){
  min_life <- min(gapminder[gapminder$continent == cont,'lifeExp'])
  max_life <- max(gapminder[gapminder$continent ==cont,'lifeExp'])
  print(paste(cont,"has a life expectancy between", min_life, "and",max_life))
} 

#Conditionals
x<- -5
if (x>0) {
  print("positive number")
  
}

#if else
if(x>0){
  print("positive number")
} else {
  print('negative number')
}

x <- 0

x <- 3
if (x==3){
  print('three!')
} else if (x>0){
  print('negative number')
} else if (x>0) {
  print("positive number")
}

#loop and conditional
for (i in c(-1,3,0,-7)){
  if (i>0){
    print('positive number')
  } else if (i<0){
  print('negative number')
}
}

for (i in c(-1,3,0,-7)){
  if (i>0){
    print('positive number')
  } else if (i<0){
    print('negative number')
  } else {
    print('zero')
  }
}

#gapminder with loops and conditional statements
mean_lifeExp_gapminder <- mean(gapminder$lifeExp)
summary(gapminder)

#exercise: find which continents have a mean lifeExp above 59.47
for(cont in unique(gapminder$continent)){
  if(mean(gapminder[gapminder$continent == cont,'lifeExp'])>
     mean_lifeExp_gapminder){
print(paste(cont, "has a life expectancy above average for the world"))
}
}

#myattempt
for(cont in unique(gapminder$continent)) {
 mean(gapminder[gapminder$continent ==cont, 'lifeExp') > mean_lifeExp_gapminder
  print()
}

#exercise For 2007 Find which countries have a gdp at or below the 1st quartile
#and which countries have a gdp at or above the 3rd quartile
#and which  countries have a median gdp
GDP1Q <- 1202.1
GDP1Q

#get summary stats for 2007
summary(gapminder[gapminder$year == 2007,]$gdpPercap)
GDP1Q2007 <- 1624.8
#which countries have a gdp at or below 1Q.... MY ATTEMPT
for(country in unique(gapminder$country)){
  if(gapminder[gapminder$year ==2007,$continent == cont,'gdpPercap'] ==
     GDP1Q2007){
    else if ('gdppercap' > GDP1Q2007){
    print(paste(cont, "country has GDP at or above 1st quartile"))
  }
  }
}


