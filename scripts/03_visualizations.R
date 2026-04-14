library(ggplot2)

# Age distribution
ggplot(data, aes(x = age)) +
  geom_histogram(binwidth = 5)

ggsave("outputs/age_distribution.png")

# Cost vs length of stay
ggplot(data, aes(x = length_of_stay, y = cost)) +
  geom_point()

ggsave("outputs/cost_vs_stay.png")

# Readmission by gender
ggplot(data, aes(x = gender, fill = readmitted)) +
  geom_bar(position = "fill")

ggsave("outputs/readmission_gender.png")
