% Clean up
clc; clear;
% Error over time
e = [0, 0.5, 1, 1.5, 2, 2.5, ...
     2, 1.5, 1, 0.5, 0, -0.5, -1, -1.5, -2, -2.5,...
    -2,-1.5,-1,-0.5, 0, 0.5, 1, 1.5, 2, 2.5, 3, 3.5, 4, 4.5, 5];
% Sample time (error timeseries)
Ts = 0.1;% [s]
% Simulation horizon
H = 3;% [s]
% Time vector (for the timeseries)
time = 0:Ts:H;% [s]
% Generate time series to import in Simulink
timeseries_e = timeseries(e, time);
% Relays parameters
eps1 = 2;
eps2 = -2;
q_star = 10;