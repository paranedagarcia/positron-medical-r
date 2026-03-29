library(tidyverse)

datos = c(14, 15, 22, 25, 22, 21, 24, 24, 30, 25, 22, 36, 40, 35, 36, 25, 22, 28, 22)
boxplot(datos, horizontal = TRUE,
        main = "Diagrama de Caja",
        ylab = "Valores",
        col = "lightblue")