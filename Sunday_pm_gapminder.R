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

for (row.number in 1:10){
    for (col.number in 1:5){
        print(gap.in[row.number,col.number])
    }
}

add.me <- function(x, y){
    x + y
}

add.me(3,4)
