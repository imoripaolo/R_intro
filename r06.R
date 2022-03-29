# Introduction to R / Introdução ao R
# Topic 5: Types of objects
# Tópico 5: Tipos de objetos

# We have many types of objects. Let's see two functions: typeof and class
# Nós temos vários tipos de objetos. Vamos ver duas funções: typeof e class

a <- 1 # integer / inteiros
typeof(a) # double represents real numbers / double representa números reais
class(a) 
b <- "TRUE" # word / palavra
typeof(b)
class(b)
c <- TRUE # logical operator / operator lógico
typeof(c)
class(c)
d <- c(a,b,c) # non-numeric vector / vetor não numérico
typeof(d)
class(d)
e <- c(1,2,3,4,5) # numeric vector / vetor numérico
typeof(e)
class(e)
# There are more types of objects. We won't explore all
# Existem mais tipos de objetos. Não vamos explorar todos.

# The function is.x(y) checks if type of y is x. This will return a logical
# object, TRUE or FALSE. Let's check if a is a integer
# A função is.x(y) verifica se o tipo de y é x. Isso vai retornar um objeto
# lógico, TRUE (verdadeiro) ou FALSE (falso). Vamos verificar se a é inteiro
f <- is.integer(a) 
f
# Note that a is an integer, but is stored as a real number. We can store a
# as an intenger utilizing the as.integer function.
# Note que a é um inteiro, mas é salvo como um número real. Nós podemos salvar
# a como um inteiro utilizando a função as.integer
g <- as.integer(a)
g
typeof(g)
class(g)

# Note that logical objects are binary: TRUE = 1 and FALSE = 0
# Note que objetos lógicos são sinários: TRUE = 1 e FALSE = 0
h <- is.integer(g)
h

# Note that characters (amongst other objects) can't be transformed in a 
# integer. Let's check:
# Note que palavras (entre outros objetos) não podem ser transformados em
# inteiros. Vamos ver:
i <- as.integer(b)
i
k <- as.integer(h)
k
j <- as.integer(f)
j

# Let's focus on matrices / Vamos focar em matrizes
m <- matrix(data = 1:9, ncol = 3)
typeof(m)
class(m)
n <- m + 0.5
typeof(n)
class(n)
# Note we can have integer-valued and real-valued matrices
# Note que podemos ter matrizes de valor inteiro e real

# Let's replace an element with a logical object
# Vamos substitir um elemento com um objeto lógico
o <- m
o[1,1] <- TRUE
o
typeof(o)

# Now let's repalace an element with a character
# Agora vamos substituir um elemento por uma palavra
p <- m
p[1,1] <- "TRUE"
p
typeof(p)
class(p)