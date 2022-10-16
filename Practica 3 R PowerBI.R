#Suponga que a la administraciónde Westside en el problema anterior le gusta la eficiencia
#operacional de ordenar una vez cada mes y en cantidades de mil unidades¿Cuanto más  costosa seria
#esta politica que su recomendación de EOQ?, ¿Haría una recomendación a favor de la cantidad a 
#ordenar de mil unidades? Explique
Q=c(955,1000,1045,1090,1135)
CTA3=c()
for(i in 1:5){
CTA3=c(CTA3,(12000*2.5)+((12000/Q[i])*25)+((Q[i]/2)*(.2*2.5)))
}
Practica3.data<-data.frame(Q=c(Q),CTA3=c(CTA3),stringsAsFactors = FALSE)
#a) Seria $3 pesos más costosa
#b) Lo haría, a pesar de que los costos de inventario serían por año mas, el hecho es que no se
#tendría un excedente del producto, ya que con el calculo anterior de 
#EOQ se pedirían aproximadamente 96 articulos más que muy probablemente segun la demanda calculada
#se irian quedando, es decir, no se venderían y lo que generaría un gasto aun mayor innecesario
#en productos y en su almacenamiento
