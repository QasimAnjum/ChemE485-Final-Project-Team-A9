function [Press] = Pres(Length)

phi = 0.5; 
Diameter = .02134; 
p_d = .003; %meter
Density = 1600; %kg/m^3
V_f = .202; %m^3/s
A_c = 500*(3.14*(Diameter/2)^2); %m^2
mu = .000009898;
gc = 9.81; %m/s^2
F_ben = 0.0297278;
F_pro = 0.00139722;
F_prop = 0.0286111;
F_cu = 0.18;
M_b = 78.11;
M_pro = 44.1;
M_prop = 42.08;
G = (F_ben*M_b)+(F_pro*M_pro)+(F_prop*M_prop);




Press = -(((G/A_c)/(Density*p_d))*((1-phi)/phi^3)*(((150*(1-phi)*mu)/p_d)+(1.75*G/A_c)))*Length/10000+40;

end

