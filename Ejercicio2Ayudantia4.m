% Datos
fc = 200; % frecuencia de corte en [Hz]
Fs = 1000; % frec. de muestreo en [Hz]
N = 30; % longitud de la respuesta impulso
f1 = 0; % frec. mínima para el cálculo de la respuesta de frec.
f2 = 500; % frec. máxima para el cálculo de la respuesta de frec.
m1 = 1e-6; % límite inferior del gráfico de magnitud
% Diseña el filtro
wn = 2 * fc / Fs; 
b = fir1(N-1, wn,'bandpass',hanning(N));
t = fir1(N-1, wn,'bandpass',hamming(N));
k = fir1(N-1, wn,'bandpass',kaiser(N,10));

h = b'; save 'h.txt' h -ascii
f = [f1 : (f2-f1)/1023 : f2];
H = freqz(b, 1, f, Fs);
n = [1 : N]; subplot 141; stem(n, b); grid; xlabel('n'); title('h(n) ')
subplot 142; semilogy(f, abs(H)); grid
axis([f1 f2 m1 1.1]); xlabel('f[Hz]'); title('Mag(H)Hanning')

h = t'; save 'h.txt' h -ascii
fA = [f1 : (f2-f1)/1023 : f2];
Hx = freqz(t, 1, fA, Fs);
n = [1 : N]; 
subplot 143; semilogy(fA, abs(Hx)); grid
axis([f1 f2 m1 1.1]); xlabel('f[Hz]'); title('Mag(H) Hamming')

h = k'; save 'h.txt' h -ascii
fC = [f1 : (f2-f1)/1023 : f2];
H = freqz(k, 1, fC, Fs);
n = [1 : N]; 
subplot 144; semilogy(fC, abs(H)); grid
axis([f1 f2 m1 1.1]); xlabel('f[Hz]'); title('Mag(H) Kaiser') 