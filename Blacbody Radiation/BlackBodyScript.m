%% Constants
c = 3e8;
h = 6.626e-34;
kb = 1.38e-23;
%% First test
lnP1 = real(log(irrY1.*(irrX1.^5)./c));
invLambda1 = c./irrX1;
fit1 = fitlm(invLambda1,lnP1);
slopeP1 = fit1.Coefficients{2,1}
slopeP1er = fit1.Coefficients{2,2};
T = -(h*c)/(kb*slopeP1)
figure(1)
plot(invLambda1,lnP1,'.')
hold on
plot(invLambda1,fit1.Fitted,'r')
legend('Data collected','Fit line')
title('Modified Planks Formula Plotted against Frequency of Light for a Shunt Voltage of 23.89 mV')
xlabel('Frequency [Hz]')
ylabel('y(f,T)')
%% First Short Test
lnP1Short = lnP1(483:1917);
iLShort1 = invLambda1(483:1917);
fit1Short = fitlm(iLShort1,lnP1Short);
slope2P1 = fit1Short.Coefficients{2,1}
slope2P1er = fit1Short.Coefficients{2,2};
T = -(h*c)/(kb*slope2P1)

%% Second Test
lnP2 = real(log(irrY2.*(irrX2.^5)));
invLambda2 = c./irrX2;
fit2 = fitlm(invLambda2,lnP2);
slopeP2 = fit2.Coefficients{2,1}
slopeP2er = fit2.Coefficients{2,2};
T = -(h*c)/(kb*slopeP2)
figure(2)
plot(invLambda2,lnP2,'.')
hold on
plot(invLambda2,fit2.Fitted,'r')
legend('Data collected','Fit line')
title('Modified Planks Formula Plotted Against Frequency for a Shunt Voltage of 24.48 mV ')
xlabel('Frequency [Hz]')
ylabel('y(f,T)')
%% Second Short Test
lnP2Short = lnP2(375:1881);