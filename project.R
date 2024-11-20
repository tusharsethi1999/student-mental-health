df <- read.csv('Death_rates_for_suicide__by_sex__race__Hispanic_origin__and_age__United_States.csv')
df2 <- read.csv('Drug_overdose_death_rates__by_drug_type__sex__age__race__and_Hispanic_origin__United_States.csv')
df3 <- read.csv('Mental_Health_Care_in_the_Last_4_Weeks.csv')
df4 <- read.csv('./archive/business.csv')
df5 <- read.csv('./archive/economy.csv')

library(readr)
student.performance <- read_csv('student_performance_zip.csv')
student.performance.columns <- as.data.frame(colnames(student.performance))

student.mental.health <- read_csv('Student Mental health.csv')
student.mental.health.columns <- as.data.frame(colnames(student.mental.health))

performance.column.file <- file('columns_performance.txt')
write_csv(student.performance.columns, performance.column.file, append=TRUE)
close(performance.column.file)

mental.health.column.file <- file('columns_mental_health.txt')
writeLines(as.character(student.mental.health.columns), mental.health.column.file)
close(mental.health.column.file)

num_unique <- lapply(df3, function(x) length(unique(x)))
num_unique
