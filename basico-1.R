# tipos de datos basicos
datos <- USArrests

library(tidyverse)

grafico <- datos |>
  ggplot() +
  aes(y=Murder) +
  geom_boxplot()

grafico
