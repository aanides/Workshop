install.packages('dplyr')
library(dplyr)

glimpse(gapminder)


#select for COLUMNS
select(gapminder,year)
select(gapminder,year,lifeExp,country)
select(gapminder,-year)

#filter for ROWS
filter (gapminder, continent== "Asia")
filter (gapminder, continent != "Oceania")
filter (gapminder, year > 2000)

two_countries <- c("Albania", "Dominican Republic")
filter(gapminder, country %in% two_countries)

#piping
min(gapminder[,'lifeExp'])
gapminder %>% select(lifeExp) %>% min()

x1 <- 1:5
x2 <- 2:6
(x1-x2)^2 %>% sum() %>% sqrt()

gapminder %>% select(-pop, -gdpPercap) %>%  filter(continent=="Asia" | continent =="Oceania")%>%
  head()

#mutate
mean_lifeExp_gapminder
gapminder %>% mutate(NewColumn = lifeExp - mean_lifeExp_gapminder) %>% head()
gapminder <- gapminder %>% mutate(NewColumn = lifeExp - mean_lifeExp_gapminder)
glimpse(gapminder)
select(gapminder, -NewColumn)
gapminder <- gapminder %>%  select(-NewColumn)

#exercise
filter(gapminder, continent == "Africa")
select(gapminder,year,lifeExp,country)

select(gapminder,year,lifeExp,country)
filter(gapminder, continent == "Africa")

gapminder %>% select(year,lifeExp,country)%>%
  filter(continent=="Africa")%>% 
  select(-continent)%>% 
  glimpse()
#correct answer:
gapminder %>% select(country, year, continent, lifeExp) %>% filter(continent == 'Africa') %>% select(-continent) %>% glimpse()

#groupby
gapminder %>% 
  group_by(continent)


#summarize
gapminder %>% 
  group_by(continent) %>% 
  summarize(MeanLife = mean(lifeExp))

gapminder %>% 
  group_by(continent, year) %>% 
  summarize(MeanLife = mean(lifeExp))

gapminder %>% 
  group_by(continent == Oceania, year) %>% 
  summarize(MeanLife = mean(lifeExp))

gapminder %>% 
  group_by(continent, year) %>% 
  summarize(MeanLife = mean(lifeExp),
SeLife = sd(lifeExp)/sqrt(n()))

gapminder %>% 
  group_by(continent, year) %>% 
  summarize(MeanLife = mean(lifeExp),
            SeLife = sd(lifeExp)/sqrt(n())) %>% 
  ggplot(mapping = aes(x = year,
                       y = MeanLife,
                       color = continent))+
  geom_line()+
  geom_errorbar(mapping = aes(ymin = MeanLife - SeLife,
                              ymax = MeanLife +SeLife,
                              width = 0.3))

#Standard Error:

#sd()/sqrt(n())

gapminder %>% 
  select(country, continent) %>% 
  group_by(continent) %>% 
  summarize(count = n())

gapminder %>% 
  select(country, continent) %>% 
  unique() %>% 
  group_by(continent) %>% 
  summarize(count = n())


gapminder %>% 
  select(country, continent) %>% 
  unique() %>% 
  group_by(continent) %>% 
  summarize(n = n()) %>% 
  mutate(count = sum(n),
         proportion = n/sum(n))

#exercise my attempt
min(gapminder[,'lifeExp'])
max(gapminder[,'lifeExp'])
select(country)
glimpse()

#exercise answer
gapminder %>% 
  select(country,lifeExp) %>% 
  group_by(country) %>% 
  summarize(min_life=min(lifeExp),
            max_life=max(lifeExp))

#exercise challenge 3, both of these answers are OK
gapminder %>% 
  group_by(country) %>% 
  summarize(meanLife = mean(lifeExp))%>% 
  filter(meanLife == min(meanLife)| meanLife == max(meanLife))

gapminder %>% 
  select(country,lifeExp) %>% 
  group_by(country) %>% 
  summarize(meanLife = mean(lifeExp)) %>% 
  filter(meanLife == min(meanLife)|meanLife == max(meanLife))

#last challenge of the day
#A) Countries whose life expectancy is lower than avg
gapminder %>% 
  group_by(country) %>% 
  summarize(meanLife = mean(lifeExp),
            mean_gdp = mean(gdpPercap),
            continent = unique(continent))%>% 
  filter(meanLife < mean_lifeExp_gapminder) %>% 
    ggplot(aes(x = mean_gdp, y=meanLife)) + 
    geom_point(mapping = aes(colour=continent))


  