library(here)
here::i_am("plainR/solution.R")
measurement<-as.integer(readLines(here("data/measurement_day1.txt")))
sum(diff(measurement)>0)
