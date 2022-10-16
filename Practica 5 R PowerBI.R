#5. un distribuidor grande de equipo de perforación para pozos petroleros opero durante los
#pasados años con políticas LEO basadas en una tasa de costo de mantener anual de 22%. Bajo la
#política EOQ, se ha ordenado un producto particular con una Q*=80. Una evaluación reciente de los
#costos de mantener muestra que debido a un incremento en la tasa de  interés asociada con los 
#préstamos bancarios, la tasa del costo de mantener anual debería ser 27%
#a. ¿Cuál es la nueva cantidad económica a ordenar para el producto?
#b. Elabore una expresión general que muestre como cambia esta cuando se cambia la tasa del costo
#de mantener anual de 1 a 1.
#a.
taza=c(0.12,0.17,0.22, 0.27, 0.32, 0.37)
z=704
Q_5=c()
for (i in 1:6) {
  QC=(2*z)/taza[i]
Q_5=c(Q_5, sqrt(QC))
}
QB=sqrt((2*z)/.22)
#b.
Diferencia=c()
for (i in 1:6) {
  Diferencia=c(Diferencia,QB-Q_5[i] )
}
Practica5.data<-data.frame(
  Q_5=c(Q_5),
  taza=c(taza),
  Diferencia=c(Diferencia),
  stringsAsFactors = FALSE
)
