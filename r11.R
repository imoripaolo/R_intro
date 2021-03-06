# Introduction to R / Introdu��o ao R
# Topic 10 Packages
# T�pico 10 Pacotes

# R has many function already. Yet, many people develop new functions for
# R everyday. We call some set of functions "packages", and we can easily
# add them to our R.
# O R j� tem muitas fun��es b�sicas. Ainda assim, muitas pessoas desenvovem
# novas fun��es para o R todo dia. N�s chamamos de "pacotes" cada conjunto de
# fun��es, e podemos facilmente adicion�-las ao nosso R.
install.packages('readxl')

# For the next example, we'll load a database. Check the MICH file in the
# GitHub and save it somewhere. 
# Para o pr�ximo exemplo, vamos carregar uma base de dados. Verifique o 
# arquivo MICH no GitHub e salve em algum lugar.

# Now define a Working Directory - set the same paste you saved the MICH file
# Vamos definir um Working Directoty - deve ser a mesma pasta que voc� salvou o
# arquivo MICH
setwd("~/R/Introdu��o ao R")
# This is mine /Esse � o meu.

# You can setwd manually. Click in "files", search for the desired paste
# and click the "gear" button. Check for the "Set as ....", and it's done
# Don't forget to save it in your script.
# Voc� pode setwd manualmente. Clique em "files", procure a pasta desejada,
# e clique no bot�o de "engrenagem". Procure pelo "Set as,,,," e est� feito.
# N�o esque�a de salvar em seu script

# Now check the "gear" for the "Go to ... " and try to manually load the
# MICH file. From that, you can see details of the database and save the 
# commands in the script afterwards.
# Agora, verifique a "engrenagem" para o "Go to ... " e tente carregar
# manualmente o arquivo MICH. Dali, voc� pode ver detalhes da base e salvar
# os comandos no script ap�s isso.

# Those should be / Estes devem ser
library(readxl)
MICH <- read_excel("MICH.xlsx")
View(MICH)

# Now we'll select the second column. Two ways to do that:
# Vamos selecionar a segunda coluna. Duas formas de faz�-lo.
MICH[,2]
MICH$MICH

# Let's take the mean of the MICH variable
# Vamos tomar a m�dia da vari�vel MICH
mean(MICH) # ERROR / ERRO

# MICH returns the base, and R doesn't know what to read. You must select
# what variable you want.
# MICH retorna a base, e o R n�o sabe o que deve ler. Voc� deve selecionar
# qual vari�vel voc� desejada.
mean(MICH$MICH)

# Also, you can create another object based on MICH
# Voc� tamb�m pode criar outro objeto baseado em MICH
mich <- MICH$MICH
mean(mich)

# Note that if you use capital letters, the original MICH is replaced, and
# if you want it again, you must load the database again.
# Note que se voc� usar letras mai�sculas, o MICH original � substituido, e
# se voc� quiser utilizar novamente, voc� dever� carregar novamente a base.
MICH <- MICH$MICH
MICH <- read_excel("MICH.xlsx")
