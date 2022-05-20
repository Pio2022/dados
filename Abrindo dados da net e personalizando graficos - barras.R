#Personalizando gráficos - um gráfico de barras
#Marcos V C Vital, Academia do R
#Script feito em R 4.0.3

#Lendo os dados:
cemiterio <- read.table ("https://raw.https://github.com/Pio2022/dados/GoT.txt", header=T, stringsAsFactors = T, sep="\t")

#Conferindo os dados:
summary (cemiterio)

#Se quiser saber mais sobre parâmetos gráficos, confira o help da função par():
?par

#######################################
#Antes de seguir, vamos eliminar um underline que existe em um dos nomes:

nomes <- gsub ("_", " ", cemiterio$Nome)

#Começando a criar nosso gráfico
#Versão base:
barplot (cemiterio$Flores, names.arg = nomes, las=2, xlab="Nome da personagem", ylab="Número de flores")

#Vamos começar a melhorar:
par(mar=c(7, 7, 1, 1))
grafico <- barplot (cemiterio$Flores, names.arg = nomes, las=2, ylim=c(0, 300000))
mtext ("Nome da personagem", side=1, line=5)
mtext ("Número de flores", side=2, line=5)
text (x=grafico, y=cemiterio$Flores+10000, labels=cemiterio$Flores)
box ()

dev.off ()

#dev.off() "desliga" os parâmetros estabelicidos por par, e apaga os gráficos feitos
#mar estabelece o tamanho das margens (em linhas)
#margem 1 é eixo x, margem 2 é eixo y, 3 é cima, 4 é direita
#mtext adiciona texto ou números nas margens de um gráfico
#text adiciona texto ou números na área de dentro do gráfico
