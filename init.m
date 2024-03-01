% To remove all from the Workspace
clear; 
% To remove all from the Command Window
clc;
% Now we can start...
%==========================================

% mass of the cheese 
m_c = 1.3;% [Kg]
c_c = 2150;% [J/(Kg*K)] 
% Average thermal capacity of the mass of the cheese
C_c = c_c*m_c;% [J/K]

% mass of the air in the box
m_f = 1.3;% [Kg]
c_f = 1000;% [J/(Kg*K)] 
% Average thermal capacity of the mass of the air in the box
C_f = c_f*m_f;

% Average thermal transmittance per unit surface cheese/air
barK_fc = 100; % [W/(m^2*K)]
% Surface of the cheese
s_c = 0.12;% [m^2]
% Overall thermal transmittance between the air in the box and the cheese
k_fc = barK_fc*sc; % [W/K]

% Average thermal transmittances per unit surface air/external environment
barK_af = 0.2;% [W/(m^2*K)]
% surface of the box
s_f = 6;%[m^2]
% Overall thermal transmittance between the air in the box and the external
%environment
k_af = barK_af*s_f;

