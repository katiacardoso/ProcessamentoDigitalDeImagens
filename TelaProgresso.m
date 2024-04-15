clc;
 f = figure(1, "numbertitle", "off", "name", "Titulo da figura", "menubar", "none", "toolbar", "none");
 clf;
 bp = waitbar(0,"Progresso","name","Barra de progresso");
 I = 10;
 J = 10;
 numOperacoes = I*J;
 salto = 1/numOperacoes;
 preenchimento = 0;
 for(i=1:1:I)
 for(j=1:1:J)
 pause(0.25);
 preenchimento += salto;
 waitbar(single(preenchimento),bp);
 endfor
 endfor

