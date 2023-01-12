disp('insira a quantidade maxima de iteracoes:');
imax=input('');
disp('insira a tolerancia de erro:');
tol=input('');

Fa=F(a);
Fb=F(b);

if (Fa*Fb>0)
  disp('nao tem raiz no intervalo');
   else
   disp('iter a b (xNS) F(xNS) Tol');
for (i=1:imax)
  xNS = (a*Fb-b*Fa)/(Fb-Fa);
  tol_i=(b-a)/2;
  F_xNS=F(xNS);
  fprintf('%3i %11.6f %11.6f %11.6f %11.6f %11.6f\n', i, a, b, xNS, F_xNS, tol_i);
   if(tol_i<tol)
    break
   endif

   if F(a)*F_xNS<0 ##verifica se já chegou no resultado
     b=xNS;
   else
     a=xNS;
   endif
endfor
endif
