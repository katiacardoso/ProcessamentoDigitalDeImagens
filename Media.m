clc;
clear all;
close all;
f=[8,2,4,6;9,3,1,2;4,5,6,8];
#primeiro parametro n� de linhas
M=size(f,1);
#segundo parametro n� de colunas
N=size(f,2);
#fun��o g= soma de todos os elementos por linnha/ (1/MN)
#g � uma informa��o b�sica, no caso a m�dia; g � uma opera��o global
#m e n s�o contadores do somatorio 
g=0;
for (m=1:1:M)
  for (n=1:1:N)
    g+=f(m,n);  #faz realmente a varredura
  endfor 
endfor
g=g/(M*N); #aqui faz a media mesmo
printf("Media de f: %d \n", g);
#-------------------------------------arrendodamentos por limiar
#teto = ceil
#piso = floor

#usando teto da media como limiar de binariza��o
g1=f; # g se torna uma matriz
g1(g1>=ceil(g))=9;
g1(g1<ceil(g))=0;

#usando o piso como limiar de binariza��o
g2=f
g2(g2>=floor(g))=9;
g2(g2<floor(g))=0;

#impress�o
f
g
g1
g2   

#em caso de luzes, a g2 brilharia mais por uma maior incidencia de 9



