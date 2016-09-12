x<- 0
y<-0
caminata <- vector("numeric")
caminata1 <- vector("numeric")
caminata2<-vector("numeric")
for(i in 1:100){
  z<-5
  while(z>=3 && z<=10){
    print(z) 
    caminata<- c(caminata,z)
    moneda <- rbinom(1,1,0.5)
    if(moneda==1){
      z<- z+1 
    } else {
      z<- z-1
    }
    
  }
  if(z<3){
    x<- x+1
  }
  if(z>10){
    y <- y+1}
}
x #numero de veces que sale menor que 3
y #numero de veces que sale mayor que 10