function drawcartpend(x,l)

x_ = x(1);
th_ = x(3);

W = 2;
H = 0.1;
wheel_rad = 0.1;
y_ = wheel_rad/2 + H/2;

px_end = x_ - 2*l*sin(th_);
py_end = y_ + 2*l*cos(th_);

plot([-10 10],[0 0],'k','LineWidth',2)
hold on;
rectangle('Position',[x_-W/2,y_-H/2,W,H],'Curvature',.1,'FaceColor',[1 0.1 0.1]);
rectangle('Position',[x_-0.7*W/2,0,wheel_rad,wheel_rad],'Curvature',1,'FaceColor',[0 0 0]);
rectangle('Position',[x_+0.7*W/2,0,wheel_rad,wheel_rad],'Curvature',1,'FaceColor',[0 0 0]);

plot([x_ px_end],[y_ py_end],'k','LineWidth',2)

xlim([-5 5])
ylim([-2 2.5])
set(gcf,'InvertHardcopy','off')

drawnow

hold off

end

