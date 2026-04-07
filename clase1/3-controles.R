#--------------------------------------
# IF ELSE
#--------------------------------------
x <- 10

if (x > 5) {
    print("x es mayor que 5")
} else if (x == 5) {
    print("x es igual a 5")
} else {
    print("x es menor que 5")
}


#--------------------------------------
# CONTROLES ITERATIVOS
#--------------------------------------
# FOR
n <- 5
n

res = 0
for (i in seq_len(n)) {
  res[i] = i^2
}
res

#--------------------------------------
# WHILE
#--------------------------------------
contador <- 1
while (contador <= 5) {
    print(contador)
    contador <- contador + 1
}