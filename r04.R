# Introduction to R / Introdução ao R
# Topic 3: Funções
# Tópico 3: Funções

# Functions: y = f(x)
# x is the input, y is the output and f is a relation.
# Funções: y = f(x)
# x é o input, y is the output e f é a relação

# We create functions like this:
# Criamos funções assim
square <- function(var){
  y = var^2
  return (y)
}
# Note that "square" is the name of the function, and "var" is the input.
# Name the input anything you want. After that, between the {} you specify
# what the function does. This one will create an object "y" that is equal
# to the square of the input and return y.
# Note que "square" é o nome da função, e "var" é o input. Nomeie o input
# como quiser. Após isso, entre {} você especifica o que sua função faz.
# Essa irá criar um objeto "y" que será igual ao quadrado do input e retorna y
 
# Another example:
# Outro exemplo:
minus_square <- function(x){
  y = - square(x)
  return (y)
}

# Let's see what these function do:
# Vamos ver o que essas funções fazem:
square(10)
x1 <- square(10)
x2 <- minus_square(5)

# We can apply functions to vectors and matrices as well:
# Podemos aplicar funções em vetores e matrizes também:
x <- c(1,2,3,4,5)
x1 <- square(x)
x2 <- minus_square(x)

# Functions can have multiple inputs:
# Funções podem ter vários inputs:
potency <- function(x,n){
  y = x^n
  return(y)
}

# These functions can be applied to vectors and matrices as well:
# Essas funções podem ser aplicadas a vetores e matrizes também:
x3 <- potency(x,2)
x3
x4 <- potency(x,3)
x4
x5 <- potency(3,x)
x5
# Note the differences between x4 and x5. The order of the inputs may matter
# Note as diferenças entre x4 e x5. A ordem dos inputs podem importar
x6 <- potency(n=3,x=x)
x6
# If you think there's ambiguity, specify inputs.
# Se você achar que há ambiguidade, especifique inputs.

# Note that R already comes with some functions. Examples
# Note que o R já vem com algumas funções. Exemplos:
x7 <- abs(x1) # Absolute Value / Valor absoluto
x7
x8 <- abs(x2)
x8
x9 <- exp(x) # Exponential / Exponencial
x10 <- sqrt(x) # Square Root / Raiz Quadrada
x11 <- log(x) # Base 10 Log / Log de Base 10
x12 <- log(x, base = 5) # Base n Log / Log de Base n

