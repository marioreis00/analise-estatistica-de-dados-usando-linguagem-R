# Estat?stica B?sica

# Parte 3 - Medidas de Posi??o Relativa

#Cuidado, a Linguagem R ? case sensitive!

# Definindo a pasta de trabalho
# Subistitua o caminho abaixo pela pasta no seu computador
setwd("C:/Users/M?rio/Documents/PowerBI/cap12")
getwd()

# Carregando o dataset
vendas <- read.csv("Vendas.csv", fileEncoding = "windows-1252")

# Resumo do dataset
head(vendas)
tail(vendas)
View(vendas)

# Medidas de Tend?ncia Central
summary(vendas$Valor)
summary(vendas[c('Valor', 'Custo')])

#Explorando vari?veis num?ricas
mean(vendas$Valor)
median(vendas$Valor)
quantile(vendas$Valor)
quantile(vendas$Valor, probs = c(0.01, 0.99))
quantile(vendas$Valor, seq(from = 0, to = 1, by = 0.20))
IQR(vendas$Valor) # Diferen?a entre Q3 e Q1
range(vendas$Valor)
summary(vendas$Valor)
diff(range(vendas$Valor))
