% Horizon 24 h = 24*60 min = 24*60*60 s
H = 24 * 60 * 60;% [s]
% Sampling time
Ts = 1;% [s]
% 'Fromworkspace' block in Simulink needs timeseries 
%The '.*' operator is used to multiply each entry of the vector by 60*60
%(indeed it's given in hours, but SI time unit is second s). Transpose
%since we want a row vector, while it's a column vector.
timeseriesHatTheta_c = timeseries(hatTheta_c', time.*(60*60)');
timeseriesHatTheta_a = timeseries(hatTheta_a', time.*(60*60)');