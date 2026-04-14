library(tidyverse)
library(janitor)

data <- read_csv("data/hospital_data.csv")

# Clean column names
data <- clean_names(data)

# Remove missing values
data <- na.omit(data)

# Convert target variable
data$readmitted <- as.factor(data$readmitted)

# View structure
str(data)
