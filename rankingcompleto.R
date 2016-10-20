rankingcompleto<-function(resultado,num="mejor"){
  setwd("C:/Users/Usuario/Documents/GitHub/Programacion_Actuarial_lll_OT16/caso2")
  datos <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
  estados <- levels(factor(datos[,7]))
  
  vec<- vector()
  
  enfermedades<-c("ataque","falla","neumonia")
  
  if (resultado == "ataque") { columna<- 11}
  if (resultado == "falla") { columna<-  17}
  if (resultado == "neumonia") {columna <- 23}
  if (resultado %in%  enfermedades == F) {
    stop("enfermedades invalidas") 
    break}
  
  
  if(num=="mejor"){
    num<-1
  }
  
  separa <- split(datos,datos[,7])
  if( is.numeric(num)==T){
    for (i in 1:length(estados)) {
      s <- separa[[i]]
      s[,columna]<-suppressWarnings(as.numeric(s[,columna]))
      cual <- order(s[,columna],s[,2])
      hospitales <- s[cual,2]
      regresar <- hospitales[num]
      vec <- c(vec,regresar)
    }
  } else if(num=="peor") {
    num <- 1
    for (i in 1:length(estados)) {
      s <- separa[[i]]
      s[,columna]<-suppressWarnings(as.numeric(s[,columna]))
      cual <- order(s[,columna],s[,2],decreasing = T)
      hospitales <- s[cual,2]
      regresar <- hospitales[num]
      vec <- c(vec,regresar)
    }
  }
  tabla <- data.frame(vec,names(separa))
  names(tabla)<-c("hospital","state")
  rownames(tabla) <- names(separa)
  tabla
  
}
rankingcompleto("ataque", 20)
tail(rankingcompleto("neumonía", "peor"), 3)
tail(rankingcompleto("falla"), 10) 

#segunda
#NJ ataque 5 kackettstown
#stafford VA ataque 5
#cleveland FL neumonia