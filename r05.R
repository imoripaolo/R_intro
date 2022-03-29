# Introduction to R / Introdução ao R
# Topic 4: Matrix Operations
# Tópico 4: Operações Matriciais

# First, let's create a vector:
# Primeiro, vamos criar um vetor:
vec <- 1:10

# Add a scalar to all elements to the vector
# Adição de escalar em todos os elementos de um vetor
v1 <- vec + 1
v1

# Scalar multiplication of all elements of a vector
# Multiplicação por escalar de todos os elementos de um vetor
v2 <- vec*2
v2

# Other examples / Outros exemplos:
v3 <- vec / 3
v3
v4 <- vec ** 4
v4
v5 <- log(vec)
v5
v6 <- log(vec,10)
v6
v7 <- exp(vec)
v7
# If in doubt of these functions, check previous video
# Caso em dúvida sobre tais funções, confira vídeo anterior

# Sum of vectors / Soma de Vetores
v8 <- vec + v1

# Pointwise multiplication / Multiplicação elemento a elemento
v9 <- vec * 11:20

# Check the elements of all vector:
# Verifique os elementos de um vetor:
vec[1]

# What do you think this will return?
# O que você acha que isso irá retornar:
vec[100]
# NA: Not Avaliable: that element doesn't exist  
# NA: Não Disponível: aquele elemento não existe

# Checking multiple elements at once
# Verificando vários elementos de uma vez:
vec[1], v1[2], v2[3] # ERROR / ERRO
c(vec[1], v1[2], v2[3]) # Correct / Correto
vec[-1] # Return all elements backwise 
# Retorna os elementos de trás pra frente

vec[c(-1:-5)] # Return the selected subset of elements
# Retorna o subconjunto selecionado de elementos

vec[10] <- 100 # Change element / Muda elemento
vec

# We can also work with matrices similarly
# Podemos trabalhar com matrizes de forma similar

# We did this before / Nós fizemos essa matriz anteriormente
m1 <- matrix(data = 1:9, ncol = 3)

# We can also do by row / Também podemos construir por linhas
m2 <- matrix(data = 1:9,ncol = 3, nrow = 3)
m2

# This is a 3 x 3 zero matrix: / Essa é uma matrix nula de dimensão 3 x 3:
m3 <- matrix(0, ncol = 3, nrow = 3)

# 3 x 3 NA Matrix / Matrix 3 x 3 sem elementos
m4 <- matrix(ncol = 3, nrow = 3)
m4

# Another example / Outro Exemplo
m5 <- matrix(data = 10:18, ncol = 3)
m5

# Matrix Operation / Operações Matriciais

m6 <- m1 + m5 # Matrix Sum / Soma de Matrizes
m6
m7 <- m1 * m5 # Pointwise Multiplication / Multiplicação Ponto a Ponto
m7
m8 <- m1 %*% m5 # Matrix Multiplication / Multiplicação Matricial
m8 
# Note how different m7 and m8 are / Note as diferenças entre m7 e m8

# Transpose Matrix / Transpondo Matrizes
t1 <- t(m1)
t1
t5 <- t(m5)
t5

# Inverting Matrix /Invertendo Matrizes
inv1 <- solve(m1) # ERROR / ERRO
# Try with a non-singular matrix / Tente com uma matriz não singular

# Indexes: we use to select what we want in a matrix 
# Índices: usamos para selecionar o que queremos em uma matriz
m1[2, 1] # One element / Um elemento
m1[1, ] # One line / Uma linha
m1[, 2] # One column / Uma coluna
m1[, 2:3] # A subset of columns / Um subconjunto de colunas
m1[c(1,3),] # A subset of lines / Um subconjunto de linhas
# Note: both methods are valid, but the second allow to select
# non-consecutive lines or columns
# Nota: ambos os métodos são válidos, mas o segundo permite selecionar
# linhas ou colunas que não são consecutivas

m1[,1] <- c(5,2,7) # replace a line or column / substitua linha ou coluna
m1
inv1 <- solve(m1) # now this is invertible / agora isso é invertível
inv1



