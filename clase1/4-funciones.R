# 2026-03-30
#--------------------------------------
# FUNCIONES
#--------------------------------------

# secuencia de numeros
seq(from = 1, to = 7)

# una forma abreviada de generar una secuencia de datos
seq(1, 7)

print(vector)

str(vector)


#--------------------------------------
# FUNCIONES PERSONALIZADAS
#--------------------------------------

# generación de una función anónima
forma <- function() {
  x <- 1
  y <- 3
  x + y
}
forma()

# calculo de IMC
imc <- function(peso, altura) {
  peso / (altura/100)^2
}
print(imc(120, 180))

