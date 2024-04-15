clc;
clear all;
clf;
disp("Escrevendo uma mensagem na Janela de Comandos.\n");
disp("O valor da variavel v é: ");
v = 10;
disp(v);
do
 t = input('\nInforme o valor inteiro de tempo em segundos a esperar e pressione a tecla enter: ');
 until (isnumeric(t))
 printf('Aguardando %i segundo(s) para dar continuidade ao processamento.',t);
 pause(t);
 printf('\n\n\nImpress˜ao de mensagem e variável intercaladas:\n\nO valor da variável v é %i.\n',v);
 x = 15.123456789;
 y = 20.123456789*10^35;
 printf("\n\n\nMensagem com valores de variáveis recebendo formataç˜ao na impress˜ao:\n\n\n O valor da variável v é: %05i, da vari´avel x: é %04.3f e da variável y é: %02.15e.",v,x,y);
