clc;
clear;

% Given end-effector position
Px = 9.1416;   % x-coordinate
Py = 14.7984;  % y-coordinate

% Link lengths
L1 = 10;
L2 = 8;

% -----------------------------
% Step 1: Compute D
D = (Px^2 + Py^2 - L1^2 - L2^2) / (2 * L1 * L2);

% Step 2: Compute theta2
theta2 = atan2(sqrt(1 - D^2), D);

% Step 3: Compute theta1
theta1 = atan2(Py, Px) - atan2(L2 * sin(theta2), L1 + L2 * cos(theta2));

% -----------------------------
% Display results
disp('Theta1 =');
disp(theta1);

disp('Theta2 =');
disp(theta2);
