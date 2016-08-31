






Encabezado

#***primer nivel***

## segundo nivel

###tercer nivel

lista
* 1er Elemento

* 2do Elemento

* 3er Elemento

#Factores

x <- factor(c("si", "no","si","si","no","si","no"))
x
table(x)
unclass(x)
x <- factor(c("si", "no","si","si","no","si","no"),levels=c("si","no"))


x <- factor(c("azul","azul","rojo","azul","amarillo","verde","azul"))
x
table(x)

#valores faltantes
x <- c(1,2,NA,10,3)
is.na(x)
is.nan(x)

#data frames son marcos q nos permiten almacenar datos de manera tabular 
x <- data.frame(Erick=1:4, Lori= c(T,T,F,F))
row.names(x) <- c("primero","segundo","tercero","cuarto")
x
nrow(x)
ncol(x)
attributes(x)
names(x) <- c("Yarely","Karen")
x

#Los nomrbes no son exclusivos de los data frames
x <- 1:3
names(x) #null
names(x) <- c("Hugo", "Paco","Luis")
x
names(x)


x <- list(a=1:10, b=100:91, c=51:60)
x
names(x) <- c("seq1","seq2","seq3")
x


m <- matrix(1:4, 2,2)
m
attributes(m)
dimnames(m) <- list(c("fil1", "fil2"), c("col1","col2"))
m

x <- matrix(nrow=6,ncol = 6)
x
dimnames(x)<- list(c("1","2","3","4","5","6"), c("A","B","C","D","E","F"))
x
#lectura de Datos
getwd()
setwd("~/GitHub/Programacion_Actuarial_lll_OT16")
data <- read.csv("DAtos_S&P.csv")
data <- read.table("DAtos_S&P.csv",T,",")
data