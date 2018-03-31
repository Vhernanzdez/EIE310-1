clear all;
clc; 
%mi rut es: 19.891.504-
a=1;b=9;c=8;d=9;e=1;f=5;g=0;h=4;i=1;
B=((a+b)*c)
r=((i+e)*h)/((b+c+e)*10)
R=((i+e)*(a+c))/(b)
%funcion Exponencial decreciente 
n= 0 : 0.1 :4 ; x = B * r .^ n;
subplot 331; stem(n, x);
xlabel('n'); title('S.Exponencial decreciente'); grid
m= 0 : 1 : 20; y = B * R .^ m;
%funcion Exponecial creciente
subplot 332; stem(m, y);
xlabel('m'), title('S. Exponencial creciente'); grid
%funcion Exponecial Completa
w=[-20 : 1 : 20]; q= -((b+g+1)/60) + (((a*h*c)+1)/60)*j; z=exp(q * w);

subplot 333; stem(w, real(z)); title('Parte real'); xlabel('w')
subplot 334; stem(w, imag(z)); title('Parte  imag'); xlabel('w')
subplot 335; stem(w, abs(z)); title('Magnitud'); xlabel('w')
subplot 336; stem(w, (180/pi)*angle(z)); title('Fase [º]'); xlabel('w')

%funcion sinusoidales
j = [0 :0.5: 30];
u= 3 * cos( 2* pi * ((2+d+f)/90) * j + pi/3);
subplot 337; stem(j, u);
xlabel('j'); title('S. sinusoidal'); grid
o=[-b:b];
p=[(o-a)==0];
subplot 338; stem(o, p); title('S. Impulso') ; xlabel('o'); grid

%funcion Escalon
k=[-f : f];
K=[(k-a)>=0];
subplot 339; stem( k, K); title('S. Escalon'); xlabel('k'); grid


