# si no están instaladas, use: install.packages("dplyr") y install.packages("lubridate")
library(dplyr)
library(lubridate)

# 1. carga de datos
df = read.csv("https://patricioaraneda.cl/public/covid-19-region.csv")

# 2. Pre-process los datos
# Convertir olumna 'Fecha' en un objeto Fecha (format: dd-mm-yyyy)
df$Fecha <- dmy(df$Fecha)

df.head() # muestra las primeras filas del dataframe
# 3. Filtrar datos para la Región Metropolitana
df_rm <- df %>% filter(Region == "Metropolitana")
df_rm.head() # muestra las primeras filas del dataframe filtrado
# 4. Calcular el número total de casos confirmados en la Región Metropolitana
total_casos_rm <- sum(df_rm$Casos.confirmados)
print(paste("Número total de casos confirmados en la Región Metropolitana:", total_casos_rm))
# 5. Calcular el número total de casos confirmados por fecha en la Región Metropolitana
casos_por_fecha <- df_rm %>%
  group_by(Fecha) %>%
  summarise(total_casos = sum(Casos.confirmados))
print("Número total de casos confirmados por fecha en la Región Metropolitana:")
print(casos_por_fecha)
