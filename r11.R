# Introduction to R / Introdução ao R
# Topic 10 Packages
# Tópico 10 Pacotes

# R has many function already. Yet, many people develop new functions for
# R everyday. We call some set of functions "packages", and we can easily
# add them to our R.
# O R já tem muitas funções básicas. Ainda assim, muitas pessoas desenvovem
# novas funções para o R todo dia. Nós chamamos de "pacotes" cada conjunto de
# funções, e podemos facilmente adicioná-las ao nosso R.
install.packages('readxl')

# For the next example, we'll load a database. Check the MICH file in the
# GitHub and save it somewhere. 
# Para o próximo exemplo, vamos carregar uma base de dados. Verifique o 
# arquivo MICH no GitHub e salve em algum lugar.

# Now define a Working Directory - set the same paste you saved the MICH file
# Vamos definir um Working Directoty - deve ser a mesma pasta que você salvou o
# arquivo MICH
setwd("~/R/Introdução ao R")
# This is mine /Esse é o meu.

# You can setwd manually. Click in "files", search for the desired paste
# and click the "gear" button. Check for the "Set as ....", and it's done
# Don't forget to save it in your script.
# Você pode setwd manualmente. Clique em "files", procure a pasta desejada,
# e clique no botão de "engrenagem". Procure pelo "Set as,,,," e está feito.
# Não esqueça de salvar em seu script

# Now check the "gear" for the "Go to ... " and try to manually load the
# MICH file. From that, you can see details of the database and save the 
# commands in the script afterwards.
# Agora, verifique a "engrenagem" para o "Go to ... " e tente carregar
# manualmente o arquivo MICH. Dali, você pode ver detalhes da base e salvar
# os comandos no script após isso.

# Those should be / Estes devem ser
library(readxl)
MICH <- read_excel("MICH.xlsx")
View(MICH)

# Now we'll select the second column. Two ways to do that:
# Vamos selecionar a segunda coluna. Duas formas de fazê-lo.
MICH[,2]
MICH$MICH

# Let's take the mean of the MICH variable
# Vamos tomar a média da variável MICH
mean(MICH) # ERROR / ERRO

# MICH returns the base, and R doesn't know what to read. You must select
# what variable you want.
# MICH retorna a base, e o R não sabe o que deve ler. Você deve selecionar
# qual variável você desejada.
mean(MICH$MICH)

# Also, you can create another object based on MICH
# Você também pode criar outro objeto baseado em MICH
mich <- MICH$MICH
mean(mich)

# Note that if you use capital letters, the original MICH is replaced, and
# if you want it again, you must load the database again.
# Note que se você usar letras maiúsculas, o MICH original é substituido, e
# se você quiser utilizar novamente, você deverá carregar novamente a base.
MICH <- MICH$MICH
MICH <- read_excel("MICH.xlsx")
