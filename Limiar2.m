# limiar - valor limite para tomada de decisão
# neste exercício é feito uma transfomaçãop de intensidade por linear
# sai de uma imagem colorida para uma em tons de preto e branco

clc;
clear all;
close all;
[arq cam] = uigetfile(); #para abrir janela

I1=imread(strcat(cam,arq)); #para ler a imagem
#roda o pkg load image na janela de comandos para carregar a função abaixo
I3 = I2 = rgb2gray(I1); #transformar em escala de cinza
limiarN1=50;
limiarN2=100;
limiarN3=150;
limiarN4=200;

#Esse limiar serve tanto para escurecer tanto para clarear, depende da sua inten_
#ção para
# o 0 é escuro o 255 é branco

t0=time;
I3(I3<=limiarN1) = 255; #para gerar a limiar mesmo, altere o valor para 0
printf("Tempo para limiarN1 = %f.\n", time-t0);

t0=time;
I3(I3>limiarN1&I3<=limiarN2)=255;  #para gerar a limiar mesmo, altere o valor para 50
printf("Tempo para limiarN2 = %f.\n", time-t0);


t0=time;
I3(I3>limiarN2&I3<=limiarN3)=255; #para gerar a limiar mesmo, altere o valor para 100
printf("Tempo para limiarN3 = %f.\n", time-t0);

t0=time;
I3(I3>limiarN3&I3<=limiarN4)=255; #para gerar a limiar mesmo, altere o valor para 150
printf("Tempo para limiarN3 = %f.\n", time-t0);

t0=time;
I3(I3>limiarN4)=255;    #para gerar a limiar mesmo, altere o valor para 200
printf("Tempo para limiarN4 = %f.\n", time-t0);

subplot(1,3,1);
imshow(I1,[]);
subplot(1,3,2);
imshow(I2,[]);
subplot(1,3,3);
imshow(I3,[0 255]); # ajuste para burlar a exibição da imagem se colocar 255
# por algum motivo ele coloca preto, mas tem que branco

# imshow(I3,[]); esse é a para gerar o limiar mesmo. Trocar por aquela última linha
