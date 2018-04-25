function[x, n] = impulso(n0,n1,n2) 
% Genera x(n) = impulso(n-n0); n1<=n<=n2 
n=[n1 : n2]; 
x=[(n - n0) == 0];
%ejemplo:
%>> [x,n] = impulso(0,-5,+5);
%>> stem(n,x);
%(n0=pto. donde está el impulso,n1=limite visual del graficoizquierda,n2=limite visual del grafico derecha)