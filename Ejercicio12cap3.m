%mi rut es 19.891.504-1
A=1 ; B=9 ; C=8 ; D=9 ; E=1 ; F=5 ; G=0 ; H=4 ; I=1;
h = 1 : 1000;
x = 1 : 500000; 
tic; 
[y] = conv(x, h); 
s = toc; 
N = 2 * length(h) * length(x); 
MFps = 1E-6 * N / s; 
fprintf('Millones ops. : %5.0f\n', 1E-6 * N)
fprintf('Tiempo [seg] : %2.2f\n', s)
fprintf('Veloc. MFLOPS : %5.0f\n\n', MFps) 