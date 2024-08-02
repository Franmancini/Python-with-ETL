#----------------------------------#
#     CURSO: BUSINESS ANALYTICS    #
#   TIPOS Y ESTRUCTURAS DE DATOS   # 
#----------------------------------#

# Ejemplo de sección o índice ####
# Ejemplo de sección o índice ----

# 1. Configuración --------------------------------------------

# Para limpiar el workspace, por si hubiera algún dataset 
# o información cargada
rm(list = ls())

# Para limpiar el área de gráficos
graphics.off()

# Cambiar el directorio de trabajo
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))
getwd()

# Limpiar la consola
cat("\014")

#--------------------------#
# CAPÍTULO 1. INTRODUCCIÓN #
#--------------------------#

# 2. Instalación y desinstalación de paquetes -----------------
install.packages("rpart",dependencies = TRUE)

library(rpart)
require(rpart) 

# remove.packages("rpart")  # Para desinstalar un paquete

#-------------------------------------------#
# CAPÍTULO 2. TIPOS Y ESTRUCTURAS DE DATOS  #
#-------------------------------------------#

x <- 2
class(x)

y <- "Data Science"
class(y)

# Hay muchas clases/tipos de datos en R, pero las más importantes 
# son: numeric, character y factor.

#----------------#
# TIPOS DE DATOS #
#----------------#

# 3. Datos numéricos ------------------------------------------
x <- 5
y <- 10

class(x)
class(y)

is.numeric(x)
x

z <- x**2
z
x == z  # ¿Comparando o asignando? 1) comparando
x =  z  # ¿Comparando o asignando? 2) asignando
x == z  # ¿Comparando o asignando? 3) comparando
x != z  # ¿Comparando o asignando? 4) comparando
x > y  
x

# Asignar un número como entero
a1 <- 2.5
class(a1)

a1 <- as.integer(a1)
class(a1)
a1
w <- a1 + 3
a1 + 3 -> w

# Funciones matemáticas

round(10.5, 0)  # La cifra es par   10 -> cte
round(11.5, 0)  # La cifra es impar 12 -> sube 

ceiling(10.5) 
floor(10.5)

sqrt(3)
sqrt(3)^2
sqrt(3)^2 == 3   # FALSE
sqrt(9)^2 == 9   # TRUE

pi
exp(1)
exp(3)
# ln logaritmo natural
log(exp(3))
log10(45)
log2(32)

#________________________
# ________ \\|// ________
# ________( o o ) _______ 
# ___oo0____(_)____Ooo___
#      Ejercicio   1     #
# Calcule la siguiente expresión, asígnelo al objeto
# formula y muestre su valor

f <- (sqrt(40+25*3.5)/log10(35))+((40+25)/35)*(exp(2)+log(20))
f

# 4. Datos character ------------------------------------------
c1 <- "fuga"
c1
class(c1)

c2 <- "no fuga"

is.character(c1)

# 5. Datos factor ---------------------------------------------
f1 <- "Si"
f2 <- "No"
class(f1)

f1 <- as.factor(f1)
f2 <- factor(f2)     
# Nota: No existe x <- integer(x), usar x <- as.integer(x)

class(f1)
class(f2)

f1
f2

# 6. Datos lógicos --------------------------------------------
d1 <- TRUE
d2 <- FALSE
d3 <- T
d4 <- F

class(d1)

d1
d2
d3

!d1
d1 & d2
d1 | d2
is.logical(d2)
is.logical(f1)

3 == 5 | 2 == 2*1

### ESTRUCTURAS DE DATOS ###

# 7. Vectores -------------------------------------------------
# Un vector es una serie de valores en un orden determinado.
# Almacena datos del mismo tipo. Para crear un vector: c(,)

nombres <- c("Jose", "Luisa", "María", "Marco",'Pedro')
nombres

class(nombres)
typeof(nombres)  # es similar a class()
length(nombres)

name <- c("Jose", "Luisa", "María", 525)
name
class(name)

dias <- c(15, 20, 60, 75)
dias
class(dias)
length(name)

# Operaciones con vectores
dias2 <- dias - 2
dias2
dias3 <- dias / 2
dias3
dias4 <- dias2+dias3
dias4
dias5 <- c(15, 20, 60, 75, 15, 20, 60, 75)
dias2+dias5



# Indexación de vectores 
# Se denomina "indexación" a la selección de los elementos de
# un vector. Para dicha selección se usan los corchetes []

