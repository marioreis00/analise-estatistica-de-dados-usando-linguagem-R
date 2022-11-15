# Exercício 01 DSA 

# Resolvendo problema de notas de duas turmas

# Definindo a pasta de trabalho
# Subistitua o caminho abaixo pela pasta no seu computador
setwd("C:/Users/Mário/Documents/PowerBI/cap12")
getwd()

# Carregando o dataset
notas <- read.csv("Notas.csv", fileEncoding = "windows-1252")

# Resumo do dataset
View(notas)
str(notas)
summary(notas$TurmaA)
summary(notas$TurmaB)

#Média Notas
mean(notas$TurmaA)
mean(notas$TurmaB)

#Variabilidadede Notas
sd(notas$TurmaA)
sd(notas$TurmaB)

#Coeficiente de variação das turmas A e B
media_ta <- mean(notas$TurmaA)
media_tb <- mean(notas$TurmaB)

sd_ta <- sd(notas$TurmaA)
sd_tb <- sd(notas$TurmaB)

cvA <- sd_ta / media_ta * 100
cvB <- sd_tb / media_tb * 100

print(cvA)
print(cvB)

# Nota que mais apareceu nas turmas
CalculaModa <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
  
}

CalculaModa(notas$TurmaA)
CalculaModa(notas$TurmaB)




