clc;
 f = figure(1, "numbertitle", "off", "name", "Titulo da figura", "menubar", "none", "toolbar", "none");
 clf;
 bf = uitoolbar(f);
 icone = rand(19,19,3);
 fr1 = uitoggletool(bf,"cdata",icone,"tooltipstring","Ferramenta 01 com trava","clickedcallback","msgbox('Funcionou a ferramenta 1 com trava!')");
 icone = rand(19,19,3);
 fr2 = uitoggletool(bf,"cdata",icone,"tooltipstring","Ferramenta 02 com trava","clickedcallback","msgbox('Funcionou a ferramenta 2 com trava!')");
 icone = rand(19,19,3);
 fr3 = uitoggletool(bf,"cdata",icone,"tooltipstring","Ferramenta 03 com trava","clickedcallback","msgbox('Funcionou a ferramenta 3 com trava!')");
 icone = randi([0 16],19,19,3);
 fr4 = uipushtool(bf,"cdata",icone,"tooltipstring","Ferramenta 01 com mola","clickedcallback","msgbox('Funcionou a ferramenta 1 com mola!')");
 icone = randi([0 16],19,19,3);
 fr5 = uipushtool(bf,"cdata",icone,"tooltipstring","Ferramenta 02 com mola","clickedcallback","msgbox('Funcionou a ferramenta 2 com mola!')");

