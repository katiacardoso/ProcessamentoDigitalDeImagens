 clc;
 f = figure(1, "numbertitle", "off", "name", "Titulo da figura", "menubar","none", "toolbar", "none");
 clf;
 menuA = uimenu(f,"label","Menu &A");
 uimenu(menuA,"label", "Op¸c˜ao A&1");
 uimenu(menuA,"label", "Op¸c˜ao A&2", "accelerator","Y");
 uimenu(menuA,"label", "Op¸c˜ao A&3", "accelerator","y");
 menuB = uimenu(f,"label","Menu &B");
 uimenu(menuB,"label", "Op¸c˜ao B&1");
 uimenu(menuB,"label", "Op¸c˜ao B&2", "accelerator", "Z");
 uimenu(menuB,"label", "Op¸c˜ao B&3", "accelerator", "z");
