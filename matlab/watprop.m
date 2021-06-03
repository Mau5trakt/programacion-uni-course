% Primer columna Temp, Segunda Densidad, Tercera Viscosidad la cual debe
% dividirse entre 1000 para q de las unidades correctas

wp=[0	999.9	1.792;
    5	1000	1.519;
    10	999.7	1.308;
    20	998.2	1.005;
    30  995.7   0.785;
    40	992.2	0.656;
    50  988.1   0.522;
    60	983.2	0.469;
    70  977.7   0.418;
    80	971.8	0.357;
    90  965.2   0.341;
    100	958.4	0.284];

T = wp (:,1);
d = wp (:,2);
u = wp (:,3);

% plot (T, d, T, u) % FAIL

yyaxis left 
plot (T,d)

yyaxis right 
plot (T,u)



