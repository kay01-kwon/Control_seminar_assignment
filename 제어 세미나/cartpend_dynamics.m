function dxdt = cartpend_dynamics(x,m_p,m_c,l,g,u)

Sx = sin(x(3));
Cx = cos(x(3));

I_pc = 1/12*m_p*(2*l)^2;
det = (m_p+m_c)*I_pc + m_c*m_p*l^2;

dxdt(1) = x(2);
dxdt(2) = (m_p^2*l^2*g*Sx*Cx - (I_pc+m_p*l^2)*m_p*l^2*x(4)^2*Sx +(I_pc+m_p*l^2)*u);
dxdt(3) = x(4);
dxdt(4) = (-m_p^2*l^3*x(4)^2*Cx*Sx + (m_p+m_c)*m_p*g*l*Sx + m_p*l*Cx*u)/det;
dxdt = dxdt';
end