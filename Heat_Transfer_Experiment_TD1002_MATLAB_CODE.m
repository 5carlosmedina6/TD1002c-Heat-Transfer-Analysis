%Heat Transfer Experiment TD1002 MATLAB CODE
%Carlos I Medina Rodriguez

%Data

k = 125; % w/mK
p = 31.4; %mm %Perimeter
A = 78.5; %mm^2 %Area
%D = 10; %mm
L = 300; %mm
Ta = 71; %(Temperature Ambient F)

%(Tx - Ta)/T1 - Ta = cosh[m(L-x)] % Theory

%Tx = (T1 - Ta)*(cosh*(m*(L-x)))/(cosh*(m*L)); % Analytical Equation

%Power 2.0W

D = 10; %mm
Ta_k = 294.8167; %K
Tmean = (305.35 + 301.85 + 299.35 + 297.85 + 296.75 + 296.05 + 295.55)/7; %Average in K
hc = 1.32*((Tmean - Ta_k)^0.25 / (D));
hr = (5.387*10^-8)*((Tmean^4)-(Ta_k^4))/((Tmean)-(Ta_k^4));
T1 = 305.35; %K
h = hc + hr;
m = sqrt((h*p)/(k*A));


x = 0:50:300; %Position
TheoricalTemp = (T1 - Ta_k)*(cosh(m*(L-x)))/(cosh(m*L)) + Ta_k;
TempExp = [305.35, 301.85, 299.35, 297.85, 296.75, 296.05, 295.55]; % TempExp in K (Power 2.0W)

