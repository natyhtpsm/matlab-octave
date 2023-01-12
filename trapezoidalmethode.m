## Calcula a área embaixo da curva de uma determinada
## função usando 4 sub intervalos.

syms x ##especifica a variável como simbólica
a=0; ##Limite inferior
b=1; ## Limite superior
n=4; ##numero de segmentos

funcao=x^4;  ##aqui coloca-se a função

f=inline(funcao);

h=(b - a)/n;
X=f(a)+f(b);

j=0;
for i = 1:1:n-1
	xi=a+(i*h);
	j=j+f(xi);
end
I=(h/2)*(X+2*R);

disp('Area embaixo da curva = ');
disp(I);
