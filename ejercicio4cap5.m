%mi rut es 19.891.504-1
A=1 ; B=9 ; C=8 ; D=9 ; E=1 ; F=5 ; G=0 ; H=4 ; I=1;
n = -20 : 20; n(21) = 0.001;
h = sin((pi/2)*n) ./ (pi*n);
subplot 221; stem(n, h); grid; title('h(n) limitada a 41 muestras');