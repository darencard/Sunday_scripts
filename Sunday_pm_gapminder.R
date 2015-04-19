# This is a script to explore the gapminder dataset using R
# Daren Card
# dcard@uta.edu
# April 19, 2015

# Install dplyr package and dependencies
#install.packages("dplyr", dependencies=TRUE)
library("dplyr")

# Read in data as tab-delimited
gap.in <- read.table("output/combined_gapMinder.tsv", 
                     sep = "\t", 
                     header=TRUE)

# Introducing dplyr for piping commands together with data

gap.in %>%
    filter(pop > 15000000) %>%
    select(country, year, pop) %>%
    group_by(country) %>%
    summarize(min = min(pop))

# Challenge
# Calculate the mean population per continent per year for years prior to 1990
challenge <- gap.in %>%
    group_by(year, continent) %>%
    filter(year < 1990) %>%
    summarize(avg = mean(pop)) %>%
    as.data.frame() # sets to normal data frame

gap.in %>%
    group_by(year, continent) %>%
    filter(year < 1990) %>%
    summarize(avg = mean(pop)) -> challenge # special dplyr data frame

# Tidy data overview
# Load 'Iris' dataset, which isn't "tidy"
attach(iris)
View(iris)

# Install and load tidyr package
#install.packages("tidyr", dependencies = TRUE)
library("tidyr")

# tidying Iris up with tidyr
iris.long <- gather(iris, "Measurement", "value", 1:4)
View(iris.long)

# Other random stuff from lesson

for (row.number in 1:10){
    for (col.number in 1:5){
        print(gap.in[row.number,col.number])
    }
}

add.me <- function(x, y){
    x + y
}

add.me(3,4)
