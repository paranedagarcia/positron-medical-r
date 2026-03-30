# ---------------------------------------------------------
# Laboratorio 1: Matrices
# Author: Gemini (AI Collaborator)
# Date: March 2026
# ---------------------------------------------------------

# Initial Data Setup
# Based on the provided Excel table (Table 1) [cite: 10, 11]
names     = c("Juan Pedro", "Pablo", "Juan", "María", "Felipe", "Óscar", "Eliana", "Camila", "Constanza")
surnames  = c("Pérez Pereira", "Gómez", "Romero", "Silva", "Ruiz", "Díaz", "Quiroga", "Sosa", "Fernández")
ruts      = c("11111111-1", "33333333-3", "44444444-4", "55555555-5", "66666666-6", "77777777-7", "88888888-8", "99999999-9", "00000000-0")
alturas   = c(1.63, 1.90, 1.80, 1.45, 1.80, 1.71, 1.75, 1.68, 1.66)
pesos   = c(77, 91, 138, 52, 40, 75, 90, 123, 60)
waist_cir = c(0.65, 0.83, 1.20, 0.63, 0.67, 1.12, 0.90, 0.70, 0.88)

# 1. Matrix containing only anthropometric measurements [cite: 13]
# Measurements: Altura, Peso, abdominal circumference
anthropometric_matrix <- matrix(c(alturas, pesos, waist_cir), 
                                nrow = 9, 
                                ncol = 3)
colnames(anthropometric_matrix) = c("Altura", "Peso", "Circunferencia")
rownames(anthropometric_matrix) = names
print("Anthropometric Measurements Matrix:")
print(anthropometric_matrix)

# 2. Matrix containing only personal data [cite: 14]
# Data: name, surname, RUT
personal_data_matrix <- matrix(c(names, surnames, ruts), 
                               nrow = 9, 
                               ncol = 3)
colnames(personal_data_matrix) = c("Nombre", "Apellido", "RUT")
print("Personal Data Matrix:")
print(personal_data_matrix)

# 3. Calculate BMI (Body Mass Index) vector 
# Formula: BMI = Peso / Altura^2
bmi_vector = pesos / (alturas^2)
names(bmi_vector) = names
print("Body Mass Index (BMI) Vector:")
print(bmi_vector)

# 4. Subset of personal data: Only First Name and Last Name 
name_subset <- personal_data_matrix[, 1:2]
print("Subset: Names and Surnames:")
print(name_subset)

# 5. Optional: Logical vector for normal Peso status [cite: 18]
# Normal Peso is generally defined as 18.5 <= BMI < 25
is_normal_peso <- bmi_vector >= 18.5 & bmi_vector < 25
print("Is the patient at a normal Peso?")
print(is_normal_peso)

