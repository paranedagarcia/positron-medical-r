

datos = c(14, 15, 22, 25, 22, 21, 24, 24, 30, 25, 22, 36, 40, 35, 36, 25, 22, 28, 22)
boxplot(datos, horizontal = TRUE,
        main = "Diagrama de Caja",
        ylab = "Valores",
        col = "lightblue")

# Medidas de tendencia central en R....

# 1. Definición del conjunto de datos (ejemplo: edades de un grupo)
datos <- c(22, 25, 22, 30, 25, 22, 40, 35, 25, 22, 28, 22)

# 2. Cálculo de la Media (Promedio aritmético)
# Se utiliza la función mean()
media <- mean(datos)

# 3. Cálculo de la Mediana (Valor central tras ordenar los datos)
# Se utiliza la función median()
mediana <- median(datos)

# 4. Cálculo de la Moda (El valor con mayor frecuencia)
# Creamos una función personalizada para encontrar el valor más frecuente
calcular_moda <- function(v) {
tab <- table(v)                # Crea una tabla de frecuencias
indice_max <- which.max(tab)    # Encuentra la posición del valor máximo
moda <- names(tab)[indice_max]  # Obtiene el nombre (valor) de esa posición
return(as.numeric(moda))        # Lo devuelve como número
}

moda <- calcular_moda(datos)

# 5. Mostrar los resultados en la consola
cat("--- Medidas de Tendencia Central ---\n")
cat("Datos analizados:", datos, "\n")
cat("Media:", media, "\n")
cat("Mediana:", mediana, "\n")
cat("Moda:", moda, "\n")

# Extra: Resumen estadístico rápido
cat("\n--- Resumen General ---\n")
print(summary(datos))