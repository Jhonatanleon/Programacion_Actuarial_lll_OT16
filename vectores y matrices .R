# clase del 25/08/2016
# crear vectores con la funcion vector
x <- vector("numeric", length = 5L)
x

# crear vectores con la funcion c
x <- c(0.5,0.6)
class(x)

x <- c(TRUE, FALSE, T , F)

x <- 10:0
x
class(x)

x <- c(1+2i,5,3+9i,-4-5i)
x
class(x)

x <- c("a", "b", "c", "d")
x
class(x)


# mezcla de objetos en un vector

y <- c(1.7, "a")  #caracter
y
class(y)
y <- c(TRUE,2)   #numerico
y
class(y)
y <- c("a", TRUE) #caracter
y
class(y)


y <- c(TRUE, 10L, 8.5, 1+1i, "Nacho")
y
class(y)
#caracter

y <- c(TRUE, 10L, 8.5, 1+1i)
y
class(y)
#complex

y <- c(TRUE, 10L, 8.5)
y
class(y)
#numeric

y <- c(TRUE, 10L)
y
class(y)
#integer

y <- c(TRUE)
y
class(y)
#logical

#orden de coaccion/coerción explicita
#character
#complex
#numeric
#integer
#logical


#coercion explicita
z <- 0:6
class(z)
as.numeric(z)
as.logical(z)
as.character(z)

z <- c(1+2i, 3-4i, 8, 0-3i, 0)
as.logical(z)


z<- c("Progamación", "Actuarial", "III")
as.numeric(z)
as.logical(z)
as.complex(z)


#Listas (es como un vector...  pero de vectores y c/u tiene su propia clase)
x <- list(1,"a", TRUE, 1+4i)
x
class(x)

#matrices

m <- matrix(nrow=2, ncol=3)
m


dim(m)
attributes(m)

#cambio de dimenciones de 2x3 a 3x2
dim(m) <- c(3,2)
m

#crear una matriz con datos
m <- matrix(1:6,3,2)
m

m <- matrix(1:6,3,2,TRUE)
m

m <- matrix(1:6,3,3,T)
m
CLASS(m)
class(m)
str(m)

dim(m) <- c(2,5) #esto producira un herror 

#agregar elementos
x <- c(1,2,3)
y <- c("a","b","c")
z <- c(x,y)
z

m1 <- rbind(m,x)
m1

m2 <- cbind(m,x)
m2

m3 <- rbind(m1,y)
m3

m4 <- cbind(m2,y)
m4