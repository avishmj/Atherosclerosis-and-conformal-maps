% Finds the rational approximation of the inverse conformal map for the intima

function [Z] = inverseprimeratappr(zz)

% For the intima in Figure 2(d)

C1 = chebfun('exp(1i*t)*(2.4656+0.2869*cos(t)-0.2907*sin(t)-0.0445*cos(2*t)-0.0129*sin(2*t)-0.1528*cos(3*t)+0.0131*sin(3*t)-0.0457*cos(4*t)-0.0665*sin(4*t)+0.0186*cos(5*t)-0.0081*sin(5*t))',[0 2*pi],'trig');
C2 = chebfun('exp(1i*t)*(1.7217+0.2858*cos(t)-0.2452*sin(t)+0.0204*cos(2*t)+0.0345*sin(2*t)-0.1876*cos(3*t)+0.0348*sin(3*t)-0.0358*cos(4*t)+0.0329*sin(4*t)-0.0101*cos(5*t)+0.1119*sin(5*t))',[0 2*pi],'trig');
[f,finv]= conformal2(C1,C2,'poly');%, 'plots');

% For the intima in Figure 2(h)

% C2 = chebfun('exp(1i*t)*(0.4569-0.0336*cos(t)+0.0316*sin(t)+0.0011*cos(2*t)+0.0066*sin(2*t)+0.0079*cos(3*t)+0.0001*sin(3*t)+0.0347*cos(4*t)+0.0436*sin(4*t)+0.0242*cos(5*t)-0.0294*sin(5*t))',[0 2*pi],'trig');
% C1 = chebfun('exp(1i*t)*(0.6386-0.0367*cos(t)-0.0210*sin(t)-0.0011*cos(2*t)+0.0163*sin(2*t)-0.0233*cos(3*t)+0.0008*sin(3*t)+0.0227*cos(4*t)+0.0174*sin(4*t)+0.0091*cos(5*t)-0.0216*sin(5*t))',[0 2*pi],'trig');
% [f,finv]= conformal2(C1,C2,'poly');

%******************************************************************

% Finding the barycentric rational approximation for the inverse conformal
% map for the intima of the physical cross section in Figure 2(d)

info = functions(finv);
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
%******************************************************************

% Finding the barycentric rational approximation for the inverse conformal
% map for the intima of the physical cross section in Figure 2(h)

% info = functions(finv);
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
% 
% Z = (Npz.*Dz - Nz.*Dpz)./(Dz.^2);

end