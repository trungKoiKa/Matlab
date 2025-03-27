omega = 0.01 : 0.01 : 5;
H1 = 1 ./ (1j * omega)
H2 = 1 ./ (1 + 1j * omega)

%Biên ?? (magnitude)
mag_H1 = abs(H1)
mag_H2 = abs(H2)
subplot(2,2,1)
plot(omega, mag_H1, 'b', omega, mag_H2, 'r')
title('Bieu do tuyen tinh')
xlabel('\omega (rad/s)')
ylabel('|H(j\omega)|')
legend('|H1(jw)|', '|H2(jw)|')
grid on

% Bi?u ?? Semilog-x
subplot(2,2,2)
semilogx(omega, mag_H1, 'b', omega, mag_H2, 'r')
title('Bieu do Semilog-x')
xlabel('\omega (rad/s)')
ylabel('|H(j\omega)|')
legend('|H1(jw)|', '|H2(jw)|')
grid on

% Bi?u ?? Semilog-y
subplot(2,2,3)
semilogy(omega, mag_H1, 'b', omega, mag_H2, 'r')
title('Bieu do Semilog-y')
xlabel('\omega (rad/s)')
ylabel('|H(j\omega)|')
legend('|H1(jw)|', '|H2(jw)|')
grid on

% Bi?u ?? Log-Log
subplot(2,2,4);
loglog(omega, mag_H1, 'b', omega, mag_H2, 'r')
title('Bieu do Log-Log')
xlabel('\omega (rad/s)')
ylabel('|H(j\omega)|')
legend('|H1(jw)|', '|H2(jw)|')
grid on