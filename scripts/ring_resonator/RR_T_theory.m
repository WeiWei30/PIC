function P = RR_T_theory(lambda1,lambda2,t,alpha,radius)
%RR_T_THERORY to caculate the theoretical value of transmission spetrum of ring resonator
%%   INPUT DATA
%   lambda1: start wavelength of caculation(um)
%   lambda2: end wavelength of caculation(um)
%   t: modulus of self-coupling(transmission) coefficient
%   alpha: loss in the ring resonator
%   radius: radius of the ring resonator(um)
%%  OUTPUT DATA
%   P: theoretical value of transmission spetrum
lambda = linspace(lambda1,lambda2,1000);
P = (alpha^2 + t^2 - 2*alpha*t*cos(2*pi./lambda*2*pi*radius))./(1+alpha^2*t^2-2*alpha*t*cos(2*pi./lambda*2*pi*radius));
plot(lambda,P);
axis([lambda1 lambda2 0 1]);
title('transmission spetrum');
end