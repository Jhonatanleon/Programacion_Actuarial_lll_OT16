getwd()
setwd("~/GitHub/Programacion_Actuarial_lll_OT16")
data <- read.csv("DAtos_S&P.csv")
data <- read.table("DAtos_S&P.csv",T,",", nrow=100,skip=5)
clases <-sapply(data,class)
clases
data <- read.table("DAtos_S&P.csv",T,",", colClasses=clases)
data


#uso dput y dget

y <- data.frame(a=1, b="a")
dput(y)
dput(y, file= "y.R")
nueva.y <- dget("y.R")
y
nueva.y

x <- "Programacion Actuarial III"
y <- data.frame(a=1, b="a")
dump(c("x","y"), file="data.R")
rm(x,y)
source("data.R")
x
y

head(airquality)
x <- airquality
dput(x, file= "airquality.JHONATAN.R")

x
source("airquality.R-JHONATAN.R)

con <- url("http://www.fcfm.buap.mx/","r")
x <.readLines(con,7)
x

"<!DOCTYPE thml>"
"<html lang=\"es\"prefix=\"og: http://ogp.me/ns#\">"
"<head>"
"\t<!-- Encoding type -->"
"\t<meta charset=\"UTF --8\">"
"\t<title>FCFM::Facultad de Ciencias Fisico Matematicas de la BUAP</title>"


#subconjuntos
#creamos un vector
x<- c("a","b","c","c","d","e")
#veamos el vector
x
#extraemos elementos con []
x[1]
x[2]
#Tambien podemos extraer una secuencia de elementos
x[1:4]
#es posible extraer los elementos que cumple una restriccion
x[x>"b"]
#de manera equivalente se puede obtener un vector logico
u <- x =="c"
u
x[u]
#creamos una lista
x<- list(foo=1:4, bas= 0.6)
#extraemos el primer elemento de la lista,
#este elemento es una lista que contiene una secuencia 
x[1]
$foo

#extraemos nuevamente el primer elemento de la lita 
#ahorael elemento es la secuencia en si
x[1]
#extraemos un elemento por nombre 
x$bar
x[["bar"]]
x["bar"]
x$foo[2]


#creamos una lista de 3 elementos 
x <- list(foo=1:4, bar=0.6, baz= "Hola")
x[[c(1,3)]]
#extrae el primer elemento de la lista en este caso es foo y agarra el
# tercer elemento de la lista q es 3

name <- "foo"
x[[name]]
x$name
x$foo

#los corchetes [[ pueden usar indices calculados, el $ solamente puede usar
# el nombre literal


# se pueden extraer elementos de los elementos extraidos

x <- list(a=list(10,12,14), b=list(2,14,2.81))
x[[c(1,3)]]
x[[1][[3]]
x[[c(2,1)]]


#la extraccion de elementos en una matriz funcione de manera convencional
# con la forma ij de los elementos


x <- matrix(1:6,2,3)
x
x[1,2]
x[2,1]
x[1,]
x[,2]

#el resultado es un vector
x[1,2]

#con drop=FALSE, se matiene la dimension y 
# el resultado sera una matriz
x[1,2,drop=FALSE]


#si dejamos solamente el espacio, elresultado sera un vector
x[1,]
#si usamo
  
x[1, ,drop= FALSE]

x <- list(aardvark=1:5)
x[["a"]]
x[["a",exact=FALSE]]

#valores Faltantes
airquality[1:6,]
completos <- complete.cases(airquality)
completos
#me investiga sin estan completos los elementos de las filas o los elementos
airquality[completos,][1:6,]
airquality[1:6,][completos,]

x<-1:4 ; y<- 6:9
x + y
x>2
x>=2
y == 8
x*y
x/y

x<- matrix(1:4,2,2); y <- matrix(rep(10,4),2,2)
x*y
x/y
x%*%y

#clase del 8-09-2016
x<-4

if (x>3) {y<- 10} else {y<-0}
y

for(i in 1:10) {print(i)}

x <- c("a","b","c","d")

for (i in 1:4){print(x[i])}
for(i in seq_along(x)){print(x[i])}
for(letra in x){print(letra)}
for(i in 1:4){print(x[i])}

x <- matrix(1:6,2,3)
x
for(i in seq_len(nrow(x))){for (j in seq_len(ncol(x))) {print(x[i,j])}}













