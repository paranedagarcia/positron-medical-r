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


#--------------------------------------
# EJERCICIO
#--------------------------------------
