clc;
clear all;
close all;
[arq cam] = uigetfile(); #para abrir janela
I1=imread(strcat(cam,arq));
I3 = I2 = rgb2gray(I1);
#Fazendo o negativo em I3
I3= 255 -I3;

subplot(1,3,1);
imshow(I1,[]);
subplot(1,3,2);
imshow(I2,[]);
subplot(1,3,3);
imshow(I3,[0 255]);
