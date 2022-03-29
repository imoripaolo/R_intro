# Introduction to R / Introdução ao R
# Topic 9 RNG and Statistics 101
# Tópico 9 RNG e Estatística Básica

# If you just simulate some distribution, every time you'll get a different
# set of values. You can use the set.seed function to determine the "random
# pattern" for controlled experiments. Real randomness is hard - R uses some
# "pseudo-random" numbers instead.
# Se você simplesmente simular alguma distribuição, toda hora você terá um
# conjunto diferente de valores. Você pode usar a função set.seed para determinar
# o "padrão de aleatoriedade" para experimentos controlados. Aleatoriedade 
# verdadeira é difícil - o R usa números "pseudo-aleatórios" no lugar.

set.seed(1990)
d1 <- rnorm(100,0,1)
plot(d1)

set.seed(1991)
d2 <- rnorm(100,0,1)
plot(d2)

set.seed(1990)
d3 <- rnorm(100,0,1)
plot(d3)
# If you want to utilize the same random sequence, set a specific seed.
# Se você deseja utilizar a mesma sequência aleatória, use um seed específico.

# Now, for some basic statistical functions:
# Agora, algumas funções estatísticas básicas:
mean(d1) # média
median(d1) # mediana
var(d1) # variance / variância
sd(d1) # standart deviation / desvio padrão
min(d1) # minimum / mínimo
max(d1) # maximum / máximo
summary(d1)# summary of some statistics / sumário de algumas estatísticas

# The summary function returns many things, depending on the input
# A função summary retorna muitas coisas, a depender do input

# Histogram / Histograma
hist(d1)
hist(d1, 20) # Set number of bars / Defina número de barras

# We can take a sample of some distribution
# Podemos tirar uma amostra de uma distribuição.
d4 <- sample(d1, size = 10, replace = FALSE)

# We can take statistics of combined distributions
# Podemos tirar estatísticas de distribuições combinadas
mean(d1 + d2)
var(d1 - d2)
min(d1+d2)
mean(d1)
mean(d2)
mean(c(d1,d2))
# Note that c(d1,d2) combines observations, while d1 + d2 will sum observations
# Note que c(d1,d2) combina observações, enquanto d1 + d2 somará observações

# Simulating linear process
# Simulação de Processos Lineares

# We'll suppose a model like y = beta0 + beta1*x1 + beta2*x2 + u and
# simulate values for x1, x2 and u, and generate y for given values of 
# beta0, beta1 and beta2
# Vamos supor um modelo no formato y = beta0 + beta1*x1 + beta2*x2 + u e
# simualar valores para x1, x2 e u, e gerar y para dados valores de 
# beta0, beta1 and beta2


x1 <- runif(1000,0,15)
x2 <- rbinom(1000,1,0.5) 
u <- rnorm(1000,0,1)

y1 <- 0.5 + 0.01*x1 + 0.2*x2 + u
summary(y1)
hist(y1)

# We'll do it again, but now randomizing the betas as well
# Vamos fazer novamente, mas agora aleatorizando os betas também.
beta <- rbind(rnorm(1000,0.5,0.01), rnorm(1000,0.01, 0.00001), rnorm(1000,0.2,0.2))

y2 <- beta[1,] + beta[2,]*x1 + beta[3,]*x2 + u 
summary(y2)
hist(y2)
