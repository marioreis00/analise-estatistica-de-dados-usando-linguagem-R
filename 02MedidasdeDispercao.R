# Estat?stica B?sica

# Parte 2 - Medidas de Disper??o

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

# Vari?ncia
var(vendas$Valor)
print(var(vendas$Valor))

#Desvio Padr?o
sd(vendas$Valor)
print(sd(vendas$Valor))


