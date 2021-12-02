library(here)
here::i_am("plainR/solution.R")
measurement<-as.integer(readLines(here("data/measurement_day1.txt")))
sum(diff(measurement)>0)

library(data.table)
day2<-readLines(here("data/day2.txt"))
day2<-setDT(day2)[, paste0("v", 1:2) := tstrsplit(day2, " ")]
(sum(day2$v2[day2$v1 == "down"]) - sum(day2$v2[day2$v1 == "up"]))*sum(day2$v2[day2$v1 == "forward"])
