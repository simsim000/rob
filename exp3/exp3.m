clc;
clear;

% Define symbolic variables
syms theta1 theta2 L1 L2

% Rotation matrix (theta1)
A = [cos(theta1)  -sin(theta1)  0  0;
     sin(theta1)   cos(theta1)  0  0;
     0             0            1  0;
     0             0            0  1];

% Translation matrix (L1)
B = [1  0  0  L1;
     0  1  0  0;
     0  0  1  0;
     0  0  0  1];

C = A * B;

% Rotation matrix (theta2)
D = [cos(theta2)  -sin(theta2)  0  0;
     sin(theta2)   cos(theta2)  0  0;
     0             0            1  0;
     0             0            0  1];

% Translation matrix (L2)
E = [1  0  0  L2;
     0  1  0  0;
     0  0  1  0;
     0  0  0  1];

% Final transformation
F = simplify(C * D * E);

disp('General Transformation Matrix:');
disp(F)

% Substitute theta1 = 0, theta2 = 0
F_final = simplify(subs(F, [theta1 theta2], [0 0]));

disp('Final Answer:');
disp(F_final)
