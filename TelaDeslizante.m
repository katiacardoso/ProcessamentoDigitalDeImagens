clc;
 clf;
 f = figure(1, "numbertitle", "off", "name", "Titulo da figura", "menubar", "none", "toolbar", "none", "position", [100, 100, 350, 150]);
 r = uicontrol(f, "style","text","string", "Posi¸c˜ao do coontrole deslizante: ", "horizontalalignment","left","position", [50 100 250 25]);
 s = uicontrol(f, "style", "slider", "string", "Escorregador", "position", [50 50 160 25]);
 while(1)
 x = get(s,"value");
 set(r,"string",strcat("Posi¸c˜ao do controle deslizante: ",num2str(x)));
 pause(0.05);
 endwhile
