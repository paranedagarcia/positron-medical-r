
datos = c(14, 15, 22, 25, 22, 21, 24, 24, 30, 25, 22, 36, 40, 35, 36, 25, 22, 28, 22)
boxplot(datos, horizontal = TRUE,
        main = "Diagrama de Caja",
        ylab = "Valores",
        col = "lightblue")



# ==============================================================================
# PROGRAMA EN R PARA ANALIZAR EL DATASET IRIS CON UN PAIRPLOT
# ==============================================================================

# --- PASO 1: INSTALACIÓN Y CARGA DE LIBRERÍAS ---

# Definimos las librerías necesarias
librerias_necesarias <- c("ggplot2", "GGally")

# Instalamos las librerías si no están instaladas
# (Esta sección es opcional si ya las tienes, pero útil para reproducibilidad)
for (lib in librerias_necesarias) {
  if (!require(lib, character.only = TRUE)) {
    message(paste("Instalando la librería:", lib))
    install.packages(lib, dependencies = TRUE)
    library(lib, character.only = TRUE)
  }
}

# --- PASO 2: CARGA Y PREPARACIÓN DE DATOS ---

# El dataset Iris está precargado en R, lo asignamos a una variable
data(iris)

# Renombramos las columnas al español para facilitar la lectura
names(iris) <- c("Largo.Sepalo", "Ancho.Sepalo", "Largo.Petalo", "Ancho.Petalo", "Especie")

# --- PASO 3: EXPLORACIÓN INICIAL (OPCIONAL) ---
# Mostramos las primeras filas y la estructura
message("\n--- Vista rápida de los datos ---")
print(head(iris))
message("\n--- Estructura de los datos ---")
print(str(iris))

# --- PASO 4: CREACIÓN DEL PAIRPLOT CON GGALLY ---

message("\nGenerando el Pairplot Chart...")

# Usamos la función ggpairs() de la librería GGally.
# Es la forma más potente de integrar el estilo de ggplot2 en matrices de gráficos.

pairplot <- ggpairs(
  data = iris,
  
  # 1. Columnas a incluir (todas menos 'Especie', que es la 5)
  columns = 1:4, 
  
  # 2. Asignación Estética Principal: Color por Especie
  # Esto colorea puntos, líneas y distribuciones por grupo.
  mapping = ggplot2::aes(color = Especie, alpha = 0.7),
  
  # 3. Configuración de los cuadrantes (Arriba, Abajo, Diagonal)
  upper = list(
    # Arriba: Mostrar coeficientes de correlación coloreados por grupo
    continuous = wrap("cor", size = 4, alignPercent = 0.8)
  ),
  lower = list(
    # Abajo: Mostrar diagramas de dispersión con una línea de tendencia suavizada
    continuous = wrap("smooth", alpha = 0.3, size = 0.1)
  ),
  diag = list(
    # Diagonal: Mostrar densidades (curvas) en lugar de histogramas
    continuous = wrap("densityDiag", alpha = 0.5)
  ),
  
  # 4. Título y Etiquetas
  title = "Matriz de Dispersión (Pairplot) del Dataset Iris"
)

# --- PASO 5: APLICAR ESTILO FINAL Y MOSTRAR EL GRÁFICO ---

# ggpairs devuelve un objeto especial que podemos "personalizar" con temas de ggplot2.
# Usamos un tema minimalista y movemos la leyenda al final.

pairplot_final <- pairplot + 
  theme_minimal() +
  theme(
    plot.title = element_text(face = "bold", size = 16, hjust = 0.5),
    strip.text = element_text(face = "bold"), # Etiquetas de ejes en la matriz
    legend.position = "bottom"
  )

# Mostramos el gráfico final en la ventana de Plots
print(pairplot_final)

message("\nAnálisis finalizado. El gráfico se ha generado en la pestaña 'Plots'.")