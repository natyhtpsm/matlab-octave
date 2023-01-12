clc;
close all;
clear all;

syms x;
f = exp(x)-1; ##Especificar a função

n = input('Casas decimais:');
eps = 5*10^-(n+1)
x0 = input('Primeira aproximacao:');
x1 = input('Segunda aproximacao:');
for i=1:100
f0 = vpa(subs(f,x,x0)); ##func em zero
    f1=vpa(subs(f,x,x1)); ##func em x1
y = x1-((x1-x0)/(f1-f0))*f1; 

tol=abs(y-x1); ##calculando a tolerancia

if tol<eps ##qtde de erro
  break
  end
x0=x1;
x1=y;
end
y = y - rem(y,10^-n); 
fprintf('Raiz: %f \n',y);
fprintf('Iteracoes necessarias : %d\n',i);
