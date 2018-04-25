function[x, n] = escalon(n0,n1,n2) 
% Genera x(n) = escalon(n-n0)discreto; n1<=n<=n2 
n=[n1 : n2]; 
x=[(n - n0) >= 0];
%ejemplo:
%>> [x,n] = escalon(0,-5,+5);
%>> stem(n,x)   
%(n0=pto. desde donde comienza el escalon,n1=limite visual del graficoizquierda,n2=limite visual del grafico derecha)