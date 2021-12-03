library(here)
here::i_am("plainR/solution.R")
measurement<-as.integer(readLines(here("data/measurement_day1.txt")))
sum(diff(measurement)>0)

library(data.table)
day2<-readLines(here("data/day2.txt"))
day2<-setDT(as.data.frame(day2))[, paste0("v", 1:2) := tstrsplit(day2, " ")]
day2<-as.data.frame(day2[, .(sum.depth = sum(as.numeric(v2))), by = v1])
(day2$sum.depth[day2$v1 == "down"] - day2$sum.depth[day2$v1 == "up"])*day2$sum.depth[day2$v1 == "forward"]


