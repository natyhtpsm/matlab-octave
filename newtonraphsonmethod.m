clear all;
close all;

## Fun=inline('8-4.5*(x-sin(x))');  put the function here
## D_Fun=inline('-4.5*(1-cos(x))'); put the derivated function here
x0=2.5;
Erro=1e-5;
imax=50;
##disp('funcao');
##Fun=input('');
##disp('funcao');
##D_Fun=input('');
##disp('x0');
##x0=input('');
##disp('erro');
##Erro=input('');
##disp('max iteracoes');
##imax=input('');

for(i=1:imax)
  xi=x0-feval(Fun, x0)/feval(D_Fun,x0);
  if (abs((xi-x0)/x0)<Erro);
    xz=xi;
    break
  endif
  x0=xi;
endfor

fprintf('solucao xz= %11.6f', xz);
fprintf(' , obtida em %i iteracoes', i);
