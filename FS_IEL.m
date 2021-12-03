% Endothelium in Figure 2(d)

%X = [0 0.9 1.6 1.9 1.7 1.7 0.8 -0.3 -1.1 -1.4 -1.6 -0.6];
%Y = [1.5 1.5 1.2 0.5 -0.4 -1.3 -2.1 -1.7 -1.3 -0.7 0.3 0.9];

% Endothelium in Figure 2(h)

%X = [-0.3 -0.4 -0.4 -0.4 -0.5 -0.4 -0.2 0 0.2 0.3 0.4 0.5 0.4 0.3 0.2 -0.2 0];
%Y = [0.4 0.3 0.2 0.1 0 -0.3 -0.3 -0.5 -0.3 -0.2 -0.1 0 0.2 0.3 0.4 0.5 0.5];



%******************************************************************************************%

% IEL (Intima-Media interface) in Figure 2(d)

%X = [0.1 2 2.6 2.6 1.7 -0.3 -0.9 -1.7 -2 -2.2 -2.1 -1.1];
%Y = [2.2 1.6 -0.4 -1.1 -2.5 -2.7 -2.4 -1.7 -1.1 -0.4 0.7 1.6];

% IEL (Intima-Media interface) in Figure 2(h)

%X = [-0.1 0.2 0.4 0.5 0.6 0.6 0.5 0.4 0.3 0.1 -0.2 -0.4 -0.7 -0.7 -0.5 -0.4];
%Y = [0.6 0.6 0.5 0.3 0.1 -0.1 -0.3 -0.4 -0.6 -0.7 -0.6 -0.5 -0.2 0.1 0.3 0.5];

%******************************************************************************************%

% Media (inner boundary), same as IEL (Intima-Media interface) in Figure 2(d)

%X = [0.1 2 2.6 2.6 1.7 -0.3 -0.9 -1.7 -2 -2.2 -2.1 -1.1];
%Y = [2.2 1.6 -0.4 -1.1 -2.5 -2.7 -2.4 -1.7 -1.1 -0.4 0.7 1.6];

% Media-Adventitia interface in Figure 2(d)

%X = [-4.4 -2.6 1.8 3.3 5.1 5 1.7 -2.1 -3.6 -4.7 -4.6 -0.3];
%Y = [2.1 4.2 4.3 2.7 0.4 -2.5 -4.9 -5 -2.2 -0.8 0.5 5];


% Media-Adventitia interface in Figure 2(h)
%X = [-0.6 -0.9 -1 -1.1 -1.1 -0.8 -0.5 0 0.6 0.9 1 0.9 0.6 0.1 -0.3];
%Y = [0.7 0.5 0.2 -0.2 -0.5 -0.7 -0.9 -1.1 -0.9 -0.4 0 0.5 0.8 0.9 0.9];

%******************************************************************************************%

% Adventitia (inner boundary), same as Media-Adventitia interface in Figure 2(d)

%X = [-4.4 -2.6 1.8 3.3 5.1 5 1.7 -2.1 -3.6 -4.7 -4.6 -0.3];
%Y = [2.1 4.2 4.3 2.7 0.4 -2.5 -4.9 -5 -2.2 -0.8 0.5 5];

% Adventitia (outer boundary) in Figure 2(d)

%X = [-7.3 -7.2 -6.8 -3.3 0.3 3.9 6.8 8.2 8 3.3 -4 0];
%Y = [-3.2 0.5 3.7 6.6 7.6 6.2 3.5 0.4 -2.8 -7.2 -8.3 -8.3];


% Adventitia (outer boundary) in Figure 2(h)
X = [-0.9 -1.3 -1.7 -1.7 -1.2 -0.5 0.5 1.3 1.4 1.7 1.6 1.4 0.6 -0.1];
Y = [1.3 0.6 0 -0.9 -1.3 -1.6 -1.6 -1.4 -0.5 0.2 0.8 1.2 1.6 1.4];

%******************************************************************************************%

scale_factor = 1;
[a0,a,b] = seg(X,Y,scale_factor) % Returns the coefficients of the Fourier series

