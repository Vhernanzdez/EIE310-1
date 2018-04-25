[x, n] = escalon(0, -10, 10);
x= 0.4.^n
w = [0 : pi/200 : pi];
X = dtft(x, n, w);
subplot 111; plot(w/pi, abs(X));
xlabel('w / pi [rad/m]');
title('DTFT de x(n)'); grid
