set.seed(123)

hospital_data <- data.frame(
  patient_id = 1:200,
  age = sample(18:90, 200, replace = TRUE),
  gender = sample(c("Male", "Female"), 200, replace = TRUE),
  diagnosis = sample(c("Diabetes", "Hypertension", "Cardiac", "Asthma"), 200, replace = TRUE),
  length_of_stay = sample(1:15, 200, replace = TRUE),
  cost = sample(1000:20000, 200, replace = TRUE),
  readmitted = sample(c("Yes", "No"), 200, replace = TRUE)
)

write.csv(hospital_data, "data/hospital_data.csv", row.names = FALSE)
