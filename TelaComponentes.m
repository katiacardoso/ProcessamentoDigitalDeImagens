 clc;
 clear all;
 f = figure(1, "numbertitle", "off", "name", "T´ıtulo da figura", "menubar",
"none", "toolbar", "none");
 clf;
 r = uicontrol(f, "style", "text", "string", "R´otulo de texto", "horizontalalignment", "left", "position", [10 385 180 25]);
 cx = uicontrol(f, "style", "edit", "string", "Caixa de texto para digita¸c˜ao",
"Position", [200, 385, 300, 25]);
 pb = uicontrol(f, "style", "pushbutton", "string", "Push", "position", [510 385 40 25]);
 cb = uicontrol(f, "style", "checkbox", "string", "Caixa de checagem", "position", [10 350 180 25]);
 rb = uicontrol(f, "style", "radiobutton", "string", "Bot˜ao de checagem","position", [200 350 180 25]);
 s = uicontrol(f, "style", "slider", "string", "Escorregador", "position", [390 350 160 25]);
 lb = uicontrol(f, "style", "listbox", "string", {"Item 1"; "Item 2"; "Item 3"; "Item 4"; "Item 5"; "Item 6"; "Item 7";}, "position", [10 190 180 130]);
 pm = uicontrol(f, "style", "popupmenu", "string", {"Opção 1", "Opção 2",
"Opção 3 Opção 4", "Opção 5"}, "position", [200 295 180 25]);
 tb = uicontrol(f, "style", "togglebutton", "string", "Bot˜ao com trava", "position", [390 295 160 25]);

