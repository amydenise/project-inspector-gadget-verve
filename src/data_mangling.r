data <- read.csv('/home/kat/dssg/playground/data-challenges/BuildingInspections/data/Building_Violations_sample_50000.csv')

sapply(data, class)
data <- data[, !(names(data) %in% 'SSA')]
data$VIOLATION.DATE <- as.character(data$VIOLATION.DATE)
data$VIOLATION.DATE <- as.Date(data$VIOLATION.DATE, format = '%m/%d/%Y')
class(data$VIOLATION.DATE)
head(data$VIOLATION.DATE)

data = data[,which(names(data)!='SSA')]
head(data)

# replace empty string with NA
sum(is.na(data$VIOLATION.INSPECTOR.COMMENTS))
comment_breakdown <- table(data$VIOLATION.INSPECTOR.COMMENTS)
comment_breakdown_sorted <- sort(comment_breakdown, decreasing = TRUE)
data$VIOLATION.INSPECTOR.COMMENTS[ data$VIOLATION.INSPECTOR.COMMENTS == '' ] <- NA

# drop rows with empty comments
data_with_comments = data[!(is.na(data$VIOLATION.INSPECTOR.COMMENTS)),]
View(data_with_comments)

