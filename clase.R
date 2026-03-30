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




