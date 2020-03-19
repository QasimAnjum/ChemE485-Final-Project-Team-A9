
clear all;
close all;
clc;

P =zeros(1,6);
Pressure = P';
counter = 0;
for k = 1:.1:5.4
    counter = counter + 1;
    Length = k;
    %Press_2 = -(((G/A_c)/(Density*p_d))*((1-phi)/phi^3)*(((150*(1-phi)*mu)/p_d)+(1.75*G/A_c)))*i/10000+40
Pressure(counter,1) = Pres(Length);

Z(counter,1) = k;
    
end


plot(Z,Pressure)
xlabel('Length along reactor [m]')
ylabel('Pressure')
title('Pressure vs. Length along reactor')
%plotmatrix(Reactor_length,Press_2)