% Khai báo vector t?n s?
omega = 0.01 : 0.01 : 5;

% Xác ??nh hàm truy?n
H1 = 1 ./ (1j * omega); % H(jw) = 1 / (jw)
H2 = 1 ./ (1 + 1j * omega); % H(jw) = 1 / (1 + jw)

% Tính biên ?? (Magnitude)
mag_H1 = abs(H1);
mag_H2 = abs(H2);

% Tính pha (Phase) tính b?ng ??
phase_H1 = angle(H1) * (180/pi);
phase_H2 = angle(H2) * (180/pi);

% V? ?? th? Biên ?? & Pha trên cùng m?t hình
figure;

% Bi?u ?? Biên ?? (Magnitude)
subplot(2,1,1)
loglog(omega, mag_H1, 'b', omega, mag_H2, 'r') 
title('Bieu do Bien do')
xlabel('\omega (rad/s)')
ylabel('|H(j\omega)|')
legend('|H1(jw)|', '|H2(jw)|')
grid on

% Bi?u ?? Pha (Phase)
subplot(2,1,2)
semilogx(omega, phase_H1, 'b', omega, phase_H2, 'r') 
title('Bieu do Pha')
xlabel('\omega (rad/s)')
ylabel('Pha (??)')
legend('Pha H1(jw)', 'Pha H2(jw)')
grid on
