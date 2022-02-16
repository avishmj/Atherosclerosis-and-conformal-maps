tic

t=0:0.01:2*pi;
phi_int = 60.3*pi/180; % Fiber inclination angle for the intima

r = linspace(rho+0.02,1-0.02,11); % Discretizing the width of the reference annulus for the intima

% Finding the (x,y) coordinates of the reference annulus for the intima
x = r'*cos(t); 
y = r'*sin(t);

% Finding the unit fiber vector for each of the points (x,y) on the reference annulus for the intima

dx = gradient(x);
dy = gradient(y);
modv = sqrt(dx.^2+dy.^2);
Tx = dx./modv; 
Ty = dy./modv; 

figure;
idx = 1:10:length(t); % Discretizing the angle
XY_int = inverseprimeratappr(x(:,idx)+1i.*y(:,idx)); % Finding g'(\omega) of Equation 2 
XY_int_inv = finv(x(:,idx)+1i*y(:,idx)); % Applying inverse conformal map to the points on the reference annulus of the intima
% Finding L in Equation 3
n1_int = sqrt(((real(XY_int.*(Tx(:,idx)+1i.*Ty(:,idx)))).^2 + (imag(XY_int.*(Tx(:,idx)+1i.*Ty(:,idx)))).^2)*sqrt(1+(tan(phi_int))^2));
% Plotting the fiber field for the intima in the physical cross section
q = quiver(real(XY_int_inv),imag(XY_int_inv),real(XY_int.*(Tx(:,idx)+1i.*Ty(:,idx)))./n1_int,imag(XY_int.*(Tx(:,idx)+1i.*Ty(:,idx)))./n1_int,'r','linewidth',1);
set(q,'AutoScale','on', 'AutoScaleFactor', 0.4)


hold on


%**************************************************************************


phi_med = 20.61*pi/180; % Fiber inclination angle for the media

r_med = linspace(rho_med+0.02,1-0.02,15); % Discretizing the width of the reference annulus for the media

% Finding the (x,y) coordinates of the reference annulus for the media
x_med = r_med'*cos(t);
y_med = r_med'*sin(t);

% Finding the unit fiber vector for each of the points (x,y) on the reference annulus for the media

dx_med = gradient(x_med);
dy_med = gradient(y_med);
modv_med = sqrt(dx_med.^2+dy_med.^2);
Tx_med = dx_med./modv_med;
Ty_med = dy_med./modv_med;

idx = 1:12:length(t); % Discretizing the angle
XY_med = med_inverseprimeratappr(x_med(:,idx)+1i.*y_med(:,idx)); % Finding g'(\omega) of Equation 2
XY_med_inv = finv_med(x_med(:,idx)+1i*y_med(:,idx)); % Applying inverse conformal map to the points on the reference annulus of the media
% Finding L in Equation 3
n1_med = sqrt(((real(XY_med.*(Tx_med(:,idx)+1i.*Ty_med(:,idx)))).^2 + (imag(XY_med.*(Tx_med(:,idx)+1i.*Ty_med(:,idx)))).^2)*sqrt(1+(tan(phi_med))^2));
% Plotting the fiber field for the media in the physical cross section 
q = quiver(real(XY_med_inv),imag(XY_med_inv),real(XY_med.*(Tx_med(:,idx)+1i.*Ty_med(:,idx)))./n1_med,imag(XY_med.*(Tx_med(:,idx)+1i.*Ty_med(:,idx)))./n1_med,'g','linewidth',1);
set(q,'AutoScale','on', 'AutoScaleFactor', 0.5)
    

hold on


%**************************************************************************

phi_ad = 67*pi/180; % Fiber inclination angle for the adventitia

r_ad = linspace(rho_ad+0.02,1-0.02,15); % Discretizing the width of the reference annulus for the adventitia

% Finding the (x,y) coordinates of the reference annulus for the adventitia
x_ad = r_ad'*cos(t);
y_ad = r_ad'*sin(t);

% Finding the unit fiber vector for each of the points (x,y) on the reference annulus for the adventitia

dx_ad = gradient(x_ad);
dy_ad = gradient(y_ad);
modv_ad = sqrt(dx_ad.^2+dy_ad.^2);
Tx_ad = dx_ad./modv_ad;
Ty_ad = dy_ad./modv_ad;

