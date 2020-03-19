
D = .021; 
Fb = 61.1282;
Fc = 103.054;
Fc0 = 3.27199;
Fprop = 9.74455;
v0 = 5612.9; %l/min
v1 = 2585.66; %l/min
dz = 5.4; %m


[dT] = Temperature(D,Fb,Fc,Fc0,Fprop,v0,v1,dz)

y = zeros(1,6);
for k = 1:6 
    y(1,k) = Temperature(D,Fb,Fc,Fc0,Fprop,v0,v1,k);
end  
 
x = [ 1 2 3 4 5 6];


plot(x,y)
                                                                        
xlabel('Length along reactor [m]')
ylim([250,750])
ylabel('Temperature')
title('Temperature vs. Length along reactor')