#Suponga que R & B B Company tiene una bebida refrescante que muestra una tasa de demanda anual 
#constante de 3600 cajas. Una caja de la bebida le cuesta a R & B $3. Los costos de ordenar son 
# $20 por pedido y los costos de mantener son 25% del valor del inventario, R & B tiene 250 días
#habiles anuales, y el tiempo de entregar es de cinco días.
#Indetifiquen los siguientes aspectos de la política de inventario.
#a. Lote económico a ordenar
#b. Costo anual total
#Solución
#a)
Q1=(2*3600*20)
Q2=0.25*3
Q3=Q1/Q2
Q=sqrt(Q3)
Q=round(Q,2)
Q<-c(Q-200,Q-100,Q,Q+100,Q+200)
#b)
CTA=c()
for(i in 1:5){
CTA<-c(CTA,(3600*3)+((3600/Q[i])*20)+((Q[i]/2)*Q2))
}

Practica1.data<-data.frame(
  CTA=c(CTA),  Q=c(Q),

  stringsAsFactors = FALSE
)
emp.data<-data.frame(
  emp_id=c(1:5),
  emp_name=c("Rick", "Dan", "Michelle", "Ryan", "Gary"),
  salary=c(623.3,515.2,611.0, 729.0,843.25),
  start_date= as.Date(c("2012-01-01", "2013-09-23","2014-11-15","2014-05-11",
                        "2015-03-27")),
  stringsAsFactors = FALSE)
