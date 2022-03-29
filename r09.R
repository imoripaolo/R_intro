# Introduction to R / Introdução ao R
# Topic 8: Probability 101 and Plots
# Tópico 8: Probabilidade Básica e Plotagens

# We can use R to simulate probability distributions. Let's for instance
# try the normal distribution. We use the rnorm(n,m,v) to do so. Note that
# n is the number of observations, m is the mean and v is the variance. 
# Podemos utilizar o R para simular distribuições de probabilidade. Por exemplo,
# tente a distribuição normal. Utilizamos rnorm(n,m,v) para tal. Note que n
# é o número de observações, m é a média e v é a variância.
d1 <- rnorm(100,0,1)

# We can use the plot function to plot d1
# Podemos usar a função plot para plotar d1
plot(d1)
# Check the "zoom" buttom / Aperte o botão de "zoom".
# You can also export the .jpeg with the "export" buttom.
# Você também pode exportar o .jpeg com o botão "export"

# We can change the plot at will. Let's see some examples:
# Nós podemos modificar o plot a vontade. Vamos ver alguns exemplos:
plot(d1, type = "l")
plot(d1, main = "Normal")
plot(d1, main = "Dist Normal, 100 pontos", xlab = "i", ylab= "y")
barplot(d1)
# Many other plot types! / Vários outros tipos de plot!

# Another normal / Uma outra normal
d2 <- rnorm (100, 0, 1.5)

# Let's check both plots:/ Vamos ver ambos os plots:
plot(d1)
plot(d2)

# The "lines" funcion allow us to combine the plots in a single figure.
# A função "lines" nos permite combinar plots em uma única imagem. 
plot(d1, type="l", main = "Normal", xlab = "i")
lines(d2)

# Note that even with type="l" is hard to understang what's going on.
# We'll now add colour to the graph.
# Note que mesmo com type="l" pode ser difícil entender o que está acontecendo.
# Vamos agora adicionar cor ao gráfico
plot(d1, type="l", main = "Normal", xlab = "i", ylab= "y1", col="red")
lines(d2, col="blue")

# Note some points of the blue graph are outside of the range of the figure
# We'll create some objects to bound the dimensions of the figure.
# Note que alguns pontos do gráfico azul estão fora da dimensão da figura.
# Vamos criar alguns objetos para limitar as dimensões da figura.
min <- min(d1,d2)
max <- max(d1,d2)

# Let's plot d1 and d2 again / Vamos plotar d1 e d2 novamente
plot(d1, type="l", main = "Normal", xlab = "i", ylab= "y1", col="red", 
     ylim=c(min, max))
lines(d2, col="blue")

# We can also add subtitles to the graph
# Também podemos adicionar legendas ao gráfico
legend("bottomright", c("d1","d2"), fill=c("red","blue") )

# Another problem: the legend covers part of the graph
# Outro problema: a legenda cobre parte do gráfico
min <- min(d1,d2)- 2
max <- max(d1,d2)
plot(d1, type="l", main = "Normal", xlab = "i", ylab= "y1", col="red", ylim=c(min, max))
lines(d2, col="blue")
legend("bottomright", c("d1","d2"), fill=c("red","blue"), ncol= 2)

# Let's now see some other distributions

d3 <- runif(100, min = 0, max = 1) # Uniform / Uniforme 
plot(d3)
d4 <- rbinom(100, 1, 0.5) # Bernouilli
plot(d4)
d5 <- rbinom(100, 5, 0.5) # Binomial
plot(d5)
d6 <- rchisq(100, df=5) # Chi Squared / Chi Quadrado
plot(d6)
d7 <- rf(100, df1 = 10, df2=2) # F
plot(d7)
d8 <- rgeom(100, 0.5) # Geometric / Geométrica
plot(d8)
d9 <- rlnorm(100, meanlog = 0, sdlog = 1) # Lognormal
plot(d9) 
plot(log(d9))

# Many other possible distributions - 'stats' package
# Várias outras distribuições possíveis - Package 'stats'
