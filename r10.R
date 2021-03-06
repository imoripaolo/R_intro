# Introduction to R / Introdu��o ao R
# Topic 9 RNG and Statistics 101
# T�pico 9 RNG e Estat�stica B�sica

# If you just simulate some distribution, every time you'll get a different
# set of values. You can use the set.seed function to determine the "random
# pattern" for controlled experiments. Real randomness is hard - R uses some
# "pseudo-random" numbers instead.
# Se voc� simplesmente simular alguma distribui��o, toda hora voc� ter� um
# conjunto diferente de valores. Voc� pode usar a fun��o set.seed para determinar
# o "padr�o de aleatoriedade" para experimentos controlados. Aleatoriedade 
# verdadeira � dif�cil - o R usa n�meros "pseudo-aleat�rios" no lugar.

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
# Se voc� deseja utilizar a mesma sequ�ncia aleat�ria, use um seed espec�fico.

# Now, for some basic statistical functions:
# Agora, algumas fun��es estat�sticas b�sicas:
mean(d1) # m�dia
median(d1) # mediana
var(d1) # variance / vari�ncia
sd(d1) # standart deviation / desvio padr�o
min(d1) # minimum / m�nimo
max(d1) # maximum / m�ximo
summary(d1)# summary of some statistics / sum�rio de algumas estat�sticas

# The summary function returns many things, depending on the input
# A fun��o summary retorna muitas coisas, a depender do input

# Histogram / Histograma
hist(d1)
hist(d1, 20) # Set number of bars / Defina n�mero de barras

# We can take a sample of some distribution
# Podemos tirar uma amostra de uma distribui��o.
d4 <- sample(d1, size = 10, replace = FALSE)

# We can take statistics of combined distributions
# Podemos tirar estat�sticas de distribui��es combinadas
mean(d1 + d2)
var(d1 - d2)
min(d1+d2)
mean(d1)
mean(d2)
mean(c(d1,d2))
# Note that c(d1,d2) combines observations, while d1 + d2 will sum observations
# Note que c(d1,d2) combina observa��es, enquanto d1 + d2 somar� observa��es

# Simulating linear process
# Simula��o de Processos Lineares

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
# Vamos fazer novamente, mas agora aleatorizando os betas tamb�m.
beta <- rbind(rnorm(1000,0.5,0.01), rnorm(1000,0.01, 0.00001), rnorm(1000,0.2,0.2))

y2 <- beta[1,] + beta[2,]*x1 + beta[3,]*x2 + u 
summary(y2)
hist(y2)
