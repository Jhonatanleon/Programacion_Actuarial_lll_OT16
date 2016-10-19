mejor <- function(estado,resultado){
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
    dead<-s[which.min(s[,columna]),] 

    hospital<-dead[order(dead$Hospital.Name , na.last = NA), ]
    hospitall<-hospital[1,2]
    hospitall
}
mejor("TX", "ataque") 
mejor("TX", "falla") 
mejor("MD", "ataque")
mejor("MD", "neumonia")
mejor("BB", "ataque")
mejor("NY", "atakue")
