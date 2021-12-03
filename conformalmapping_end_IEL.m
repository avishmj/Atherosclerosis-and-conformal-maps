

% CONFORMAL MAPPING FOR THE INTIMA.  f: forwrad conformal map, finv: inverse
% conformal map; rho: conformal modulus


% Conformal map from intima in Figure 2(d) to Figure 2(a)

% C1 = chebfun('exp(1i*t)*(2.4656+0.2869*cos(t)-0.2907*sin(t)-0.0445*cos(2*t)-0.0129*sin(2*t)-0.1528*cos(3*t)+0.0131*sin(3*t)-0.0457*cos(4*t)-0.0665*sin(4*t)+0.0186*cos(5*t)-0.0081*sin(5*t))',[0 2*pi],'trig');
% C2 = chebfun('exp(1i*t)*(1.7217+0.2858*cos(t)-0.2452*sin(t)+0.0204*cos(2*t)+0.0345*sin(2*t)-0.1876*cos(3*t)+0.0348*sin(3*t)-0.0358*cos(4*t)+0.0329*sin(4*t)-0.0101*cos(5*t)+0.1119*sin(5*t))',[0 2*pi],'trig');
% [f,finv,rho,poles1,poles2]= conformal2(C1,C2,'poly', 'plots'); 

% Conformal map from intima in Figure 2(h) to Figure 2(e)

C2 = chebfun('exp(1i*t)*(0.4569-0.0336*cos(t)+0.0316*sin(t)+0.0011*cos(2*t)+0.0066*sin(2*t)+0.0079*cos(3*t)+0.0001*sin(3*t)+0.0347*cos(4*t)+0.0436*sin(4*t)+0.0242*cos(5*t)-0.0294*sin(5*t))',[0 2*pi],'trig');
C1 = chebfun('exp(1i*t)*(0.6386-0.0367*cos(t)-0.0210*sin(t)-0.0011*cos(2*t)+0.0163*sin(2*t)-0.0233*cos(3*t)+0.0008*sin(3*t)+0.0227*cos(4*t)+0.0174*sin(4*t)+0.0091*cos(5*t)-0.0216*sin(5*t))',[0 2*pi],'trig');
[f,finv,rho,poles1,poles2]= conformal2(C1,C2,'poly', 'plots');

%*******************************************************************************************


% CONFORMAL MAPPING FOR THE MEDIA. f_med: forwrad conformal map, finv_med: inverse
% conformal map; rho_med: conformal modulus


% Conformal map from media in Figure 2(d) to Figure 2(b)

% C1 = chebfun('exp(1i*t)*(4.9314+0.1441*cos(t)-0.2625*sin(t)-0.1752*cos(2*t)-0.2901*sin(2*t)+0.1908*cos(3*t)+0.0297*sin(3*t)+0.2856*cos(4*t)-0.2104*sin(4*t)-0.0537*cos(5*t)-0.1570*sin(5*t))',[0 2*pi],'trig');
% C2 = chebfun('exp(1i*t)*(2.4656+0.2869*cos(t)-0.2907*sin(t)-0.0445*cos(2*t)-0.0129*sin(2*t)-0.1528*cos(3*t)+0.0131*sin(3*t)-0.0457*cos(4*t)-0.0665*sin(4*t)+0.0186*cos(5*t)-0.0081*sin(5*t))',[0 2*pi],'trig');
% [f_med,finv_med,rho_med,poles1_med,poles2_med]=conformal2(C1,C2,'poly', 'plots');

% Conformal map from media in Figure 2(h) to Figure 2(f)

C1 = chebfun('exp(1i*t)*(1.0251-0.0229*cos(t)-0.0701*sin(t)+0.0235*cos(2*t)+0.0227*sin(2*t)-0.0341*cos(3*t)+0.0117*sin(3*t)+0.0024*cos(4*t)+0.0360*sin(4*t)+0.0105*cos(5*t)-0.0137*sin(5*t))',[0 2*pi],'trig');
C2 = chebfun('exp(1i*t)*(0.6386-0.0367*cos(t)-0.0210*sin(t)-0.0011*cos(2*t)+0.0163*sin(2*t)-0.0233*cos(3*t)+0.0008*sin(3*t)+0.0227*cos(4*t)+0.0174*sin(4*t)+0.0091*cos(5*t)-0.0216*sin(5*t))',[0 2*pi],'trig');
[f_med,finv_med,rho_med,poles1_med,poles2_med]= conformal2(C1,C2,'poly', 'plots');

%*******************************************************************************************

% CONFORMAL MAPPING FOR THE ADVENTITIA. f_ad: forwrad conformal map, finv_ad: inverse
% conformal map; rho_ad: conformal modulus

% Conformal map from adventitia in Figure 2(d) to Figure 2(c)

% C1 = chebfun('exp(1i*t)*(7.9536+0.0443*cos(t)-0.5983*sin(t)-0.0620*cos(2*t)+0.1528*sin(2*t)+0.4119*cos(3*t)-0.1249*sin(3*t)-0.1130*cos(4*t)-0.2179*sin(4*t)+0.0910*cos(5*t)+0.1176*sin(5*t))',[0 2*pi],'trig');
% C2 = chebfun('exp(1i*t)*(4.9314+0.1441*cos(t)-0.2625*sin(t)-0.1752*cos(2*t)-0.2901*sin(2*t)+0.1908*cos(3*t)+0.0297*sin(3*t)+0.2856*cos(4*t)-0.2104*sin(4*t)-0.0537*cos(5*t)-0.1570*sin(5*t))',[0 2*pi],'trig');
% [f_ad,finv_ad,rho_ad,poles1_ad,poles2_ad] = conformal2(C1,C2,'poly', 'plots');

% Conformal map from adventitia in Figure 2(h) to Figure 2(g)

C1 = chebfun('exp(1i*t)*(1.6717+0.0316*cos(t)-0.0827*sin(t)+0.0308*cos(2*t)+0.1023*sin(2*t)-0.0749*cos(3*t)-0.0191*sin(3*t)-0.0855*cos(4*t)+0.0721*sin(4*t)-0.0116*cos(5*t)-0.0110*sin(5*t))',[0 2*pi],'trig');
C2 = chebfun('exp(1i*t)*(1.0251-0.0229*cos(t)-0.0701*sin(t)+0.0235*cos(2*t)+0.0227*sin(2*t)-0.0341*cos(3*t)+0.0117*sin(3*t)+0.0024*cos(4*t)+0.0360*sin(4*t)+0.0105*cos(5*t)-0.0137*sin(5*t))',[0 2*pi],'trig');
[f_ad,finv_ad,rho_ad,poles1_ad,poles2_ad]= conformal2(C1,C2,'poly', 'plots');



