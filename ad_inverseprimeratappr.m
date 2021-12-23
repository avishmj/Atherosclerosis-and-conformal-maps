% Finds the rational approximation of the inverse conformal map for the adventitia

function [Z] = ad_inverseprimeratappr(zz)

% For the adventitia in Figure 2(d)

C1 = chebfun('exp(1i*t)*(7.9536+0.0443*cos(t)-0.5983*sin(t)-0.0620*cos(2*t)+0.1528*sin(2*t)+0.4119*cos(3*t)-0.1249*sin(3*t)-0.1130*cos(4*t)-0.2179*sin(4*t)+0.0910*cos(5*t)+0.1176*sin(5*t))',[0 2*pi],'trig');
C2 = chebfun('exp(1i*t)*(4.9314+0.1441*cos(t)-0.2625*sin(t)-0.1752*cos(2*t)-0.2901*sin(2*t)+0.1908*cos(3*t)+0.0297*sin(3*t)+0.2856*cos(4*t)-0.2104*sin(4*t)-0.0537*cos(5*t)-0.1570*sin(5*t))',[0 2*pi],'trig');
[f_ad,finv_ad] = conformal2(C1,C2,'poly');

% For the adventitia in Figure 2(h)

% C1 = chebfun('exp(1i*t)*(1.6717+0.0316*cos(t)-0.0827*sin(t)+0.0308*cos(2*t)+0.1023*sin(2*t)-0.0749*cos(3*t)-0.0191*sin(3*t)-0.0855*cos(4*t)+0.0721*sin(4*t)-0.0116*cos(5*t)-0.0110*sin(5*t))',[0 2*pi],'trig');
% C2 = chebfun('exp(1i*t)*(1.0251-0.0229*cos(t)-0.0701*sin(t)+0.0235*cos(2*t)+0.0227*sin(2*t)-0.0341*cos(3*t)+0.0117*sin(3*t)+0.0024*cos(4*t)+0.0360*sin(4*t)+0.0105*cos(5*t)-0.0137*sin(5*t))',[0 2*pi],'trig');
% [f_ad,finv_ad]= conformal2(C1,C2,'poly');

%******************************************************************

% Finding the barycentric rational approximation for the inverse conformal
% map for the adventitia of the physical cross section in Figure 2(d)

info = functions(finv_ad);
ws = info.workspace{1};
zj = ws.z;
wj = ws.w;
fj = ws.f;

m = length(zj);

Nz = 0;
Dz = 0;
Npz = 0;
Dpz = 0;
for j = 1:m
   Nz = Nz + (wj(j)*fj(j)./(zz - zj(j)));
   Dz = Dz + (wj(j)./(zz - zj(j)));
   Npz = Npz - (wj(j)*fj(j)./(zz - zj(j)).^2);
   Dpz = Dpz - (wj(j)./(zz - zj(j)).^2);
end
Z = (Npz.*Dz - Nz.*Dpz)./(Dz.^2);

%*******************************************************************

% Finding the barycentric rational approximation for the inverse conformal
% map for the adventitia of the physical cross section in Figure 2(h)

% info = functions(finv_ad);
% ws = info.workspace{1};
% z = ws.zj;
% w = ws.wj;
% f = ws.fj;
% 
% m = length(z);
% 
% Nz = 0;
% Dz = 0;
% Npz = 0;
% Dpz = 0;
% for j = 1:m
%     Nz = Nz + (w(j)*f(j)./(zz - z(j)));
%     Dz = Dz + (w(j)./(zz - z(j)));
%     Npz = Npz - (w(j)*f(j)./(zz - z(j)).^2);
%     Dpz = Dpz - (w(j)./(zz - z(j)).^2);
% end
% Z = (Npz.*Dz - Nz.*Dpz)./(Dz.^2);

end