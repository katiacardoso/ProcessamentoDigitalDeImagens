clc;
clear all;
close all;

#M = 6;
#N = 8;
#[arq cam] = uigetfile();
#F = imread(strcat(cam,arq))(1:M,1:N);

I=[2 1 5 5 3 0;
4 1 3 7 8 2;
5 2 1 4 5 7;
6 8 9 0 1 1;
7 3 7 4 9 2];
[M N] = size(I);

I
A=3;

#Fchapeu =  zeros(M+A-1,N+A-1);
Fchapeu =  zeros(M,N);

S=3;
T=3;
A=((S-1)/2);
B=((T-1)/2);
#colocar o centro
#colocar o A para saber a borda

for(m = ((S+1)/2:1:M-((S-1)/2)))
  for(n = ((T+1)/2:1:N-((T-1)/2)))
   #soma=0;
    for(s = -A:1:A)
      for(t = -B:1:B)
      #vai incrementando na soma a cada pixel encontrado
        Fchapeu(m,n)+=I(m+s,n+t);
      endfor
    endfor
  endfor
endfor

Fchapeu *= (1/S*T)

#depois que acabou a região processada, deve ser somado tudo e multiplicado

#atribui o resultado da média aquele pixel central na Fchapeu

#subplot(1,3,1);
#imshow(I);

#subplot(1,3,2);
#imshow(G);

#subplot(1,3,3);
#imshow(G-F);

