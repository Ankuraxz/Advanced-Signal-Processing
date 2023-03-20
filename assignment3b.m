omega0 = pi/16; a1 = 0.9; a2 = -0.75; var_w = 1;
% (a) Design of the Optimum filter and its MMSE
Mmaxm = 50; Po = zeros(Mmaxm,1);
varv2 = var_w/(1-a2*a2);
varv1 = var_w/(1-a1*a1);
ry0 = 0.5*cos(omega0*0)+varv1;
for M = 1:Mmaxm
Rv2 = toeplitz(varv2*a2.^(0:M-1));
ryv2 = (1/(1-a1*a2))*a1.^(0:M-1)';
co = Rv2\ryv2;
Po(M) = ry0 - co'*ryv2;
end
Po = [ry0;Po]; M = 0:Mmaxm;
% Hf_1 = figure('units',SCRUN,'position',SCRPOS,...
% 'paperunits',PAPUN,'paperposition',[0,0,5,2],...
% 'NumberTitle','off','Name','Pr1015a');
plot([0,Mmaxm],[0.5,0.5],'w:',[20,20],[0,Po(21)],...
'w:',M,Po,'g');
axis([0,Mmaxm,0,6]);
xlabel('Filter Length M');
title('MMSE of the Noise Canceller');
ylabel('MMSE');
set(gca,'xtick',[0:10:Mmaxm],'ytick',[0,0.5,1:6]);
% Choose Mo = 20;
Mo = 20;
Rv2 = toeplitz(varv2*a2.^[0:Mo-1]);
ryv2 = (1/(1-a1*a2))*a1.^[0:Mo-1]';
co = Rv2\ryv2;


% (b) LMS for Noise canceller
% Generate Desired and Input signals
Nx = 1000; nx = [0:Nx-1]';
phi = 2*pi*rand(1,1); s = cos(omega0*nx+phi);
w = randn(Nx,1); v1 = filter(1,[1,-a1],w);
v2 = filter(1,[1,-a2],w); y = s + v1;
mu = 0.005;
c0 = zeros(Mo,1);


[c,e,yhat] = firlms(v2,y,mu,Mo,c0);



eo = y - filter(co,1,v2); elms = y - yhat;
subplot('position',[0.1,0.82,0.85,0.09]);
plot(nx(500:1000),s(500:1000),'g'); axis([Nx/2,Nx,-5,5]);
title('Original Signal s(nx)');
set(gca,'xtick',[500,1000]);
subplot('position',[0.1,0.64,0.85,0.09]);
plot(nx(500:1000),y(500:1000),'m'); axis([Nx/2,Nx,-10,10]);
title('Primary Signal s(nx)+v_1(nx)');
set(gca,'xtick',[500,1000]);
subplot('position',[0.1,0.46,0.85,0.09]);
plot(nx(500:1000),v2(500:1000),'m'); axis([Nx/2,Nx,-10,10]);
title('Secondary Signal v_2(nx)');
set(gca,'xtick',[500,1000]);
subplot('position',[0.1,0.28,0.85,0.09]);
plot(nx(500:1000),eo(500:1000),'g'); axis([Nx/2,Nx,-5,5]);
title('Clean Signal e_o(nx)');
set(gca,'xtick',[500,1000]);
subplot('position',[0.1,0.10,0.85,0.09]);
plot(nx(500:1000),elms(500:1000),'g'); axis([Nx/2,Nx,-5,5]);
title('Clean Signal e_{LMS}(nx)');
set(gca,'xtick',[500,1000]);
xlabel('sample index nx');




function [c,e,yhat] = firlms(x,y,mu,M,c0)
% Computes filter coefficients in c and the corresponding error in
% e, given signal x, desired signal y, step size mu, filter order M, and
% the initial coefficient vector c0.
%
% [c,e] = firlms(x,y,mu,M,c0)
%
Nx = length(x); % Length of x(nx) & number of iterations
x = reshape(x,Nx,1); % x as a column vector
c = zeros(M,Nx); % Initialization of c
X = zeros(M,Nx); % Data matrix
xx = [zeros(M-1,1);x]; % Prepend M-1 zeros
for i = 1:M
X(i,:) = xx(M-i+1:end-i+1)';
end
e = zeros(1,Nx); yhat = zeros(Nx,1);
%--LMS Algorithm for FIR filter - real-valued case
% Algorithm initialization
yhat(1) = c0'*X(:,1);
e(1) = y(1) - yhat(1);
c(:,1) = c0 + 2*mu*X(:,1)*e(1);;
% Iterations
for nx = 2:Nx
yhat(nx) = c(:,nx-1)'*X(:,nx);
e(nx) = y(nx) - yhat(nx);
c(:,nx) = c(:,nx-1) + 2*mu*X(:,nx)*e(nx);
end
end
