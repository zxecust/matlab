%matlab绘制疲劳极限图的简化图
%绘制该图需要已知：材料疲劳极限的均值、标准差、疲劳极限的变差系数、屈服强度的均值、
%屈服强度的变差系数和脉动循环的疲劳极限均值

clear

%下标f1代表疲劳极限，s代表屈服强度极限，0代表名义屈服强度
xDf1=0;yDf1=300;sgmaDf1=30;
xDs=800;yDs=0;sgmaDs=80;
xD0=250;yD0=250;sgmaD0=25;

syms x1 y1 x2 y2 x3 y3 x4 y4 A B C x y;
x1=xDf1;x2=xD0;x3=xDs;y1=yDf1;y2=yD0;y3=yDs;PM=80;x4=xDs-PM;y4=PM;

%%
eq1=A*x1+B*y1+C;eq2=A*x2+B*y2+C;sov1=solve(eq1,eq2,A,B);
eq3=A*x3+B*y3+C;eq4=A*x4+B*y4+C;sov2=solve(eq3,eq4,A,B);
A1=simplify(sov1.A/C);B1=simplify(sov1.B/C);
A2=simplify(sov2.A/C);B2=simplify(sov1.B/C);
%A1=(y1-y2)/(x1*y2-x2*y1);B1=(-x1+x2)/(x1*y2-x2*y1);

%%
eq1=A1*x+B1*y+1;
A2=(y3-y4)/(x3*y4-x4*y3);B2=(-x3+x4)/(x3*y4-x4*y3);
eq2=A2*x+B2*y+1;
sov=solve(eq1,eq2,x,y);
pretty(sov.x);pretty(sov.y);
line([xDf1,sov.x],[yDf1,sov.y]);line([sov.x,xDs],[sov.y,yDs]);
line([0,xD0],[0,yD0]);line([0,sov.x],[0,sov.y]);