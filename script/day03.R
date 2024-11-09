# working with built in data
data()
ChickWeight
CO2
BOD
#  working with package data
# 1. install package
install.packages('gapmider')
install.packages('tidyverse')
# 2. load the package
library(tidyverse)
library(gapminder)
#  veiw the data
gapminder


# explore data
#1 . examine first few rows
head(gapminder)
head(gapminder,n=10)
#2 . examine last few rows
tail(gapminder)
tail(gapminder,n=12)
#3.sampling
sample(gapminder)#  randomly row   dibe
sample_n(gapminder,20)
sample_frac(gapminder, .3)


#4. check dimention
dim(gapminder)
# check column name
names(gapminder)

#6. check data structure
str(gapminder)
glimpse(gapminder)

# sammarize the data
summary(gapminder)

#common structure for all dplyr function
# function(data, do something)
#1. select- subset of column / column selection
#select  single column by column name
select(gapminder,continent)
#select  multiple column by column name
select(gapminder, country,continent,year,pop)
gapminder
# select single column  by column number
select(gapminder,5)
# select multiple column  by column number
select(gapminder,1,3,5)
# select multiple column  by usinge range
select(gapminder,1:5)

# remove single col name
select(gapminder,-pop)
select(gapminder,-pop,-country)
select(gapminder,-c(1,3,5))

# select single column using contains() function
select(gapminder, contains('c'))
select(gapminder, contains('c'),contains('l'))# select multiple column

# select column using starts_with() function
select(gapminder,starts_with('c'))
# select column using ends_with() function
select(gapminder,ends_with('t'))


#2. filter - filter of data/subset of rows

gapminder
#equality(==)
filter(gapminder, country == 'Bangladesh')
#inequality(!=)
filter(gapminder, country!='India')

# greater
filter(gapminder,gdpPercap>800)
filter(gapminder,gdpPercap>=900)
filter(gapminder,gdpPercap<800)

# logical and (& for dplyer)
filter(gapminder,country=='Bangladesh'& gdpPercap>800)
# logical or ( | for dplyer)
filter(gapminder,country=='Bangladesh'| gdpPercap>800)
# %in% operator
filter(gapminder,country%in% c('India','Pakistan','Bangladesh'))



#3. mutate - to create new variable/column
mutate(gapminder,gdp= gdpPercap*pop)
mutate(gapminder,gdp= gdpPercap*pop/100000000)
#4. rename variable
rename(gapminder,population=pop)
# conventional way
# step1. country of interest(India)- gdp
dat=select(gapminder,country,lifeExp,pop,gdpPercap)
filter(dat,country=='India')
#5. |> (pipe operator)- shortcut(ctrl+shift+M)

gapminder |> 
  select(country,lifeExp,pop,gdpPercap) |> 
  
filter(country=='India')

# 6. grouping  and summarising data
gapminder |> 
  group_by(continent) |> 
  summarise(mean(lifeExp))
gapminder |> 
  group_by(continent) |> 
  summarise(median_lifeExp=median(lifeExp))#fix col name
#7.  sorting data
gapminder |> 
  group_by(continent) |> 
  summarise(median_lifeExp=median(lifeExp)) |> 
  arrange(median_lifeExp)# by default ascending

gapminder |> 
  group_by(continent) |> 
  summarise(median_lifeExp=median(lifeExp)) |> 
  arrange(desc(median_lifeExp))

# summary ()
mean()
median()
mode()
max()
var()
sd()
# five number summary
summary(gapminder$lifeExp)

#3. arrange- sort the data


#5. summarise -to summarise the data
