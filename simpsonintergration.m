function simps = simpsons(f,a,b,n) ##inserir os parametros da funcao chamando ela pelo comando
  
  if numel(f)>1
      n=numel(f)-1; h=(b-a)/n;
      simps = h/3*(f(1)+2*sum(f(3:2:end-2))+4*sum(f(2:2:end))+f(end));
  else
     h=(b-a)/n; xi=a:h:b;
     simps = h/3*(f(xi(1))+2*sum(f(xi(3:2:end-2)))+4*sum(f(xi(2:2:end)))+f(xi(end)));

end
