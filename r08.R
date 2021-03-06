# Introduction to R / Introdu��o ao R
# Topic 8: "if" and "while"
# T�pico 8: "if" e "while"

# The "if" function allow us to work with conditionals. Let's see:
# A fun��o "if" nos permite trabalhar com condicionais. Vamos ver:

a <- c("Norte", "Norte", "Sul", "Leste", "Sul", "Oeste")
# Assume "a" is a vector that collects the geographic region of some cities
# in a country. We want to create region vectors that tell us if the i-th 
# city (the i-th entrance) is from that region.
# Suponha que "a" � um vetor que coleciona a regi�o geogr�fica de algumas
# cidades em um pa�s. Queremos criar vetores de regi�o que nos dizem se a
# i-�sima cidade (a i-�sima entrada) � daquela regi�o

N <- c() # North region vector / Vetor da regi�o norte
S <- c() # South region vector / Vetor da regi�o sul
L <- c() # East region vector / Vetor da regi�o leste
O <- c() # West region vector / Vetor da regi�o oeste

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
# Note que o "for" vai retornar valor TRUE (verdade) somente se a i-�sima
# entrada de i � 'Norte'.

# Important: we do this: a[i] == Something. The double equal is the 
# logical test. Test with one equal sign only to see what happens.
# Importante: n�s fazemos assim: a[i] == Algo. Os dois iguais s�o o teste
# l�gico. Teste com apenas um sinal de igual para ver o que ocorre.

# Now, we'll do the same for the other regions:
# Agora, vamos fazer o mesmo para as outras regi�es.
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
# Para a �ltima regi�o, vamos fazer de forma chique. O teste l�gico n�o �
# baseado no vetor "a". Uma vez que cada cidade deve pertence a ao menos uma
# regi�o, e no m�ximo a uma regi�o, ent�o vamos dizer que O[i] ser� verdadeiro
# somente se a i-�sima entrada de cada outra regi�o � falso. Uma vez que FALSO=0
# em termos de armazenamento, se a soma das demais i-�simas entradas forem
# falsas, ent�o O[i] deve ser verdade.


# Now, for the "while" function. This one is also a conditional. The ideia
# is that an action is performed as long as some condition is true, and to
# stop performing when that said condition stops being true.
# Agora, para a fun��o "while". Esta tamb�m � uma condicional. A ideia � que
# uma a��o � realizada enquanto uma condi��o � verdadeira, e para-se de executar
# tal a��o no instante em que tal condi��o deixa de ser verdadeira.

b <- 1
while (b <= 10) {
  print(b)
  b = b+1
}
