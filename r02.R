# Introduction to R / Introdução ao R
# Topic 1: Basic Operations and Objects
# Tópico 1: Operações Básicas e Objetos

# Note: everything written after # is a commentary. 
# R won't try to execute commentaries
# Nota: tudo que está escrito após # é um comentário.
# R não tentará executar comentários

# Basic Operations / Operações Básicas

2 + 2   # Sum / Soma
2 - 2   # Subtraction / Subtração
2 * 2   # Multiplication / Multiplication
2 / 2   # Division / Divisão
2^2     # Exponentiation / Potência
2 ** 2  # Also exponentiation / também é potência

# We can also create objects and do operation with objects
# Também podemos criar objetos e fazer operações com objetos

x1 <- 2 # We create an object named x1, which is equal to 2
# Criamos um objeto chamado x1, que será igual a 2.

# Check Global Environment - all created objects will be there
# Confira o Global Environment - todos os objetos criados estarão lá

x2 <- 3 # Similarly, we create an object x2 equal to 3
# Similarmente, criamos um objeto x2 igual a 3

x1 + x2 # we can sum these two objects.
# Podemos somar esses dois objetos

x3 <- x1 + x2 # We can also create an object x3, defined as the sum of x1 and x2
# Também podemos criar um objeto x3, definido como a soma de x1 e x2

x2^x1 # Other operations with objects are also possível
# Outras operações com objetos também são possíveis

# Now, note that we can use () to define the order of operations
# Agora, note que é possível usar () para definir a ordem das operações
x4 <- x1 + x2 * x3
x5 <- (x1 + x2) * x3
x6 <- x1 + (x2 * x3)
x7 <- ((x1 + x2)*x3 + x4)*x5

