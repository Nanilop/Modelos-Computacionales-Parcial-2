suma<-function(x,y){
  resultado<-x+y
  return(resultado)
}
suma(x=4, y=6)

#Forma reducida
suma<-function(x,y){
  return(x+y)
}
suma(x=4,y=6)

#mas compacta
suma<- function(x,y)x+y
suma(x=4,y=6) # probando la funcion

#Hacer una funcion que calcule el área de un triangulo
#Formula del area (Base*Altura)/2

AreaTriangulo<- function(Altura, Base){
  return((Base*Altura)/2)
}
AreaTriangulo(Altura=2, Base=4)

fun1<- function(){
  num<-runif(1)
  veces<-1
  while(sum(num)<3){
    
    veces<-veces+1
    num[veces]<-runif(1)
  }
  return(veces)
}
fun1()

medio<-function(a,b){
  medio<-(a+b)/2
  cat("El punto medio de los valores", a, "y", b,
      "ingresados es",medio)
}
medio(a=-3, b=-1)

#Hacer un programa que me calcule el sueldo neto
sueldos<-function(Diario){
  ispt<-.16
  neto<-Diario-(Diario*ispt)
  cat("Qué sueldo es? Neto $",neto)
}
sueldos(15000)

neto<-function(d,i){
  return(d-(i*d))
}
neto(15000,0.16)

#DATAFRAME
mimarco<-data.frame(edad=c(15,19,13,NA,20),
                    deporte=c(TRUE,TRUE,NA, FALSE,TRUE),
                    comic_fav=c(NA, 'Superman', 'Batman', NA,'Batman'))
mimarco #Para ver el contenido de mimarco
mimarco[mimarco$edad<=15, ]
mimarco[mimarco$edad>=15, ]
#Los valores NA no tienen resultado

#Hacer un DataFrame con calificaciones de las sig, materias
#Muestre a todos los alumnos que aprobaron matematicas
#Calificacion aprobatoria es 70
Materias<-data.frame(Alumno=c('Hugo','Luis','Paco'),
                     Matematicas=c(50,100,70),
                     Fisica=c(70,80,50),
                     Quimica=c(90,70,50),
                     computacion=c(100,70,50))
Materias
Materias[Materias$Matematicas>=70, ]
cat("Los alumnos que aprobaron matematicas son:",Materias[Materias$Matematicas>=70, "Alumno"])
cat("Los alumnos que aprobaron fisica son:",Materias[Materias$Fisica>=70, "Alumno"])
cat("Los alumnos que aprobaron quimica son:",Materias[Materias$Quimica>=70, "Alumno"])
cat("Los alumnos que aprobaron computacion son:",Materias[Materias$computacion>=70, "Alumno"])

