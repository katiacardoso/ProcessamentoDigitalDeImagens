 clc;
 clear all;
 f = figure(1, "numbertitle", "off", "name", "T´ıtulo da figura", "menubar", "none", "toolbar", "none");
 clf;
 p = uipanel(f,"title","Painel","position",[.025 .75 .95 .225]);
 b1 = uicontrol(f, "string", "Botão na janela", "position", [10 10 180 45]);
 b2 = uicontrol(p, "string", "Botão no painel", "position", [200 10 320 45]);

