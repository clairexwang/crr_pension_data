

#install.packages("tidyverse")
#install.packages("bindrcpp")
library(tidyverse)

target_plans <- c(10, 9, 83, 26, 108, 78, 125, 85, 88, 80, 28, 115, 91, 111, 
                  92, 43, 34, 48, 49, 110, 53, 64, 6, 119, 71, 38, 
                  84, 69, 112, 135, 73, 93, 72, 100, 51, 59, 105, 50, 
                  79, 14, 2, 58, 98, 140, 56, 42, 45, 35, 17, 33, 8, 39, 29, 
                  90, 74, 31, 139, 36, 15, 87, 27, 86, 47, 57, 142, 75, 
                  44, 101, 54, 11, 16, 1, 122, 97, 141, 117)
                  #agent multiply employer plans excluded: 32, 46, 104, 107, 109

setwd("D:/Users/CWang/Documents/GitHub/review_crr_pension_data/API/")
data <- lapply(dir(pattern = "*.csv"), function(i){
  read.csv(i, as.is = TRUE)
})


plan_rule_list <- dir(path = ".", pattern = "*.csv")
for (i in 1:length(plan_rule_list)){
  assign(plan_rule_list[i], subset(data[[i]], ppd_id %in% target_plans))
}

#look for plans that are non-agent
goal_plans <- subset.data.frame(PensionPlanBasics.csv, 
                                ppd_id %in% target_plans)




folder <- "./API/"


for (i in 1:length(plan_rule_list)){
  assign(plan_rule_list[i], 
  read.csv(paste(folder, plan_rule_list[i], sep=''))
  )}


lapply(dAYata,assign(data, list.files(pattern = "*.csv")))

