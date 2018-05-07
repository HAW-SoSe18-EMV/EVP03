% Theoretische Werte aus Rechnung
f_ber = [    0,   150,   450,   750, 1000,  1250,  1500, 2000]; %kHz
A_ber = [77.95, 83.65, 80.86, 73.52, -inf, 69.08, 70.51, -inf]; %dBuV

% Messwerte
f_gem = [ 150,  450,  750, 1000, 1250]; %kHz
A_gem = [80.4, 77.7, 70.4,   25, 65.9]; %dBuV

stem(f_ber, A_ber-3, 'ko-');
hold on
stem(f_gem, A_gem, 'kx-');
ylim([40;90]);
grid on
ylabel('Spannungspegel [A_{dB\mu V}] = dB\mu V')
xlabel('Frequenz [f] = kHz')
title('Betragsspektrum der periodischen Rechteckimpulsfolge')
legend('berechnet', 'gemessen')