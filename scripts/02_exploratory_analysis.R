library(tidyverse)

# Summary statistics
summary(data)

# Readmission counts
data %>%
  group_by(readmitted) %>%
  summarise(count = n())

# Readmission by gender
data %>%
  group_by(gender, readmitted) %>%
  summarise(count = n())
