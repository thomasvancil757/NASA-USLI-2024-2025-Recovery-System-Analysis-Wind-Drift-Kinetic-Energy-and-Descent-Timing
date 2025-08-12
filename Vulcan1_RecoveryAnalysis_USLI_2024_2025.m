clc, clear
% Constants
g   = 32.174;          % ft/s^2
rho = 0.0023769;       % slug/ft^3 (sea-level)

% Masses (lb)
m_main_lb   = 42.65;   % under main
m_drogue_lb = 48.61;   % at drogue/burnout

% Parachute params
Cd_main   = 2.2;    Area_main   = 148.9;  % ft^2
Cd_drogue = 1.16;   Area_drogue = 3.141;  % ft^2

% Terminal velocities
m_slug_drogue = m_drogue_lb / g;
m_slug_main   = m_main_lb   / g;

V_Terminal_Drogue = sqrt((2*m_slug_drogue*g)/(rho*Area_drogue*Cd_drogue));
V_Terminal_Main   = sqrt((2*m_slug_main  *g)/(rho*Area_main  *Cd_main));

% Deployment altitudes (ft)
h_drogue = 4583;
h_main   = 550;

% Descent times 
t_drogue = (h_drogue - h_main)/V_Terminal_Drogue;
t_main   = h_main / V_Terminal_Main;
tf       = t_drogue + t_main;

% Wind drift (mph -> ft/s) 
wind_mph = [0 5 10 15 20];
wind_ftps = wind_mph * 1.46667;

for i = 1:numel(wind_ftps)
    drift = wind_ftps(i) * tf;
    fprintf('Wind %.0f mph (%.2f ft/s): drift = %.2f ft\n', wind_mph(i), wind_ftps(i), drift);
end

% Landing KE per section (ft·lbf)
V_impact = V_Terminal_Main;
Mass_NoseconePayloadBay   = 15.48; 
Mass_AvionicsParachuteBays = 18.99;
Mass_FinCanAssembly        = 14.14;

KE_Nosecone_PayloadBay     = 0.5*(Mass_NoseconePayloadBay/g)   * V_impact^2;
KE_Avionics_ParachuteBays  = 0.5*(Mass_AvionicsParachuteBays/g)* V_impact^2;
KE_FinCanAssembly          = 0.5*(Mass_FinCanAssembly/g)       * V_impact^2;

% Report 
fprintf('V_terminal (drogue): %.2f ft/s\n', V_Terminal_Drogue);
fprintf('V_terminal (main)  : %.2f ft/s\n', V_Terminal_Main);
fprintf('Time under drogue  : %.2f s\n', t_drogue);
fprintf('Total descent time : %.2f s\n', tf);
fprintf('KE Nose/Payload    : %.2f ft·lbf\n', KE_Nosecone_PayloadBay);
fprintf('KE Avionics/Chutes : %.2f ft·lbf\n', KE_Avionics_ParachuteBays);
fprintf('KE FinCan          : %.2f ft·lbf\n', KE_FinCanAssembly);
