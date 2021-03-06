# Introduction to R / Introdu��o ao R
# Topic 2: Vectors
# T�pico 2: Vetores

# Vectors: objects with multiple inputs
# Vetores: objetos com m�ltiplas entradas

x <- c(1,2,3,4,5)
y1 <- c(1,2,3,4)
y <- c(1,2,3,4,5)

# Check the Global Environment: x is a numeric vector with 5 elements.
# R will show the dimension of the vector
# Observe o Global Environment: x � um vetor num�rico com 5 elementos.
# R ir� mostrar a dimens�o do vetor.

# Operation with vectors: check maths books for more info on certain operations
# Opera��o com vetores: confira livros de mat para mais informa��es em certas 
# opera��es

x + y1 # Check error message. Why is this an error?
# Observe a mensagem de erro. Por que isso � um erro?
x + y 
z <- x + y # Create new vectors from old ones
# Crie novos vetores com vetores antigos

# We can deal with sequences of numbers like vectors
# Podemos lidar com sequ�ncias de n�meros como vetores

# Sequence of integers / Sequ�ncia de n�meros inteiros
a <- 1:10 # vector of integer numbers from 1 to 10. This command create
# numeric sequences just like that.
# vetor de n�meros inteiros de 1 a 10. Esse comando cria sequ�ncias
# num�ricas como essa.

# We can also create sequences of real numbers
# Tamb�m podemos criar sequ�ncias de n�meros reais
b <- seq(from = 1, to=  10, by = 0.5)
# Command seq do just that. You specify first and last number, and interval
# between numbers.
# Comando seq faz exatamente isso. Voc� especifica primeiro e �ltimo n�mero,
# e intervalo entre n�meros.

# Note that / Note que:
c <- seq(1, 10, 0.5)
# In many cases, we can "abreviate" commands. There's a order in inputs
# and if you follow that order, it's OK.
# Em muitos casos, podemos "abreviar" comandos. Existe uma ordem de inputs
# e se voc� seguir essa ordem, estar� OK.

# (How to know that order? Check seq documentation)
# (Como saber essa ordem? Confira a documenta��o da seq)

# Is the following operation possible?
# A seguinte opera��o � poss�vel?
b - c

# Note that vectors don't have to be numeric:
# Note que vetores n�o precisam ser num�ricos
d <- c(1, 'R', 3, '3', TRUE)

# If you want to select a particular value in a vector, you use []
# Se voc� quer selecionar um valor particular em um vetor, use []
a[1] 
# This returns the first select value of vector a
# Isso retorna o primeiro valor do vetor a

# We can also do a lot of operations and create objects:
# Tamb�m podem fazer v�rias opera��es e criar objetos:
a[1] + 1
b[1] <- a[1] + 1

# Matrices: we have to specify the number of lines and colums
# Matrizes: teremos que especificar a dimens�o de linhas e colunas
m <- matrix(data = 1:9, ncol = 3)
m
# We create a sequence from 1 to 9, in 3 columns
# N�s criamos uma sequ�ncia de 1 a 9, em 3 colunas

# To select a matrix entrance, you need 2 dimensions:
# Para selecionar uma entrada da matriz, voc� precisa de duas dimens�es:
m[1,3]

# Or, select a line or column
# Ou, selecione uma linha ou coluna
m[,3]
m[1,]

# You can change a particular value of a matrix:
# Voc� pode mudar um valor particular de uma matriz:
m[1,2] <- 100 
m

# Lists: colection of different kinds of objects
# Listas: cole��es de diferentes tipos de objetos
l <- list(c(1,2), matrix(1:4, 2), c("1", "2"))
l          
# Check how lists show in the Global Environment. Click on it.
# Verifique como listas aparecem no Global Environment. Clique nela.

# We can also combine objects in many different ways
# Tamb�m podemos combinar objetos em v�rios formatos diferentes
z1 <- c(x,y)
# This will collect x and y in a single vector
# Esse vai colecionar x e y em um �nico vetor

# cbind collects x and y in a matrix where x and y are the columns
# cbind coleciona x e y em uma matriz em que x e y s�o as colunas
z2 <- cbind(x,y)
z2

# rbind collects x and y in a matrix where x and y are the lines
# rbind coleciona x e y em uma matriz em que x e y s�o as linhas
z3 <- rbind(x,y)
z3

