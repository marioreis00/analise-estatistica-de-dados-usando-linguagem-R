# Estatística Básica

# Parte 3 - Medidas de Posição Relativa

#Cuidado, a Linguagem R é case sensitive!

# Definindo a pasta de trabalho
# Subistitua o caminho abaixo pela pasta no seu computador
setwd("C:/Users/Mário/Documents/PowerBI/cap12")
getwd()

# Carregando o dataset
vendas <- read.csv("Vendas.csv", fileEncoding = "windows-1252")

# Resumo do dataset
head(vendas)
tail(vendas)
View(vendas)

# Medidas de Tendência Central
summary(vendas$Valor)
summary(vendas[c('Valor', 'Custo')])

#Explorando variáveis numéricas
mean(vendas$Valor)
median(vendas$Valor)
quantile(vendas$Valor)
quantile(vendas$Valor, probs = c(0.01, 0.99))
quantile(vendas$Valor, seq(from = 0, to = 1, by = 0.20))
IQR(vendas$Valor) # Diferença entre Q3 e Q1
range(vendas$Valor)
summary(vendas$Valor)
diff(range(vendas$Valor))
