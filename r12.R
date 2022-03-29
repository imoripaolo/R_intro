# Introduction to R / Introdução ao R
# Topic 11 Regression 101
# Tópico 10 Básico de Regressão

# Note that we'll have many other files with regression examples, from
# econometric textbooks. For now, we'll use the linear model we previously
# created for an example.
# Note que vamos ver outros arquivoscom exemplos de regressão de livros de
# econometria. Para agora, vamos agora usar o modelo linear previamente
# criado como exemplo.

x1 <- runif(120,0,15)
x2 <- rbinom(120,1,0.5) 
u <- rnorm(120,0,1)
beta <- rbind(rnorm(120,0.5,0.01), rnorm(120,0.01, 0.00001), 
              rnorm(120,0.2,0.2))

y <- beta[11] + beta[2,]*x1 + beta[3,]*x2 + u

# For the regression, we use the lm ("linear model") function
# Para a regressão, utilizamos a função lm ("linear model")
reg <- lm(y ~ x1 + x2)
summary(reg)
# The summary will give us many objects of interest of the regression
# O summary vai retornar muitos objetos de interesse da regressão

# Let's check the residuals
# Vamos verificar os resíduos
plot(reg[["residuals"]])
summary(reg[["residuals"]])
hist(reg[["residuals"]])
sd(reg[["residuals"]])

# Now, for the Fitted Values
# Agora, para os valores ajustados
plot(y, type = "o", col = "red")
lines(reg[["fitted.values"]], type = "l", col = "blue" )

# Another way /Outra forma
plot(y, type = "o", col = "red")
lines(reg[["coefficients"]][["(Intercept)"]] + reg[["coefficients"]][["x1"]]*x1 +
        reg[["coefficients"]][["x2"]]*x2 ,type = "l", col = "blue" )

# Regression Line / Reta de Regressão
plot(x1,y, col = "red")
abline(reg[["coefficients"]][["(Intercept)"]], reg[["coefficients"]][["x1"]])


