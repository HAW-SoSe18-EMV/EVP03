df_min = [ -4, -4, -2.0, -1.0, 0,  1.0,  2.0,  4,   4];
U_min  = [-20, -6, -1.5, -1.0, 0, -1.0, -1.5, -6, -20];

df_max = [-10, -5, -5.0, -1.0, 0,  1.0,  5.0,  5,  10];
U_max  = [-20, -6,  1.5,  1.5, 0,  1.5,  1.5, -6, -20];

df     = [ -10,   -8,   -6,   -4,   -2,    0,    2,    4,    8,   10];
U      = [58.7, 68.3, 79.1, 86.0, 89.3, 91.0, 90.1, 87.1, 72.2, 62.2];
U_ref  = 91.0;

plot(df_min, U_min, 'k^-.');
hold on
p = plot(df_max, U_max, 'kV-.');
plot(df, U-U_ref, 'r+-');
grid on
ylim([-20;2]);
legend('minimal', 'maximal', 'gemessen', 'Location', 'south');
title('ZF-Filtercharakteristik in Band B nach CISPR 16-1-1');
xlabel('Verstimmung [\Delta f] = kHz')
ylabel('Rel. Eingangspegel [\Delta U_{dB\muV}] = dB');