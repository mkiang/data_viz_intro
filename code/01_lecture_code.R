## Load libraries ----
library(tidyverse)
source("./code/utils.R")

## Load data ----
# load(url("http://mathewkiang.com/assets/ahead_vis_lecture.rda"))
load("./data/vis_lecture_data.rda")

## Test ----
check_data()

## Tell me about these data, dd ----
dd

sum_dd <- dd %>%
    group_by(dataset) %>%
    summarize(
        mean_x = mean(x),
        sd_x = sd(x),
        mean_y = mean(y),
        sd_y = sd(y),
        corr = cor(x, y)
    )

print(sum_dd)

### Plot it ----
ggplot(dd,
       aes(x = x,
           y = y)) + 
    geom_point() + 
    facet_wrap(~ dataset)

## Gapminder data ----
gap

## ggplot ----
?ggplot

### Create the subset of the gap data here ----
sub_gap <- gap %>% 
    filter(year == 1990 | year == 2010)
sub_gap

### Start plotting the subsetted gapminder data here ----
ggplot(data = sub_gap, 
       mapping = aes(x = year, y = infant_mortality))

ggplot(data = sub_gap, 
       mapping = aes(x = year, y = infant_mortality)) + 
    geom_point() 

ggplot(data = sub_gap, 
       mapping = aes(x = year, 
                     y = infant_mortality,
                     group = country)) + 
    geom_point() + 
    geom_line()

## Let's make this plot better:
# Accurately conveys the intended message
# Descriptive axis labels and title
# Uses aesthetic mappings sparingly (e.g., only use shapes if they serve a purpose)
# Minimize clutter
# Colors should be meaningful (and friendly to viewers with color vision deficiency)
# Legends or annotations as appropriate
# Plots should more or less be self-contained 
# (i.e., don’t make the reader read the entire paper to understand it)
# Rarely use 3D plots
# Never use textures

## INSERT YOUR CODE


## What is the distribution? Density and histograms ----
## Let's look at the distribution of self-reported heights. What do we notice?
heights

## INSERT DENSITY PLOT CODE HERE
## THEN MAKE A HISTOGRAM

## Let's look at the distribution of algebra test scores in New York City. 
## What do we notice?
alg_scores

## PLOT DISTRIBUTIONS HERE

## What is the change (over time or space)? Line chart ----
## How has life expectancy changed over time? What about GDP? 
## What about infant mortality?
gap

## How do things compare? Bar chart ----
## Which countries have the highest or lowest life expectancy? What about
## GDP?
# x-axis = income
# y-axis is life span
# color is continent
# size is population
# year = 2010

## How are things related? Scatterplot ----
## What is the relationship between life expectancy and GDP?

## Bonus: Let’s replicate famous plots (or a couple of them)! ----
## Gapminder: https://www.gapminder.org/answers/how-does-income-relate-to-life-expectancy/


## Washington Post: http://graphics.wsj.com/infectious-diseases-and-vaccines/

# x = year
# y = state
# fill = number of cases per 100,000 person-years
