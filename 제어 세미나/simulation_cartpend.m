clear all; 
close all;

m_p = 0.2;
m_c = 0.5;
l = 0.6;
g = 9.81;

t_span = [0 20];
x0 = [0;0;0.0;0.5];

[t,x] = ode45(@(t,x) cartpend_dynamics(x,m_p,m_c,l,g,0.01),t_span,x0);

for k=1:length(t)
    drawcartpend(x(k,:),l);
end
