library(here)
here::i_am("plainR/solution.R")
measurement<-as.integer(readLines(here("data/measurement_day1.txt")))
sum(diff(measurement)>0)

library(data.table)
day2<-readLines(here("data/day2.txt"))
day2<-as.data.frame(setDT(as.data.frame(day2))[, paste0("v", 1:2) := tstrsplit(day2, " ")][, .(sum.depth = sum(as.numeric(v2))), by = v1])
(day2$sum.depth[day2$v1 == "down"] - day2$sum.depth[day2$v1 == "up"])*day2$sum.depth[day2$v1 == "forward"]



day3<-readLines(here("data/day3.txt"))
day3<-do.call( "rbind", strsplit(day3, split = ""))
day3 <- matrix(as.numeric(day3), ncol = 12)
strtoi(paste(ifelse(colSums(day3)/nrow(day3) >0.5, 1,0),collapse=""),base=2)*
  strtoi(paste(abs(ifelse(colSums(day3)/nrow(day3) >0.5, 1,0)-1),collapse=""),base=2)
  


