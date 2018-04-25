[x, n] = impulso(0, -10, 10);
w = [0 : pi/200 : pi];
[X] = dtft(x, n, w);
subplot 221; plot(w/pi, abs(X));
xlabel('w / pi [rad/m]');
title('DTF de impulso'); grid