#Tele-Reco es una nueva tienda especializada en la televisión, videograbadora, juesgos de video y
#otros productos relacionados con la televisión. Una videograbadora nueva fabricada en Japón le
#cuesta a Tele-Reco $600 por Unidad (Cu), la tasa del costo de mantener de Tele-Reco es 22%, los
#costos de ordenar se estiman en $70 por pedido (Cp).
#a. Se espera que la demanda para la nueva videograbadora sea constante con una tasa de 20
#unidades por mes, ¿Cuál es la cantidad de ordenar recomendada para la videograbadora?
D_4=20*12
Q1_4=D_4*2*70
Q2_4=.22*600
Q3_4=Q1_4/Q2_4
Q_4=sqrt(Q3_4)
Q_4=round(Q_4,2)
Q_4=c(Q_4-10,Q_4-5,Q_4,Q_4+5,Q_4+10)
#b. ¿Cuáles son los costos de mantener inverntario y de ordenar anuales estimados asociados con 
#este producto?
CTA_4=c()
for(i in 1:5){
CTA_4=c(CTA_4,(D_4*600)+((D_4/Q_4[i])*70)+((Q_4[i]/2)*Q2_4))
}
#c. ¿Cuántos pedidos se colocaran en el año?
N_4=c()
for(i in 1:5){
  N_4=c(N_4,D_4/Q_4[i])
}
#d. Con 250 días hábiles anuales, ¿cuál es el tiempo del ciclo para el producto?
t_4=c()
for(i in 1:5){
  t_4=c(t_4,Q_4[i]/D_4)
}
Practica4.data<-data.frame(
  Q_4=c(Q_4),
  CTA_4=c(CTA_4),
  N_4=c(N_4),
  t_4=c(t_4),
  stringsAsFactors = FALSE
)

