Nombre=c("Hugo", "Ana", "Juan", "Lucy", "Pedro", "Paco")
Edad=c(18,46,50,70,25,32)
Calif=c(70,50,40,30,50,100)
Persona<- list()
Status<-list()
Beca<-list()
for(i in 1:6){
  if(Edad[i]>=50){
    Persona=c(Persona,"Adulto")
  }
  else
  {
    Persona=c(Persona,"Joven")
  }
  if(Calif[i]>=70){Status=c(Status,"A")}
  else{Status=c(Status,"R")}
}

for(i in 1:6){
  if(Persona[i]=="Joven"){
    if(Status[i]=="A"){Beca=c(Beca,"No")}
    else{Beca=c(Beca,"Si")}
  }
  else{
    if(Status[i]=="A"){Beca=c(Beca,"Si")}
    else{Beca=c(Beca,"No")}
  }
}
Lista<-list()
for(i in 1:6){
  if(Beca[i]=="No"){
    Lista=c(Lista, Nombre[i])
  }
}
Lista
cat("Los alumnos que no consiguieron beca son:", unlist(Lista, use.names=FALSE))

