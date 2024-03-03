% Clean up
clc; clear;
% Error over time
e = [0, 0.05, 0.1, 0.15, 0.2, 0.15, 0.1, 0.05, ...
     0,-0.05,-0.1, -0.15, -0.2, -0.15, -0.1, -0.05, ...
     0, 0.05, 0.1, 0.15, 0.2];
% Sample time (error timeseries)
Ts = 0.1;% [s]
% Simulation horizon
H = 2;% [s]
% Time vector (for the timeseries)
time = 0:Ts:H;% [s]
% Generate time series to import in Simulink
timeseries_e = timeseries(e, time);
% Relay parameters
%* ON output 
u_ON = 1;
%* OFF output 
u_OFF = -1;
%* Switch ON/OFF point
eps = 0.1;