idx = 1:10:length(t); % Discretizing the angle
XY_ad = ad_inverseprimeratappr(x_ad(:,idx)+1i.*y_ad(:,idx)); % Finding g'(\omega) of Equation 2
XY_ad_inv = finv_ad(x_ad(:,idx)+1i*y_ad(:,idx)); % Applying inverse conformal map to the points on the reference annulus of the adventitia
% Finding L in Equation 3
n1_ad = sqrt(((real(XY_ad.*(Tx_ad(:,idx)+1i.*Ty_ad(:,idx)))).^2 + (imag(XY_ad.*(Tx_ad(:,idx)+1i.*Ty_ad(:,idx)))).^2)*sqrt(1+(tan(phi_ad))^2));
% Plotting the fiber field for the adventitia in the physical cross section
q = quiver(real(XY_ad_inv),imag(XY_ad_inv),real(XY_ad.*(Tx_ad(:,idx)+1i.*Ty_ad(:,idx)))./n1_ad,imag(XY_ad.*(Tx_ad(:,idx)+1i.*Ty_ad(:,idx)))./n1_ad,'b','linewidth',1);
set(q,'AutoScale','on', 'AutoScaleFactor', 0.5)

ax = gca;
ax.FontSize = 50;
hold on

t = linspace(0,2*pi,300);

% Fourier series of the boundaries of the physical cross section in Figure 2(d)

% r_endo = 1.7217+0.2858*cos(t)-0.2452*sin(t)+0.0204*cos(2*t)+0.0345*sin(2*t)-0.1876*cos(3*t)+0.0348*sin(3*t)-0.0358*cos(4*t)+0.0329*sin(4*t)-0.0101*cos(5*t)+0.1119*sin(5*t);
% r_iel = 2.4656+0.2869*cos(t)-0.2907*sin(t)-0.0445*cos(2*t)-0.0129*sin(2*t)-0.1528*cos(3*t)+0.0131*sin(3*t)-0.0457*cos(4*t)-0.0665*sin(4*t)+0.0186*cos(5*t)-0.0081*sin(5*t);
% r_med_ad = (4.9314+0.1441*cos(t)-0.2625*sin(t)-0.1752*cos(2*t)-0.2901*sin(2*t)+0.1908*cos(3*t)+0.0297*sin(3*t)+0.2856*cos(4*t)-0.2104*sin(4*t)-0.0537*cos(5*t)-0.1570*sin(5*t));
% r_ad = 7.9536+0.0443*cos(t)-0.5983*sin(t)-0.0620*cos(2*t)+0.1528*sin(2*t)+0.4119*cos(3*t)-0.1249*sin(3*t)-0.1130*cos(4*t)-0.2179*sin(4*t)+0.0910*cos(5*t)+0.1176*sin(5*t);

%**************************************************************************

% Fourier series of the boundaries of the physical cross section in Figure 2(h)

r_endo = 0.4569-0.0336*cos(t)+0.0316*sin(t)+0.0011*cos(2*t)+0.0066*sin(2*t)+0.0079*cos(3*t)+0.0001*sin(3*t)+0.0347*cos(4*t)+0.0436*sin(4*t)+0.0242*cos(5*t)-0.0294*sin(5*t);
r_iel = 0.6386-0.0367*cos(t)-0.0210*sin(t)-0.0011*cos(2*t)+0.0163*sin(2*t)-0.0233*cos(3*t)+0.0008*sin(3*t)+0.0227*cos(4*t)+0.0174*sin(4*t)+0.0091*cos(5*t)-0.0216*sin(5*t);
r_med_ad = 1.0251-0.0229*cos(t)-0.0701*sin(t)+0.0235*cos(2*t)+0.0227*sin(2*t)-0.0341*cos(3*t)+0.0117*sin(3*t)+0.0024*cos(4*t)+0.0360*sin(4*t)+0.0105*cos(5*t)-0.0137*sin(5*t);
r_ad = 1.6717+0.0316*cos(t)-0.0827*sin(t)+0.0308*cos(2*t)+0.1023*sin(2*t)-0.0749*cos(3*t)-0.0191*sin(3*t)-0.0855*cos(4*t)+0.0721*sin(4*t)-0.0116*cos(5*t)-0.0110*sin(5*t);

% Plotting the boundaries of the physical cross sections

plot(cos(t).*r_endo, sin(t).*r_endo,'k-','LineWidth',2)
plot(cos(t).*r_iel, sin(t).*r_iel,'k-','LineWidth',2)
plot(cos(t).*r_med_ad, sin(t).*r_med_ad,'k-','LineWidth',2)
plot(cos(t).*r_ad, sin(t).*r_ad,'k-','LineWidth',2)

toc