# Posiciones en un Vector  dias <- c(15, 20, 60, 75)
#                                     1   2   3   4  Posición

# Acceder al segundo elemento en el vector días
dias[2]

# Incluir los datos en el rango de 2 a 3 
dias[2:3]

# Excluir el item 2 usando el signo menos
dias[-2]

#________________________
# ________ \\|// ________
# ________( o o ) _______ 
# ___oo0____(_)____Ooo___
#      Ejercicio   2     #
# Muestre todos los datos que están en la posición 1 y 4
dias[c(1,4)]

# Los principales símbolos para comparar son >,>=,<,<=,==,!=
# Todos los elementos con dias > 30
dias > 30
dias[dias > 30]

#________________________
# ________ \\|// ________
# ________( o o ) _______ 
# ___oo0____(_)____Ooo___
#      Ejercicio   3     #
# Muestre todos los elementos con días igual a 20
dias[dias == 20]

# Todos los elementos con dias > 20 y días <= 70
dias[dias > 20 & dias <= 70]

# posición de un elemento en un vector
which(dias == 20)
which.max(dias)
which.min(dias)

# Añadir el estado de mora como lógico
estado_mora <- c(FALSE, FALSE, TRUE, TRUE)
estado_mora
class(estado_mora)

estado_mora <- c(F, F, T, T)  # es similar
estado_mora
class(estado_mora)


### Factores ###

# Añadir el factor genero
genero <- c("Masculino", "Femenino", "Femenino", "Masculino")
class(genero)

genero <- as.factor(genero)
class(genero)

is.factor(genero)
genero

# Otra forma más directa
genero <- as.factor(c("Masculino", "Femenino", "Femenino", "Masculino"))
class(genero)



# Otra forma (solo funciona para datos tipo factor)
genero <- factor(c("Masculino", "Femenino", "Femenino", "Masculino"))
class(genero)
genero

# Cambiando las etiquetas de una variable categórica
genero2 <- factor(genero,levels = c("Masculino", "Femenino"),
                  labels =c("M", "F") )
genero2
table(genero2)

# Otra forma directa
levels(genero2) = c("Hombre","Mujer")  # Ojo con los levels 
genero2
levels(genero2) = c("Macho","Hembra")  # Ojo con los levels 
genero2
levels(genero2) = c("H","F")  # Ojo con los levels 
genero2


# Añadir el nivel socio-eco
nivel <- factor(c("A", "C", "B", "C","A","B","A","C","D"), 
                order = T, 
                levels = c("D","C","B","A"))
nivel
class(nivel)
table(nivel)


nivel2 <- factor(c("M", "MB", "R", "M","M","MB","B","B","B"), 
                order = T, 
                levels = c("M","R","B","MB"))
nivel2
class(nivel2)
table(nivel2)

nivel3 <- factor(c("A", "C", "B", "C"), 
                order = T, 
                levels = c("A","B","C","D"))
nivel3
class(nivel3)

# Datos tipo fecha (Date)
# Añadir la fecha de nacimiento "Año-Mes-Día"
fecha.nac <- as.Date(c("1970-01-20", "1980-03-10", "1975-05-5", "1990-08-29"))
class(fecha.nac)
fecha.nac

#________________________
# ________ \\|// ________
# ________( o o ) _______ 
# ___oo0____(_)____Ooo___
#      Ejercicio   4     #
# Modifique el siguiente código que crea un gráfico de barras,
# pero asigne un color "red" para el genero femenino y un 
# color "green" para el masculino
windows()
plot(genero, col = "red")
plot(genero, col = c("red","green"))

plot(nivel,col = "blue")
plot(nivel,col = c("green","yellow","orange"))

plot(nivel2,col = c("green","orange","yellow","red"))

# Instalando paquetes
# install.packages("rpart")
# install.packages("pacman")

# ¿Cómo haría para instalar los dos paquetes directamente?


# 8. Data frames ----------------------------------------------
# Un dataframe es como una matriz, pero con la posibilidad de
# almacenar datos de distinto tipo
# (num, int, logical, factor, character,date)

# Crear un data frame
df_data <- data.frame(nombres, 
                      dias, 
                      estado_mora, 
                      genero,
                      nivel3,
                      fecha.nac)

# Mostrando el data frame
df_data
is.data.frame(df_data)
View(df_data)

# dim() proporciona las dimensiones del dataframe, 
# el número de filas y de columnas
dim(df_data)

# head() muestra los 6 primeros datos del dataframe
head(df_data)
head(df_data, 2)

