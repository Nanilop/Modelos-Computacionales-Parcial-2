#Westside Auto compra directamente del proveedor un componente que usa en la manufactura de 
#generadores para automóviles. La operación de producción del generador de Westside, la cual
#trabaja a una tasa constante, requerirá mil componentes por mes a lo largo del año (12000
#unidades anuales). Suponga que los costos de ordenar con $25 por pedido, el costo unitario es 
#$2.50 por componentes y los costos de mantener anuales y un tiempo de entrega de cinco días.
#Responde las siguientes preguntas sobre la política de inventario
#a. ¿Cuál es la EOQ para esta componente?
#b. ¿Cuál es el tiempo de ciclo?
#c. ¿Cuáles son los costos totales por pedir y mantener inventario?
#Solución
#a)
Q1_2=(2*25*12000)
Q2_2=0.2*2.5
Q3_2=Q1_2/Q2_2
Q_2=sqrt(Q3_2)
Q_2=round(Q_2,2)
Q_2=c(Q_2-200,Q_2-100,Q_2,Q_2+100,Q_2+200)
#b)
t_2=c()
for(i in 1:5){
t_2=c(t_2,(Q_2[i]/12000)*250)
}
#c)
CTA2=c()
for(i in 1:5){
CTA2=c(CTA2,(12000*2.5)+((12000/Q_2[i])*25)+((Q_2[i]/2)*(.2*2.5)))
}
Practica2.data<-data.frame(
  Q_2=c(Q_2),
  t_2=c(t_2),
  CTA2=c(CTA2),
  stringsAsFactors = FALSE
)
