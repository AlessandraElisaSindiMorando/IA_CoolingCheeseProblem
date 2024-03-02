function varQ = VarianceControl(q)
%VARIANCECONTROL Compute the variance of the control input over the
%simulation horizon
%Input
% q : control over the simulation horizon
varQ = var(q);
end