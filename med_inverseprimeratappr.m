% Finds the rational approximation of the inverse conformal map for the media

function [Z] = med_inverseprimeratappr(zz)

% For the media in Figure 2(d)

% C1 = chebfun('exp(1i*t)*(4.9314+0.1441*cos(t)-0.2625*sin(t)-0.1752*cos(2*t)-0.2901*sin(2*t)+0.1908*cos(3*t)+0.0297*sin(3*t)+0.2856*cos(4*t)-0.2104*sin(4*t)-0.0537*cos(5*t)-0.1570*sin(5*t))',[0 2*pi],'trig');
% C2 = chebfun('exp(1i*t)*(2.4656+0.2869*cos(t)-0.2907*sin(t)-0.0445*cos(2*t)-0.0129*sin(2*t)-0.1528*cos(3*t)+0.0131*sin(3*t)-0.0457*cos(4*t)-0.0665*sin(4*t)+0.0186*cos(5*t)-0.0081*sin(5*t))',[0 2*pi],'trig');
% [f_med,finv_med,rho_med]=conformal2(C1,C2,'poly');

% For the media in Figure 2(h)

C1 = chebfun('exp(1i*t)*(1.0251-0.0229*cos(t)-0.0701*sin(t)+0.0235*cos(2*t)+0.0227*sin(2*t)-0.0341*cos(3*t)+0.0117*sin(3*t)+0.0024*cos(4*t)+0.0360*sin(4*t)+0.0105*cos(5*t)-0.0137*sin(5*t))',[0 2*pi],'trig');
C2 = chebfun('exp(1i*t)*(0.6386-0.0367*cos(t)-0.0210*sin(t)-0.0011*cos(2*t)+0.0163*sin(2*t)-0.0233*cos(3*t)+0.0008*sin(3*t)+0.0227*cos(4*t)+0.0174*sin(4*t)+0.0091*cos(5*t)-0.0216*sin(5*t))',[0 2*pi],'trig');
[f_med,finv_med]= conformal2(C1,C2,'poly');

%******************************************************************

% Finding the barycentric rational approximation, Equation 16 of the paper, for the inverse conformal
% map for the media of the physical cross section in Figure 2(d)

% info = functions(finv_med);
% ws = info.workspace{1};
% zj = ws.z;
% wj = ws.w;
% fj = ws.f;
% 
% m = length(zj);
% 
% Nz = 0;
% Dz = 0;
% Npz = 0;
% Dpz = 0;
% for j = 1:m
%    Nz = Nz + (wj(j)*fj(j)./(zz - zj(j)));
%    Dz = Dz + (wj(j)./(zz - zj(j)));
%    Npz = Npz - (wj(j)*fj(j)./(zz - zj(j)).^2);
%    Dpz = Dpz - (wj(j)./(zz - zj(j)).^2);
% end
% Z = (Npz.*Dz - Nz.*Dpz)./(Dz.^2); % Barycentric rational approximation of the inverse conformal map presented in Equation 16

%*********************************************************************

% Finding the barycentric rational approximation, Equation 16 of the paper, for the inverse conformal
% map for the media of the physical cross section in Figure 2(h)

info = functions(finv_med);
ws = info.workspace{1};
z = ws.zj;
w = ws.wj;
f = ws.fj;

m = length(z);

Nz = 0;
Dz = 0;
Npz = 0;
Dpz = 0;
for j = 1:m
    Nz = Nz + (w(j)*f(j)./(zz - z(j)));
    Dz = Dz + (w(j)./(zz - z(j)));
    Npz = Npz - (w(j)*f(j)./(zz - z(j)).^2);
    Dpz = Dpz - (w(j)./(zz - z(j)).^2);
end
Z = (Npz.*Dz - Nz.*Dpz)./(Dz.^2); % Barycentric rational approximation of the inverse conformal map presented in Equation 16


end