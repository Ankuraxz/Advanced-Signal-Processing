% a)
% Mexican-Hat function:
tmaxm = 5; t = -tmaxm:0.05:tmaxm; t2 = t.*t;
gt = (2/sqrt(3))*pi^(-1/4)*(1-t2).*exp(-t2/2);
% Fourier Transform of g(t): G(Fx)
Fx = -1:0.01:1; w = 2*pi*Fx; w2 = w.*w;
GF = sqrt(8/3)*(pi^(1/4))*w2.*exp(-w2/2);
ix1 = find(GF(1:51) <= 0.001, 1, 'last' ); F1 = Fx(ix1);
ix2 = find(GF(151:201) <= 0.001, 1 ); F2 = Fx(ix2+150);


% (a) Plot of g(t) and its Fourier Transform G(Fx)
Hf_1 = figure('units','inches','position',[1,1,6,3],...
'paperunits','inches','paperposition',[0,0,6,3],...
'numbertitle','off','name','P0808a');
subplot('position',[0.08,0.15,0.4,0.75]);
plot(t,gt,'g',[-tmaxm,tmaxm],[0,0],'w:',[0,0],[-.5,1],'w:');
axis([-tmaxm,tmaxm,-0.5,1]);
title('Mexican-Hat Wavelet','fontsize',12);
xlabel('\itt','fontsize',10); ylabel('{\itg}({\itt} )','fontsize',10);
subplot('position',[0.58,0.15,0.4,0.75]);
plot(Fx,GF,'g',[-1,1],[0,0],'w:',[0,0],[0,1.8],'w:'); axis([-1,1,0,1.8]);
title('Fourier Transform','fontsize',12);
xlabel('\itF','fontsize',10); ylabel('{\itG}({\itF} )','fontsize',10);
set(gca,'xtick',[-1,F1,0,F2,1],'ytick',[0:0.5:2]);

% b)
Fs = 2*F2, Ts = 1/Fs;
Fs = 1.4800

% c)
M = 14;
% Generate sample of g(t) as data
t = 0:Ts:5; t = [-fliplr(t(2:end)),t]; t2 = t.*t;
g = (2/sqrt(3))*pi^(-1/4)*(1-t2).*exp(-t2/2); g = g';
Nx = 0:length(g)-1; tmaxm = Nx(end)*Ts;
G = toeplitz([g;zeros(M,1)],[g(1),zeros(1,M)]);
[Lx,Nx] = size(G); n0 = floor(Lx/2);
yout = [zeros(n0,1);1;zeros(n0,1)];
R = G'*G; r = G'*yout;
c_ls = R\r;
e = yout - G*c_ls; format long; Els = e'*e, format short;
Els = 0.09340142175215
y_ls = conv(g,c_ls); m = 0:length(y_ls)-1; mmax = m(end)*Ts;
Hf_2 = figure('units','inches','position',[1,1,6,6],...
'paperunits','inches','paperposition',[0,0,6,6],...
'numbertitle','off','name','P0808c');
subplot('position',[0.08,0.6,0.4,0.3]);
stem(Nx*Ts,g,'g'); hold on;
plot([0,tmaxm],[0,0],'w:',[0,0],[-.5,1],'w:'); axis([0,tmaxm,-0.5,1]);
title('sampled Wavelet','fontsize',12);
xlabel('\itn','fontsize',10); ylabel('{\itg}({\itn} )','fontsize',10);
set(gca,'xtick',Nx*Ts,'xticklabel',...
[' 0';' 1';' 2';' 3';' 4';' 5';' 6';' 7';' 8';' 9';'10';'11';...
'12';'13';'14']);
subplot('position',[0.58,0.6,0.4,0.3]);
stem(Nx*Ts,c_ls,'g'); hold on;
plot([0,tmaxm],[0,0],'w:'); axis([0,tmaxm,-20,20]);
title('LS Inverse Filter','fontsize',12);
xlabel('\itn','fontsize',10); ylabel('{\itc}_{ls}({\itn} )','fontsize',10);
set(gca,'xtick',Nx*Ts,'xticklabel',...
[' 0';' 1';' 2';' 3';' 4';' 5';' 6';' 7';' 8';' 9';'10';'11';'12';...
'13';'14']);
subplot('position',[0.08,0.1,0.9,0.3]);
stem(m*Ts,y_ls,'g'); hold on;
plot([0,mmax],[0,0],'w:'); axis([0,mmax,-1,1]);
title('Verification','fontsize',12);
xlabel('\itn','fontsize',10);
ylabel('{\itc}_{ls}({\itn})*{\itg}({\itn} )','fontsize',10);
set(gca,'xtick',Nx*M*Ts,'xticklabel',...
[' 0';'14';'29']);


% d)

Fs = 2*Fs; Ts = 1/Fs;
M = 28; % order of the filter
% Generate sample of g(t) as data
t = 0:Ts:5; t = [-fliplr(t(2:end)),t]; t2 = t.*t;
g = (2/sqrt(3))*pi^(-1/4)*(1-t2).*exp(-t2/2); g = g';
Nx = 0:length(g)-1; tmaxm = Nx(end)*Ts;
G = toeplitz([g;zeros(M,1)],[g(1),zeros(1,M)]);
[Lx,Nx] = size(G); n0 = floor(Lx/2);
yout = [zeros(n0,1);1;zeros(n0,1)];
R = G'*G; r = G'*yout;
c_ls = R\r; k = 0:length(c_ls)-1; kmaxm = k(end)*Ts;
e = yout - G*c_ls; format long; Els = e'*e, format short;
Els = 0.45036127872114
y_ls = conv(g,c_ls); m = 0:length(y_ls)-1; mmax = m(end)*Ts;
Hf_3 = figure('units','inches','position',[1,1,6,6],...
'paperunits','inches','paperposition',[0,0,6,6],...
'numbertitle','off','name','P0808d');
subplot('position',[0.08,0.6,0.4,0.3]);
stem(Nx*Ts,g,'g'); hold on;
plot([0,tmaxm],[0,0],'w:',[0,0],[-.5,1],'w:'); axis([0,tmaxm,-0.5,1]);
title('sampled Wavelet','fontsize',12);
xlabel('\itn','fontsize',10); ylabel('{\itg}({\itn} )','fontsize',10);
set(gca,'xtick',Nx*2*Ts,'xticklabel',...
[' 0';' 2';' 4';' 6';' 8';'10';'12';'14';'16';'18';'20';'22';...
'24';'26';'28']);
subplot('position',[0.58,0.6,0.4,0.3]);
stem(k*Ts,c_ls,'g'); hold on;
plot([0,tmaxm],[0,0],'w:'); %axis([0,tmaxm,-20,20]);
title('LS Inverse Filter','fontsize',12);
xlabel('\itn','fontsize',10); ylabel('{\itc}_{ls}({\itn} )','fontsize',10);
set(gca,'xtick',Nx*2*Ts,'xticklabel',...
[' 0';' 2';' 4';' 6';' 8';'10';'12';'14';'16';'18';'20';'22';...
'24';'26';'28']);
subplot('position',[0.08,0.1,0.9,0.3]);
stem(m*Ts,y_ls,'g'); hold on;
plot([0,mmax],[0,0],'w:'); axis([0,mmax,-1,1]);
title('Verification','fontsize',12);
xlabel('\itn','fontsize',10);
ylabel('{\itc}_{ls}({\itn})*{\itg}({\itn} )','fontsize',10);
set(gca,'xtick',Nx*M*Ts,'xticklabel',...
[' 0';'14';'29']);