# tail() muestra los 6 últimos datos del dataframe
tail(df_data)
tail(df_data, 2)


# str() muestra la estructura del data frame.
# str() muestra los tipo de datos y una muestra de los mismos
str(df_data)


# Accediendo a datos de un data frame
# Obtener una sola columna
df_data$nombres
df_data$fecha.nac

# Data frame tiene dos dimensiones df_data[filas, columnas]
df_data[ ,1]
df_data[2,1]
df_data[2, "nombres"]
df_data[, c("nombres","fecha.nac")]
df_data[[4]]

df_data$estado_mora

df_data
#creación de nuevas columnas a partir de otras
df_data["nombre completo"] <- df_data["nombres"]

df_data
df_data$"nombre completo"

#cambiar la primera columna a caracter
df_data$nombres <- as.character(df_data$nombres)
str(df_data)

# Cambiando el tipo de datos de numeric a integer
df_data$dias    <- as.integer(df_data$dias)

str(df_data)

# Accesando a una fila y una columna
df_data
df_data[1, 2]

df_data$dias[1]  # es equivalente

#________________________
# ________ \\|// ________
# ________( o o ) _______ 
# ___oo0____(_)____Ooo___
#      Ejercicio   5     #
# Escriba la sentencia que permita acceder a las filas 1 y 3 y
# a las columnas 2 y 4
View(df_data[c(1,3),c(2,4)])

## Dejar una fila o columna en blanco para extraer todas las 
#  filas o columnas

# acceder a todas las columnas menos estado_mora
df_data[,c(1,2,4,5,6)]
df_data[ ,-3]


# Columna 1, todas las filas 
df_data[, 1]

# Fila 1, todas las columnas
df_data[1, ]

# Todas las filas y todas las columnas
df_data[ , ]   # df_data[,]
df_data # Es similar


df_data[c(1, 3, 4), c(2, 4)]
df_data[-2, c(2, 4)]
df_data[-2, c(-1, -3, -5, -6)]
df_data[c(1, 3, 4), c("dias", "genero")]
df_data[-2, c("dias", "genero")]

# Condicionales
df_data[df_data$dias > 30,"nombres"]
df_data[dias > 30, "nombres"]             # Equivalente al anterior

df_data[dias > 30]            # Será un error, por defecto
                              # asume todas las filas

df_data$nombres[dias > 30]    

# SELECT nombres, genero, nivel3 FROM df_data where dias > 15
df_data[dias > 15, c("nombres", "genero", "nivel3")]

df_data[nivel3 == "B", ]

cond_1 <- df_data[dias > 30, ]
cond_1
class(cond_1)

# Equivalente usando subset(data.frame,condición)
cond_2 <- subset(df_data,dias > 30)
cond_2


# Obtener varias columnas 
df_data[c("dias", "estado_mora")]
df_data[, c("dias", "estado_mora")]
df_data[c(2, 3)]
df_data[, 2:3]      
df_data[2:3]    # Es similar, por defecto asume que son todas las filas

df_data[c(1, 5)]
df_data[1:5] 

# Cambiando un dato
df_data[3, 2]
df_data[3, 2] <- 70
df_data[3, 2]
View(df_data)

# Otra forma de editar datos
fix(df_data)

View(df_data)
str(df_data)

#opciones de la sesión
sessionInfo()
options(encoding = "utf-8")

# Eliminar una columna de datos
df_data$fecha.nac <- NULL
str(df_data)

# Eliminando la primera columna de datos
df_data <- df_data[, -1]  # No recomendable

str(df_data)

df_data$dias <- ""   #dejar un campo en blanco
View(df_data)

# 9. Almacenando los datos ------------------------------------

str(df_data)
write.csv(df_data, "df_data_ILEN.csv")
write.csv(df_data, "df_data_ILEN.csv", row.names = F)
write.table(df_data, "df_data_ILEN2.csv", row.names = F, sep = '|')
rm(list = ls())
datos1 <- read.csv("df_data_ILEN.csv")
datos1
datos1$dias

datos1$estado_mora = NA
View(datos1)


# Formato *.rds (un solo objeto)
saveRDS(datos1,"df_data_ILEN.rds")
datos2 <- readRDS("df_data_ILEN.rds")

# Formato *.RData (puedo guardar más de un objeto)
a <- 5
save(a,datos1, datos2, file = "df_data_ILEN.RData")
rm(list = ls())

load("df_data_ILEN.RData")




