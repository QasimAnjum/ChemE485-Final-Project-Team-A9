function [dT] = Temperature(D,Fb,Fc,Fc0,Fprop,v0,v1,dz )

%Constants 
A = 3.14*D.^2/4; % m^2
U = 60; %W/m^2*K
alpha = 4/D; %m^2
Tr = 653; %K
Ta = 273; %K
rho = 1600; %kg/m^3
HX1 = -103892; %J/mol
HX2 = -98550; %J/mol 
k1 = 35000*exp(-24.90/(0.0019858775*653));
k2 = 290000000*exp(-35.08/(0.0019858775*653));
Mb = 78.11; % kg/kmol
Mprop = 42.08; % kg/kmol
Mc = 120.2; %kg/kmol



conv_1 = ((Fc0)-(Fc))/(Fc0);
Cp1 = (conv_1*Fc0)/((v0/1000)*60);
Cb = Fb/((v1/1000)*60);
Cc = Fb*conv_1;
Cp2 = Fprop/((v1/1000)*60);

%Rate Laws
r1 = k1*Cp1*Cb;
r2 = k2*Cp2*Cc;

sum_HX = (-HX1*r1)+(-HX2*r2);

sum_Fcp = ((Fb/(60*60))*Mb*(0.019*Tr)+(48.3))+((Fprop/(60*60))*Mprop*(0.1043*Tr)+(48.3))+((Fc/(60*60))*Mc*(0.315*Tr)+(102.5));

dT = ((((A*U*alpha*(Ta-Tr))+(A*rho*(sum_HX)))/(sum_Fcp))*dz)+Tr;


end

