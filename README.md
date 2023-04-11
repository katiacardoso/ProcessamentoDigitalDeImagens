# ProcessamentoDigitalDeImagens

### Para começar a pensar

Inicialmente, para pegar o tamanho de uma imagem, faremos assim:
```
[M0 N0]=size(f);
```
Declarando o tamanho do filtro 3 considerando **m*** como linhas e **n** como colunas:
```
m=n=3;
```
Declarando k para encontrar o centro do filtro para manter a simetria:
```
k=m-1;
```
Criando uma outra matriz zerada com colunas de zeros acrescidas de acordo com o valor de k:

```
fzerada=zeros(M0+k,N0+k);
```
Portanto, teremos uma nova matriz, com novos valores de linhas e colunas, logo:
```
[M,N]=size(fzerada);
```


Receita de bolo para For's do somatório
```
for(x=((m+1/2):1:M-((m-1)/2))
  for(y=(n+1)/2):1:N-((n-1)/2))
    for(s=(-(m-1)/2):1:((m-1)/2))
      for(t=(-n-1)/2):1:((n-1)/2))
```

 *Para ficar mais fácil, pode colocar uma variável como:
 limiteInferior= m+1/2
 limiteSuperior= m-1/2
