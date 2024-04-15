 m = [1 2 3 4 5; 6 7 8 9 10; 11 12 13 14 15]
 n = m(1:2,1:4)
 printf('\nObserve que a matriz n é o resultado do comando n = m(1:2,1:4). Compare as matrizes m no intervalo e n.\n\n');
 m0 = zeros(5,5)
 m0(2:4,2:4) = m (1:3,1:3)
 printf("\nObserve que a matriz m0 foi atualizada pelo comando m0(2:4,2:4) = m (1:3,1:3), que faz uma cópia de um intervalo de nove elementos de m para m0.\n");

