function MAE = MAECheeseTemperature(eCheeseTemp)
%MAECHEESETEMPERATURE Compute the Maximum Absolute Error (MAE) of the cheese 
% temperature with respect to the desired one
%Input
% eCheeseTemp : error of the cheese temperature with respect to the desired
%one over the simulation horizon
MAE = max(abs(eCheeseTemp));
end