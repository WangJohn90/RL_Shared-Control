%% Target Trajectory
TT = csvread('XY_TT.csv',0,1);

%% Simulation Settings
% tf = 60*2;      % simulation time (s):60*10 (default)
% dt = 1/60*10;   % simulation rate (s):1/60  (default)
 V = 60/3.6;    % velocity (m/s)     :60/3.6(default)

%% Parameters
% Hapitc parameters
H_TNear = 0.3;     % Hapitc look ahead time at the near point (s):0.3   (default)
H_TFar = 0.7;      % Haptic look ahead time at the far point (s) :0.7   (default) 
H_a1 = 2.000;      % parameter for ey                            :1.875 (default)
H_a2 = 0.0500;     % parameter for dey                           :0.1875(default)
H_a3 = 40.0;       % parameter for theta                         :37.5  (default)
H_a4 = 1.0;        % parameter for dtheta                        :1.875 (default)
% H_K2 = 0.00;       % constant gain for steering wheel torque     :0.5   (HG-strong)

% Driver parameters
D_TNear = 0.3;     % Driver look ahead time at the near point (s):0.3   (default)
D_TFar = 1.0;      % Driver look ahead time at the far point  (s):1.0   (default)
D_a1 = 0.1000;     % parameter for ey                            :0.1   (default)
D_a2 = 0.0500;     % parameter for Sey                           :0.01  (default)
D_a3 = 3.7000;     % parameter for theta                         :4.0   (default)
D_a4 = 0.0;        % parameter for dtheta                        :0.0   (default)
D_K2 = 1.0*1.00;        % constant gain for driver torque             :1.0   (default)

% D_Kw   = 4.0000;   % Angle to torque coefficient                 :5.0   (default)
% D_Td   = 0.1000;   % Time delay of visual processing             :0.1   (default)
D_Tn   = 0.1000;   % Neuromuscular time constant                 :0.1   (default)
D_Knms = 1.0;      % Neuromuscular reflex gain                   :1.0   (default)
% D_KHG  = -1.0;     % Haptic guidance torque to driver torque gain:-0.5  (HG)
D_WN   = 0.001;    % White noise added to output of driver torque:0.01  (default)

% Vehicle parameters
K1 = 1;        % constant gain for self-aligning torque in DS    :1.0   (default)
 m = 1100;     % mass of vehicle (kg)                            :1100  (default)
 I = 300*9.8;  % moment of inertia about z-axis: I (kgm^2)       :2940  (default)
lf = 1.00;     % distance from C.O.G to front axle (m)           :1.00  (default)
lr = 1.635;    % distance from C.O.G to rear axle (m)            :1.635 (default)
 l = lf+lr;    % wheel base (m)
Kf = 5.33e+04; % front cornering stiffness (N/rad)          :55000 (default)
Kr = 1.17e+05; % rear cornering stiffness (N/rad)           :110000(default)

% Steering parameters
Ih  = 0.11;    % Arm and steering dynamics coupled moment of inertia (kgm^2)  :0.11 (default)
Kda = 0.57;    % Arm and steering dynamics coupled damping                    :0.57 (default)
Ksa = 0.0;     % Arm and steering dynamics coupled stiffness                  :2.0  (default)
Kt  = 1/17;    % Transmission ratio between steering wheel and tire angle     :17   (default)
Et  = 0.026;   % The sum of pneumatic trail and castor trail (aligning torque):0.04 (default)0.013(identification)
Ks  = 4950*9.8;% Steering system stiffness, and here it is  very large        :Book_P154

%% Bandwidth setting
% Band_TH = 0.5;
Gain_EA_Far = 0;
