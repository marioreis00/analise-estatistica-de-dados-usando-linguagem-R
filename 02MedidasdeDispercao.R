# Estatística Básica

# Parte 2 - Medidas de Disperção

# Definindo a pasta de trabalho
# Subistitua o caminho abaixo pela pasta no seu computador
setwd("C:/Users/Mário/Documents/PowerBI/cap12")
getwd()

# Carregando o dataset
vendas <- read.csv("Vendas.csv", fileEncoding = "windows-1252")

# Resumo do dataset
View(vendas)
str(vendas)
summary(vendas$Valor)

# Variância
var(vendas$Valor)
print(var(vendas$Valor))

#Desvio Padrão
sd(vendas$Valor)
print(sd(vendas$Valor))


