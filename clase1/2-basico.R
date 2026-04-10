#--------------------------------------
# CALCULOS BASICOS
#--------------------------------------
# Media aritmética
#--------------------------------------
# vector de muestra
x <- c(2, 4, 3, 6, 3, 7, 5, 8, 12, 23, 24, 27)
# uso de mean
mean(x) # 10.33

# Equivalente a:
sum(x)/length(x) # 10.33

# Si hay valores nulos o ausentes presenta errores.
x <- c(2, 4, 3, 6, 3, 7, 5, 8, 12, 23, 24, 27, NA)

# Si el vector contiene algún valor NA, el resultado será NA
mean(x) # NA

# Eliminar los valores NA
mean(x, na.rm = TRUE) # 10.33

# media aritmetica truncada
# La media aritmética truncada elimina una fracción de las observaciones de cada lado del vector antes de que se calcule la media. Para descartar valores atípicos.
mean(x, trim = 0.1, na.rm = TRUE) # 9.5

# Varianza
#--------------------------------------
g <- c(2, 4, 3, 6, 3, 7, 5, 8, 12, 23, 24, 27)
# Varianza
var(g) # 82.60606


# Desviación típica
#--------------------------------------
sd(g)

# Equivalente a:
sqrt(var(g))

# Moda
#--------------------------------------
mode <- function(x) {
  return(as.numeric(names(which.max(table(x)))))
}

mode(g)

barplot(table(g), col = c(4, rep("gray", 4)))
legend("topright", "Moda", fill = 4)


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