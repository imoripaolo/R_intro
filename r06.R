# Introduction to R / Introdu��o ao R
# Topic 5: Types of objects
# T�pico 5: Tipos de objetos

# We have many types of objects. Let's see two functions: typeof and class
# N�s temos v�rios tipos de objetos. Vamos ver duas fun��es: typeof e class

a <- 1 # integer / inteiros
typeof(a) # double represents real numbers / double representa n�meros reais
class(a) 
b <- "TRUE" # word / palavra
typeof(b)
class(b)
c <- TRUE # logical operator / operator l�gico
typeof(c)
class(c)
d <- c(a,b,c) # non-numeric vector / vetor n�o num�rico
typeof(d)
class(d)
e <- c(1,2,3,4,5) # numeric vector / vetor num�rico
typeof(e)
class(e)
# There are more types of objects. We won't explore all
# Existem mais tipos de objetos. N�o vamos explorar todos.

# The function is.x(y) checks if type of y is x. This will return a logical
# object, TRUE or FALSE. Let's check if a is a integer
# A fun��o is.x(y) verifica se o tipo de y � x. Isso vai retornar um objeto
# l�gico, TRUE (verdadeiro) ou FALSE (falso). Vamos verificar se a � inteiro
f <- is.integer(a) 
f
# Note that a is an integer, but is stored as a real number. We can store a
# as an intenger utilizing the as.integer function.
# Note que a � um inteiro, mas � salvo como um n�mero real. N�s podemos salvar
# a como um inteiro utilizando a fun��o as.integer
g <- as.integer(a)
g
typeof(g)
class(g)

# Note that logical objects are binary: TRUE = 1 and FALSE = 0
# Note que objetos l�gicos s�o sin�rios: TRUE = 1 e FALSE = 0
h <- is.integer(g)
h

# Note that characters (amongst other objects) can't be transformed in a 
# integer. Let's check:
# Note que palavras (entre outros objetos) n�o podem ser transformados em
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
# Vamos substitir um elemento com um objeto l�gico
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