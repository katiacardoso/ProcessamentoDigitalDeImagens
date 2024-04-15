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

limiar = 127; # 127 metade da escala
t0=time;

I3(I3<=limiar) = 0 # tudo que estiver abaixo de 127 vai virar 0
printf("Tempo para zero = %f.\n", time-t0);
I3(I3>limiar) = 255  # tudo que for maior que 127 vai virar 255, o miaximo da limiar
printf("Tempo para 255 = %f.\n", time-t0);

subplot(1,3,1);
imshow(I1,[]);
subplot(1,3,2);
imshow(I2,[]);
subplot(1,3,3);
imshow(I3,[]);
