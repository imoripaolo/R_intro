# Introduction to R / Introdução ao R
# Topic 7: The "for" loop
# Tópico 7: O loop "for"

# We use loops when we want to repeat a operation many times
# Utilizamos loops quando queremos repetir uma operação várias vezes

# Let's create some vectors / Vamos criar alguns vetores
vec <- 1:10 
v1 <- c() # This create an empty object / Esse cria um objeto vazio
v2 <- matrix(data = 0, nrow=10, ncol = 5) 
v3 <- c()

# Let's see what we can do with the "for"
# Vamos ver o que é possível fazer com o "for":
for (i in 1:10) {
  v1[i] <- vec[i] + vec[i]^2 
} 
# Let's read it: for all index "i" from 1 to 10, the i-th element of v1
# is equal to i-eth element of vec plus its square. Note that we can
# use any term for the index.
# Vamos ler a expressão: para todo índice "i" de 1 a 10, o i-ésimo elemento
# de v1 é igual ao i-ésimo elemento de vec mais o seu quadrado. Note que
# podemos usar qualquer termo para o índice.

# We can have multiple indexes, and therefore multiple loops:
# Nós podemos ter múltiplos índices, e logo vários loops:
for (i in 1:10) {
  for (j in 1:5) {
    v2[i,j] <- vec[i]^j
  }
} 
v2

# We'll talk more about conditionals later, but "for" loops can have 
# conditions as well.
# Vamos falar melhor sobre condicionais a frente, mas loops "for" podem
# ter condições também:

for (i in 1:10) {
  if ((vec[i] %% 2) == 0){
    v3[i] <- vec[i]^2
  } else {
    v3[i] <- vec[i]^3
  }
}
# In this case, if certain condition is satisfied, v3[i] takes some value,
# and if not, it takes some other value.
# Nesse caso, se alguma condição é satisfeita, v3[i] toma certo valor, e 
# caso contrário, assume um outro valor.

# Economics Example! / Exemplo de Economia!

# Partial Equilibrium / Equilíbrio Parcial

market <- matrix(data = 0, nrow=100, ncol = 4)
colnames(market) <- c("p", "qs", "qd", "mc")
# colnames allow us to name the columns of market. Check it in the Global
# Environment. Make sure the ncol is the same of the object you're naming
# colnames nos permite nomear colunas de market. Verifique no Global 
# Environment. Garanta que ncol é igual ao do objeto que você nomeia.

# We'll create supply and demand functions, and see the market clearing
# price of this market.
# Vamos criar funções de oferta e demanda, e ver qual o nível de preços de
# equilíbrio de mercado.

# Price vector: the i-th entrance is equal to i
# Vetor de Preços: a i-ésima entrada é igual a i
for (i in 1:100) {
  market[i,1] <- i
}

# Supply: assume q(p) = 10p.
# Oferta: assuma q(p) = 10p
for (i in 1:100) {
  market[i,2] <- 10*i
}

# Demand: assume x(p) = 1000 - 10p
# Demanda: assuma x(p) = 1000 - 10p
for (i in 1:100) {
  market[i,3] <- 1000-(10*i)
}

# The fourth column will tell us if there's excess supply (ES), excess 
# demand (ED), or market clearing (MC)
# A quarta coluna indicará se há excesso de oferta (ES), excesso de 
# demanda (ED), ou equilíbrio de mercado (MC)

for (i in 1:100) {
  if (market[i,2] > market[i,3]){
    market[i,4] <- "ES"
  } else {
    if (market[i,2] == market[i,3]){
      market[i,4] <- "MC"
    } else {
      market[i,4] <- "ED"
    }
  }
}
# Now, check the market matrix in the Global Environment
# Agora, verifique a matriz market no Global Environment

