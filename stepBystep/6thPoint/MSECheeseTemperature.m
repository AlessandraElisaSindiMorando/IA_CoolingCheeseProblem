function MSE = MSECheeseTemperature(eCheeseTemp)
%MSECHEESETEMPERATURE Compute the Mean Square Error (MSE) of the cheese 
% temperature with respect to the desired one
%Input
% eCheeseTemp : error of the cheese temperature with respect to the desired
%one over the simulation horizon
MSE = mean((eCheeseTemp).^2);
end