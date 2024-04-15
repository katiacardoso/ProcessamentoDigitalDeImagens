clc;
clear all;
M = 480; %CIF
N =  680;
q=8;
Q=(2^q)-1;
#i=randi([0 Q], M, N); # gera  imagem aleatoria

imshow(i,[]);
