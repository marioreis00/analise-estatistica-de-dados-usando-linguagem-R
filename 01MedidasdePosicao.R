# Estat?stica B?sica

# Parte 1 - Medidas de Posi??o

# Definindo a pasta de trabalho
# Subistitua o caminho abaixo pela pasta no seu computador
setwd("C:/Users/M?rio/Documents/PowerBI/cap12")
getwd()

# Carregando o dataset
vendas <- read.csv("Vendas.csv", fileEncoding = "windows-1252")

# Resumo do dataset
View(vendas)
str(vendas)
summary(vendas$Valor)
summary(vendas$Custo)

#M?dia
?mean
mean(vendas$Valor)
mean(vendas$Custo)

#M?dia Ponderada
?weighted.mean
weighted.mean(vendas$Valor, w = vendas$Custo)

# Mediana
median(vendas$Valor)
median(vendas$Custo)

# Moda
# Criando uma fun??o
moda <- function(v) {
  valor_unico <- unique(v)
  valor_unico[which.max(tabulate(match(v, valor_unico)))]
}

# Obtendo resultado Moda
resultado <- moda(vendas$Valor)
print(resultado)

resultado_custo <- moda(vendas$Custo)
print(resultado_custo)

#Criando gr?ficos de M?dia de valor por Estado com ggplot2
install.packages("ggplot2")
library(ggplot2)

# Criar o Gr?fico
ggplot(vendas) + 
  stat_summary(aes(x = Estado, 
                   y = Valor),
               fun = mean, 
               geom = "bar", 
               fill = "lightgreen", 
               col = "grey50") +
  labs(title = "M?dia de Valor Por Estado")
