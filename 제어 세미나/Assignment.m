clear all;
close all;

m_p = 0.2;
m_c = 0.5;
l = 0.6; % 진자의 pivot point에서 진자의 질량 중심까지의 직선 거리
g = 9.81;

I_pc = 1/12*m_p*(2*l)^2; % 진자 중심에서의 관성 모멘트
Delta = (m_p+m_c)*I_pc + m_c*m_p*l^2; 

% A 및 B 행렬 구해서 기입할 것

% Controllability 확인

t_span = [0 100];
x0 = [0;0;0;-0.1];

% To do: 원하는 폴 위치 기입
des_poles = [;;;];

K = place(A,B,des_poles);

% cartpend_dynamics(x,m_p,m_c,l,g,제어 입력)

[t,x] = ode45(@(t,x) cartpend_dynamics(x,m_p,m_c,l,g,0),t_span,x0);

for k=1:length(t)
    drawcartpend(x(k,:),l);
end

figure()
plot(t,x(:,1))
title('x-t')


figure()
plot(t,x(:,2))
title('dx/dt -t')

figure()
plot(t,x(:,3))
title('\theta -t')
figure()
plot(t,x(:,4))
title('d \theta dt -t')