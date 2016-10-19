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
  
  for(i in 1:length(estados)) {
    est <- datos[grep(estados[i], datos[,7]), ]
    orden <- est[order(est[, columna], est[, 2], na.last = NA), ]
    
    nomhospital <- if(num == "mejor") {
      orden[1, 2]
    } else if(num == "peor") {
      orden[nrow(empate), 2]
    } else{
      orden[num, 2]
    }
  
    vec<- append(vec, c(nomhospital, estados[i]))
  }
    vec <- as.data.frame(matrix(vec, length(estados), 2, byrow = TRUE))
    colnames(vec) <- c("hospital", "state")
    rownames(vec) <- estados
    
    vec
    
}

head(rankingcompleto("ataque", 20), 10)
tail(rankingcompleto("neumonía", "peor"), 3)
tail(rankingcompleto("falla"), 10) 