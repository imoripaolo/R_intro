# Introduction to R / Introdu��o ao R
# Topic 1: Basic Operations and Objects
# T�pico 1: Opera��es B�sicas e Objetos

# Note: everything written after # is a commentary. 
# R won't try to execute commentaries
# Nota: tudo que est� escrito ap�s # � um coment�rio.
# R n�o tentar� executar coment�rios

# Basic Operations / Opera��es B�sicas

2 + 2   # Sum / Soma
2 - 2   # Subtraction / Subtra��o
2 * 2   # Multiplication / Multiplication
2 / 2   # Division / Divis�o
2^2     # Exponentiation / Pot�ncia
2 ** 2  # Also exponentiation / tamb�m � pot�ncia

# We can also create objects and do operation with objects
# Tamb�m podemos criar objetos e fazer opera��es com objetos

x1 <- 2 # We create an object named x1, which is equal to 2
# Criamos um objeto chamado x1, que ser� igual a 2.

# Check Global Environment - all created objects will be there
# Confira o Global Environment - todos os objetos criados estar�o l�

x2 <- 3 # Similarly, we create an object x2 equal to 3
# Similarmente, criamos um objeto x2 igual a 3

x1 + x2 # we can sum these two objects.
# Podemos somar esses dois objetos

x3 <- x1 + x2 # We can also create an object x3, defined as the sum of x1 and x2
# Tamb�m podemos criar um objeto x3, definido como a soma de x1 e x2

x2^x1 # Other operations with objects are also poss�vel
# Outras opera��es com objetos tamb�m s�o poss�veis

# Now, note that we can use () to define the order of operations
# Agora, note que � poss�vel usar () para definir a ordem das opera��es
x4 <- x1 + x2 * x3
x5 <- (x1 + x2) * x3
x6 <- x1 + (x2 * x3)
x7 <- ((x1 + x2)*x3 + x4)*x5

