rankhospital<- function(estado, resultado, num= "mejor"){
  setwd("C:/Users/Usuario/Documents/GitHub/Programacion_Actuarial_lll_OT16/caso2")
  datos <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
  estados <- levels(factor(datos[,7]))
  enfermedades<-c("ataque","falla","neumonia")
  
  if (estado %in% estados == F){
    stop("estado inválido")
    break
  }
  
  if (resultado == "ataque") { columna<- 11}
  if (resultado == "falla") { columna<-  17}
  if (resultado == "neumonia") {columna <- 23}
  if (resultado %in%  enfermedades == F) {
    stop("enfermedades invalidas") 
    break}
  s<-subset(datos,datos$State==estado)
  s[,columna]<-suppressWarnings(as.numeric(s[,columna]))
  
  if(num == "peor"){
    dead<-s[which.max(s[,columna]),] 
    hospital<-dead[order(dead$Hospital.Name , na.last = NA), ]
    hospitall<-hospital[1,2]
    hospitall
  }else if(num== "mejor"){
    dead<-s[which.min(s[,columna]),] 
  hospital<-dead[order(dead$Hospital.Name , na.last = NA), ]
  hospitall<-hospital[1,2]
  hospitall
  } else {
    dead<- s[(s[,columna]),]
    cual <- order(s[,columna],s[,2])
    hospitales <- s[cual,2]
    regresar <- hospitales[num]
    regresar
  }
  
}
#mercy ks ataque 10
#cleveland FL neumonia 7 
rankhospital("MN", "ataque", 5000)
rankhospital("TX", "falla", 4)
rankhospital("MD", "ataque", "peor")
rankhospital("FL", "neumonia", "7")
rankhospital("KS", "ataque", "10")
rankhospital("KS", "ataque", "mejor")
rankhospital("KS", "falla", "12")