table(x',TheoricalTemp',TempExp','VariableNames',{'Position (mm)','Theorical Temp (K) Power 2.0W','Temperature Experimental (K) Power 2.0W'})

figure(1)
plot(x,TheoricalTemp,Linewidth=1.5,Color="b",Marker="square",LineStyle="-")
hold on
plot(x,TempExp,LineWidth=1.5,Color="k",Marker="diamond",LineStyle="--")
title('Surface Temperatures Along the Bar at 2.0 W','FontSize',15)
legend('TheoricalTemp','TempExp')
xlabel('Position (mm)','FontSize',12)
ylabel('Temperature (K)','FontSize',12)
hold off

%Power 4.0W

Tmean = (313.35 + 307.25 + 302.95 + 300.55 + 298.75 + 297.75 + 297.05)/7; %Average in K
hc = 1.32*((Tmean - Ta_k)^0.25 / (D));
hr = (5.387*10^-8)*((Tmean^4)-(Ta_k^4))/((Tmean)-(Ta_k^4));
T1 = 313.35; %K
h = hc + hr;
m = sqrt((h*p)/(k*A));

x = 0:50:300; %Position
TheoricalTemp0 = (T1 - Ta_k)*(cosh(m*(L-x)))/(cosh(m*L)) + Ta_k;
TempExp0 = [313.35, 307.25, 302.95, 300.55, 298.75, 297.75, 297.05]; % TempExp in K (Power 4.0W)

table(x',TheoricalTemp0',TempExp0','VariableNames',{'Position (mm)','Theorical Temp (K) Power 4.0W','Temperature Experimental (K) Power 4.0W'})

figure(2)
plot(x,TheoricalTemp0,Linewidth=1.5,Color="b",Marker="square",LineStyle="-")
hold on
plot(x,TempExp0,LineWidth=1.5,Color="k",Marker="diamond",LineStyle="--")
title('Surface Temperatures Along the Bar at 4.0 W','FontSize',15)
legend('TheoricalTemp','TempExp')
xlabel('Position (mm)','FontSize',12)
ylabel('Temperature (K)','FontSize',12)
hold off

%Power 6.0W

Tmean = (323.55 + 314.35 + 307.85 + 304.25 + 301.65 + 300.05 + 299.05)/7; %Average in K
hc = 1.32*((Tmean - Ta_k)^0.25 / (D));
hr = (5.387*10^-8)*((Tmean^4)-(Ta_k^4))/((Tmean)-(Ta_k^4));
T1 = 323.55; %K
h = hc + hr;
m = sqrt((h*p)/(k*A));

x = 0:50:300; %Position
TheoricalTemp1 = (T1 - Ta_k)*(cosh(m*(L-x)))/(cosh(m*L)) + Ta_k;
TempExp1 = [323.55, 314.35, 307.85, 304.25, 301.65, 300.05, 299.05]; % TempExp in K (Power 6.0W)

table(x',TheoricalTemp1',TempExp1','VariableNames',{'Position (mm)','Theorical Temp (K) Power 6.0W','Temperature Experimental (K) Power 6.0W'})

figure(3)
plot(x,TheoricalTemp1,Linewidth=1.5,Color="b",Marker="square",LineStyle="-")
hold on
plot(x,TempExp1,LineWidth=1.5,Color="k",Marker="diamond",LineStyle="--")
title('Surface Temperatures Along the Bar at 6.0 W','FontSize',15)
legend('TheoricalTemp','TempExp')
xlabel('Position (mm)','FontSize',12)
ylabel('Temperature (K)','FontSize',12)
hold off

%Power 8.0W

Tmean = (334.15 + 321.95 + 313.45 + 308.65 + 305.05 + 302.95 + 301.65)/7; %Average in K
hc = 1.32*((Tmean - Ta_k)^0.25 / (D));
hr = (5.387*10^-8)*((Tmean^4)-(Ta_k^4))/((Tmean)-(Ta_k^4));
T1 = 334.15; %K
h = hc + hr;
m = sqrt((h*p)/(k*A));

x = 0:50:300; %Position
TheoricalTemp2 = (T1 - Ta_k)*(cosh(m*(L-x)))/(cosh(m*L)) + Ta_k;
TempExp2 = [334.15, 321.95, 313.45, 308.65, 305.05, 302.95, 301.65]; % TempExp in K (Power 8.0W)

table(x',TheoricalTemp2',TempExp2','VariableNames',{'Position (mm)','Theorical Temp (K) Power 8.0W','Temperature Experimental (K) Power 8.0W'})

figure(4)
plot(x,TheoricalTemp2,Linewidth=1.5,Color="b",Marker="square",LineStyle="-")
hold on
plot(x,TempExp2,LineWidth=1.5,Color="k",Marker="diamond",LineStyle="--")
title('Surface Temperatures Along the Bar at 8.0 W','FontSize',15)
legend('TheoricalTemp','TempExp')
xlabel('Position (mm)','FontSize',12)
ylabel('Temperature (K)','FontSize',12)
hold off

%Power 10.0W

Tmean = (343.15 + 328.25 + 317.75 + 311.95 + 307.55 + 305.05 + 303.35)/7; %Average in K
hc = 1.32*((Tmean - Ta_k)^0.25 / (D));
hr = (5.387*10^-8)*((Tmean^4)-(Ta_k^4))/((Tmean)-(Ta_k^4));
T1 = 343.15; %K
h = hc + hr;
m = sqrt((h*p)/(k*A));

x = 0:50:300; %Position
TheoricalTemp3 = (T1 - Ta_k)*(cosh(m*(L-x)))/(cosh(m*L)) + Ta_k;
TempExp3 = [343.15, 328.25, 317.75, 311.95, 307.55, 305.05, 303.35]; % TempExp in K (Power 10.0W)

table(x',TheoricalTemp3',TempExp3','VariableNames',{'Position (mm)','Theorical Temp (K) Power 10.0W','Temperature Experimental (K) Power 10.0W'})

figure(5)
plot(x,TheoricalTemp3,Linewidth=1.5,Color="b",Marker="square",LineStyle="-")
hold on
plot(x,TempExp3,LineWidth=1.5,Color="k",Marker="diamond",LineStyle="--")
title('Surface Temperatures Along the Bar at 10.0 W','FontSize',15)
legend('TheoricalTemp','TempExp')
xlabel('Position (mm)','FontSize',12)
ylabel('Temperature (K)','FontSize',12)
hold off