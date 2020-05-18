w=10;   
u0=4*pi*1e-7;          
e0=1e-9/(36*pi);                      
k=w*(u0*e0)^0.5;       
phi_E=input("��������λ��");               
phi_H=0;
EE=5;                  
HH=3.32;            
x=0:100000:2e9;
figure
for t=0:1:150
    Ex=EE*cos(-k*x+w*t*1e-1+phi_E);
    Hy=HH*cos(-k*x+w*t*1e-1+phi_H);
    plot3(x,Hy,Ex,'b','LineWidth',2);
    hold on;grid on;
    hold off;
    xlabel('��������z')
    ylabel('�ų�Hy')
    zlabel('�糡Ex')
    title(['ƽ���Ų�����ʾ��ͼ','t=',num2str(t/10),'s'])
    drawnow
    pause(0.01)
end
