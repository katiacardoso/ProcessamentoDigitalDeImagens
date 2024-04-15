clc;
clear all;
k=2;
q=2^k;
L=0:q-1;
M=5;
N=6;
Q=M*N;
h = [0:q-1]; %inicializa¸c~ao da vari´avel para uso posterior.
 I =[0 0 2 1 3 2;
 0 0 0 1 1 2;
 0 0 1 1 1 1;
 0 1 3 1 1 2;
 0 2 1 1 2 3];

 %Processamento do histograma
 for(l=1:q)
   for(m=1:M)
     for(n=1:N)
       % Nesta compara¸c~ao observa-se que a intensidade presenteem I(m,n) ´e comparada `a intensidade presente em L(l).Implementa¸c~ao da fun¸c~ao Delta de Dirac com o deslocamento (l):
       if(I(m,n)==L(l))
         %Contagem dos elementos h(l) do conjunto H que representa numericamente o histograma:
         h(l)++;
       endif
     endfor
   endfor
 endfor

 %Forma¸c~ao do conjunto H que representa numericamente o histograma
 H=h;

 %Processamento do histograma normalizado
 Hlinha = (1/Q)*H;

 %Processamento do histograma equalizado
 t = 0;

 for(l=1:q)
   for(j=1:l)
   t(l)+=h(j);
   endfor
 endfor

 t = round((q-1)/(Q*t)); %Equa¸c~ao 3.3-8 p. 82.
 %Equa¸c~ao 3.3-2 p. 80

 Ilinha = zeros(M,N);
 for(l=1:q)
   for(m=1:M)
     for(n=1:N)
       if(I(m,n)==L(l))
        Ilinha(m,n)=t(l);
       endif
     endfor
   endfor
 endfor

 he=0;

 for(l=1:q)
   for(m=1:M)
     for(n=1:N)
       if(Ilinha(y,x)==L(l))
        he(l)++;
       endif
     endfor
   endfor
 endfor

 He=he;

 a=2;
 b=3;
 subplot(a,b,1)
 imshow(I,[])
 title("Entrada");
 subplot(a,b,2)
 stem(H)
 title("Histograma")
 subplot(a,b,3)
 stem(Hlinha)
 title("Histograma normalizado")
 subplot(a,b,4)
 stem(t)
 title("Curva de transforma¸c~ao")
 subplot(a,b,5)
 imshow(Ilinha,[])
 title("Imagem equalizada")
 subplot(a,b,6)
 stem(He)
  title("Histograma equalizado")

