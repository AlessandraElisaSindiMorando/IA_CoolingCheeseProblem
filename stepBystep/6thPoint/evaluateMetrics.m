% To remove all from the Workspace
clear; 
% To remove all from the Command Window
clc;
%==========================================
%% **BEFORE** the simulation
% Load all simulation parameters before running the simulation (either with
% the relays or the PID scheme) by uncommenting the line below
load('allSimulationParams.mat')

%% **AFTER** the simulation
% Once the simulation is carried out, the simulation data are stored thanks
% to the 'ToWorkspace' block into the out variable 

% Extract the error of the cheese temperature with respect to the desired
% one over the simulation horizon. To have a row vector, use the reshape
% function (by default is 1x1x(H+1)
eCheeseTemp = reshape(out.eCheeseTemp.Data,[1,H+1]);

% Extract the control input over the simulation horizon
q = reshape(out.q.Data,[1,H+1]);

% Evaluate metrics
%a. Mean Square Error (MSE)
MSE = MSECheeseTemperature(eCheeseTemp);
%b. Maximum Absolute Error (MAE)
MAE = MAECheeseTemperature(eCheeseTemp);
%c. Energy consumption
E = EnergyConsumption(q);
%d. Variance of the control
varQ = VarianceControl(q);
% Print values
disp('==========================================');
fprintf('MSE = %s \nMAE %s \nE = %s \nvarQ = %s\n',...
    MSE, MAE, E, varQ);
disp('==========================================');