#--------------------------------------
# TIPOS DE DATOS
#--------------------------------------

# enteros forzados con "L"
numeros = c(1L, 2L, 5L, 65L, 78L, 2L, 12L)
typeof(numeros)

# agregando un double '9'
numeros = c(1L, 2L, 5L, 65L, 78L, 2L, 12L, 9)
typeof(numeros)

# agregamos un caracter
numeros <- c(1L,2L,5L,65L,78L,2L,12L, 9, "a")
typeof(numeros)

# cuantos datos hay
length(numeros)


# caracteres
letras <- c("a", "b", "c")
typeof(letras)

#--------------------------------------
# EXPRESIONES
#--------------------------------------

x = 1
x

#--------------------------------------
# VECTOR
#--------------------------------------
# Un vector es un arreglo de datos. En R, es el tipo básico de almacenaminto de datos. El vector puede ser numerico, caracter, y logico basado en sus elementos.

vector1 = c(1,3,5,7,9)
vector1

numbers.vec = c(-3,-2,-1,0,1,2,3)
numbers.vec

num2char = as.character(numbers.vec)
num2char

num2logical <- as.logical(numbers.vec)
num2logical

char.vec = c("1","3","five","7")
char.vec

# acceso al segundo elemento del "vector1"
vector1[2]

# accediendo a los 3 elementos iniciado desde el segundo elemento.
vector1[2:4]

#--------------------------------------
# FACTOR
#--------------------------------------
#
factor1 = factor(c(1,2,3,4,5,6,7,8,9))
factor1

#--------------------------------------
# ARRAYS
#--------------------------------------
#
mat.array=array(dim=c(2,2,3))
# To produce the same results over time we set a seed value
set.seed(12345)
mat.array[,,1]<-rnorm(4)
mat.array[,,2]<-rnorm(4)
mat.array[,,3]<-rnorm(4)
mat.array


# crear una matriz solo numerica
# para crear la misma matriz se usa una semilla "1234"
set.seed(12345)
num.mat <- matrix(rnorm(9),nrow=3,ncol=3)
num.mat

# matrix multiplication
t(num.mat) %*% num.mat


resultado <- 2 * (5 + 1)
resultado

#--------------------------------------
# LIST
#--------------------------------------
# Es un objeto que puede almacenar otros objetos de cualquier tipo.

var1 <- c(101,102,103,104,105)
var2 <- c(25,22,29,34,33)
var3 <- c("Non-Diabetic", "Diabetic", "Non-Diabetic", "Non-Diabetic",
          "Diabetic")
var4 <- factor(c("male","male","female","female","male"))
diab.dat <- data.frame(var1,var2,var3,var4)
mat.array=array(dim=c(2,2,3))
set.seed(12345)
mat.array[,,1]<-rnorm(4)
mat.array[,,2]<-rnorm(4)
mat.array[,,3]<-rnorm(4)

# creando la lista
obj.list <- list(elem1=var1, elem2=var2, elem3=var3, elem4=var4, elem5=diab.dat, elem6=mat.array)
obj.list

# Acceso a elementos de la lista.
obj.list[[1]]


#--------------------------------------
# DATAFRAME
#--------------------------------------
# Un marco de datos es una disposición rectangular de filas y columnas de vectores y/o factores, 
# como una hoja de cálculo en MS Excel.

# creando vectores de diferentes variables y luego creando el dataframe
var1 <- c(101,102,103,104,105)
var2 <- c(25,22,29,34,33)
var3 <- c("Non-Diabetic", "Diabetic", "Non-Diabetic", "Non-Diabetic", "Diabetic")
var4 <- factor(c("male","male","female","female","male"))
# creando el dataframe
midata <- data.frame(var1,var2,var3,var4)
midata

# determinar las clases de cada columna
class(var1)

# Para acceder a columnas individuales de un dataframe use (“$”)
midata$var1
# o de esta manera
midata[["var1"]]
# o asi
midata[,1]

#--------------------------------------
# COMPROBACION DE TIPOS
#--------------------------------------
# Comprobación de tipos
# typeof muestra el tipo de dato que contiene el objeto.
vector <- c(1,2,5,65,78,2,12)
typeof(vector)

# Comprobación mediante is.*(objeto) devuelve TRUE o FALSE si cumple el tipo según la función usada.
is.logical
## function (x)  .Primitive("is.logical")

is.integer
## function (x)  .Primitive("is.integer")

is.double
## function (x)  .Primitive("is.double")

is.numeric
## function (x)  .Primitive("is.numeric")

is.character
## function (x)  .Primitive("is.numeric")



#--------------------------------------
# COERCION DE TIPOS
#--------------------------------------
# Transforma un tipo de datos en otro, uso de as.*(objeto).
as.numeric
as.logical
as.double
as.character
as.list
as.vector


#--------------------------------------
# SELECCIONES DE DATOS
#--------------------------------------
# VECTORES
#--------------------------------------
vector <- c(1,3,5,6,8,9,0)
vector

# posiciones 3, 5 y 7
vector[c(3,5,7)]

# posiciones 2 x tres veces, 5 y 7
vector[c(2,2,2,5,7)]


# MATRICES
#--------------------------------------
matriz <- matrix(1:20, nrow = 4)
matriz

# FILA 1, COLUMNA 3
matriz[1, 3]

# toda la fila 1
matriz[1,] 

# toda la columna 2
matriz[,2] 

# elimina la fila 2
matriz[-2,]

# elimina la columna 4
matriz[,-4] 


# LISTAS
#--------------------------------------
lista <- list(1:4, "casa", list(c(4:8),8))
lista

# estructura de la lista
str(lista) 

# asigna nombres a los elementos de la lista
names(lista) <- c("A", "B", "C")
lista

# extrae elementos del nombre B
lista$B 

# equivalente a lo anterior
lista[["B"]] 

# el numero 2 de elemento 1
lista[[1]][2] 

