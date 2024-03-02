function E = EnergyConsumption(q)
%ENERGYCONSUMPTION Compute the energy consumption over the simulation
%horizon
%Input
% q : control over the simulation horizon

% Horizon 24 h = 24*60 min = 24*60*60 s
H = 24 * 60 * 60;% [s]
% Energy Consumption per second
EperSecond = sum(abs(q))/H;% [W/s]
% Energy Consumption per hour
E = EperSecond * 60 * 60;% [W/h]
end

