# Introduction to R / Introdução ao R
# Topic 8: "if" and "while"
# Tópico 8: "if" e "while"

# The "if" function allow us to work with conditionals. Let's see:
# A função "if" nos permite trabalhar com condicionais. Vamos ver:

a <- c("Norte", "Norte", "Sul", "Leste", "Sul", "Oeste")
# Assume "a" is a vector that collects the geographic region of some cities
# in a country. We want to create region vectors that tell us if the i-th 
# city (the i-th entrance) is from that region.
# Suponha que "a" é um vetor que coleciona a região geográfica de algumas
# cidades em um país. Queremos criar vetores de região que nos dizem se a
# i-ésima cidade (a i-ésima entrada) é daquela região

N <- c() # North region vector / Vetor da região norte
S <- c() # South region vector / Vetor da região sul
L <- c() # East region vector / Vetor da região leste
O <- c() # West region vector / Vetor da região oeste

# We'll combine the "if" and the "for"
# Vamos combinar o "if" e o "for"
for (i in 1:length(a)) {
  if (a[i] == "Norte"){
    N[i] <- TRUE
  } else {
    N[i] <- FALSE
  }
}
# Note that the "for" will return value TRUE only if the i-th entrance of
# i is 'Norte'.
# Note que o "for" vai retornar valor TRUE (verdade) somente se a i-ésima
# entrada de i é 'Norte'.

# Important: we do this: a[i] == Something. The double equal is the 
# logical test. Test with one equal sign only to see what happens.
# Importante: nós fazemos assim: a[i] == Algo. Os dois iguais são o teste
# lógico. Teste com apenas um sinal de igual para ver o que ocorre.

# Now, we'll do the same for the other regions:
# Agora, vamos fazer o mesmo para as outras regiões.
for (i in 1:length(a)) {
  if (a[i] == "Sul"){
    S[i] <- TRUE
  } else {
    S[i] <- FALSE
  }
}

for (i in 1:length(a)) {
  if (a[i] == "Leste"){
    L[i] <- TRUE
  } else {
    L[i] <- FALSE
  }
}

for (i in 1:length(a)) {
  if (N[i] + S[i] + L[i] == 0){
    O[i] <- TRUE
  } else {
    O[i] <- FALSE
  }
}
# For the last region, we'll make it fancy. The logical test is not based
# on the "a" vector. Since every city must be in at least one region, and at
# most one region, we'll say O[i] is true only if the i-th entrance on
# every other region is false. Since FALSE=0 in storage terms, if the sum of
# every other i-th entrance in false, than O[i] must be true.
# Para a última região, vamos fazer de forma chique. O teste lógico não é
# baseado no vetor "a". Uma vez que cada cidade deve pertence a ao menos uma
# região, e no máximo a uma região, então vamos dizer que O[i] será verdadeiro
# somente se a i-ésima entrada de cada outra região é falso. Uma vez que FALSO=0
# em termos de armazenamento, se a soma das demais i-ésimas entradas forem
# falsas, então O[i] deve ser verdade.


# Now, for the "while" function. This one is also a conditional. The ideia
# is that an action is performed as long as some condition is true, and to
# stop performing when that said condition stops being true.
# Agora, para a função "while". Esta também é uma condicional. A ideia é que
# uma ação é realizada enquanto uma condição é verdadeira, e para-se de executar
# tal ação no instante em que tal condição deixa de ser verdadeira.

b <- 1
while (b <= 10) {
  print(b)
  b = b+1
}
