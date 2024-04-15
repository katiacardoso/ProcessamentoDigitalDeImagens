clc;
clear all;
f = figure(1, "name", "Processamento digital de imagens","numbertitle", "off", "menubar", "none", "toolbar", "none",
"papertype", "a4");
clf;
[arq cam] = uigetfile("");
img = imread(strcat(cam,arq));
S1=size(img,1);
S2=size(img,2);
imgOut = img;
## Controles
controles = uipanel(f,"title","Controles de, filtro","position",[.345 .015 .30 .95],"units","normalized");
##rotulo = uicontrol(controles, "style", "text", "string","Filtro", "horizontalalignment", "left");
popUpMenuFiltro = uicontrol(controles,"style", "popupmenu","string",{"Média aritmética", "Média harmônica", "Média geométrica", "Média quadrática", "Mediana", "Moda", "Valor máximo", "Valor mínimo"},"units","normalized","position" ,[.075 .875 .875 .065]);

popUpMenuFiltroSegmento = uicontrol(controles,"style", "popupmenu","string",{"3 x 3", "5 x 5", "7 x 7", "9 x 9"},"units","normalized","position",[.075 .775 .875 .065]);

botaoFiltroAplicar = uicontrol(controles,"style", "pushbutton", "string","Aplicar filtro selecionado","units","normalized","position",[.075 .675 .875 .065],"callback",{@aplicaFiltro, popUpMenuFiltro,popUpMenuFiltroSegmento, img, S1, S2});


imgViewer1 = uipanel(f,"title","Imagem de entrada [domínio do, espaço]","position",[.015 .015 .30 .95]);
imgViewer2 = uipanel(f,"title","Imagem de sa´ıda [dom´ınio do, espaço]","position",[.675 .015 .30 .95]);
ImgFrm1 = axes ( "parent",imgViewer1,
"position", [0.025, 0.025, .95, 0.95],
"xtick", [],
"ytick", [],
"xlim", [0, 1],
"ylim", [0, 1]);
ImgFrm2 = axes ( "parent",imgViewer2,
"position", [0.025, 0.025, .95, 0.95],
"xtick", [],
"ytick", [],
"xlim", [0, 1],
"ylim", [0, 1]);
axes(ImgFrm1);
imshow(img);
axes(ImgFrm2);
imshow(imgOut);


function aplicaFiltro (x, y, funcao, dimensao, img, S1, S2)
disp(x)
disp(y)
  switch(get(dimensao,"value"))
    case 1
      w=3;
    case 2
      w=5;
    case 3
      w=7;
    case 4
      w=9;
    otherwise
      w=0;
  endswitch
  if(w!=0)
    w2 = (w+1)/2;
    w3 = (w-1)/2;
    imgOutLocal=zeros(2*w3+S1,2*w3+S2);
    imgTemp=imgOutLocal;
    imgTemp(w2:S1+w3,w2:S2+w3)=img(:,:);
    switch (get(funcao,"value"))
      case 1
        ## "M´edia aritmética"
        for(l=w2:1:S1+w3)
            for(c=w2:1:S2+w3)
            imgOutLocal(l,c) = mean(mean(imgTemp(l-w3:l+w3,c-w3:c+w3)));
            endfor
        endfor
        imgOutLocal(1:w3,:)=[];
        imgOutLocal(S1+1:S1+w3,:)=[];
        imgOutLocal(:,1:w3)=[];
        imgOutLocal(:,S2+1:S2+w3)=[];
        imshow(imgOutLocal,[]);
      case 2
      "M´edia harm^onica"
        for(l=w2:1:S1+w3)
          for(c=w2:1:S2+w3)
          imgOutLocal(l,c) = mean(mean(imgTemp(l-w3:l+w3,c-w3:c+w3),"h"),"h");
          endfor
        endfor
      imgOutLocal(1:w3,:)=[];
      imgOutLocal(S1+1:S1+w3,:)=[];
      imgOutLocal(:,1:w3)=[];
      imgOutLocal(:,S2+1:S2+w3)=[];
      imshow(imgOutLocal,[]);
      case 3
      "M´edia geom´etrica"
        for(l=w2:1:S1+w3)
          for(c=w2:1:S2+w3)
          imgOutLocal(l,c) = mean(mean(imgTemp(l-w3:l+w3,c-w3:c+w3),"g"),"g");
          endfor
        endfor
      imgOutLocal(1:w3,:)=[];
      imgOutLocal(S1+1:S1+w3,:)=[];
      imgOutLocal(:,1:w3)=[];
      imgOutLocal(:,S2+1:S2+w3)=[];
      imshow(imgOutLocal,[]);
      case 4
      "M´edia quadr´atica"
        for(l=w2:1:S1+w3)
          for(c=w2:1:S2+w3)
          imgOutLocal(l,c) = meansq(meansq(imgTemp(l-w3:l+w3,c-w3:c+w3)));
          endfor
        endfor
      imgOutLocal(1:w3,:)=[];
      imgOutLocal(S1+1:S1+w3,:)=[];
      imgOutLocal(:,1:w3)=[];
      imgOutLocal(:,S2+1:S2+w3)=[];
      imshow(imgOutLocal,[]);
      case 5
      "Mediana"
        for(l=w2:1:S1+w3)
          for(c=w2:1:S2+w3)
          imgOutLocal(l,c) = median(median(imgTemp(l-w3:l+w3,c-w3:c+w3)));
          endfor
        endfor
      imgOutLocal(1:w3,:)=[];
      imgOutLocal(S1+1:S1+w3,:)=[];
      imgOutLocal(:,1:w3)=[];
      imgOutLocal(:,S2+1:S2+w3)=[];
      imshow(imgOutLocal,[]);
      case 6
      "Moda"
        for(l=w2:1:S1+w3)
          for(c=w2:1:S2+w3)
          imgOutLocal(l,c) = mode(mode(imgTemp(l-w3:l+w3,c-w3:c+w3)));
          endfor
        endfor
      imgOutLocal(1:w3,:)=[];
      imgOutLocal(S1+1:S1+w3,:)=[];
      imgOutLocal(:,1:w3)=[];
      imgOutLocal(:,S2+1:S2+w3)=[];
      imshow(imgOutLocal,[]);
      case 7
      "Valor m´aximo"
        for(l=w2:1:S1+w3)
          for(c=w2:1:S2+w3)
          imgOutLocal(l,c) = max(max(imgTemp(l-w3:l+w3,c-w3:c+w3)));
          endfor
        endfor
      imgOutLocal(1:w3,:)=[];
      imgOutLocal(S1+1:S1+w3,:)=[];
      imgOutLocal(:,1:w3)=[];
      imgOutLocal(:,S2+1:S2+w3)=[];
      imshow(imgOutLocal,[]);
      case 8
      "Valor m´ınimo"
        for(l=w2:1:S1+w3)
          for(c=w2:1:S2+w3)
          imgOutLocal(l,c) = min(min(imgTemp(l-w3:l+w3,c-w3:c+w3)));
          endfor
        endfor
      imgOutLocal(1:w3,:)=[];
      imgOutLocal(S1+1:S1+w3,:)=[];
      imgOutLocal(:,1:w3)=[];
      imgOutLocal(:,S2+1:S2+w3)=[];
      imshow(imgOutLocal,[]);
    otherwise
      msgbox("Erro de l´ogica no c´odigo-fonte.");
    endswitch
     else
       msgbox("N~ao foi poss´ıvel aplicar o filtro `a imagem.");
  endif
endfunction
