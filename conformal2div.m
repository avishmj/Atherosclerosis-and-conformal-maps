C1 = chebfun('exp(1i*t)*(0.4465 - 0.0324*cos(t)+0.0198*cos(2*t)+0.0085*cos(3*t)+0.0205*cos(4*t)+0.0239*cos(5*t)+0.0522*sin(t)+0.0063*sin(2*t)-0.0170*sin(3*t)+0.0433*sin(4*t)-0.0170*sin(5*t))',[0 2*pi],'trig');
C2 = chebfun('exp(1i*t)*(0.3227-0.0434*cos(t)+0.0608*sin(t)+0.0071*cos(2*t)+0.0051*sin(2*t)+0.0247*cos(3*t)+0.0110*sin(3*t)+0.0347*cos(4*t)+0.0339*sin(4*t)+0.0232*cos(5*t)-0.0369*sin(5*t))',[0 2*pi],'trig');
[f,finv,rho,poles1,poles2]= conformal2(C1,C2,'poly', 'plots');
