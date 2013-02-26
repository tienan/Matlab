D = t([1,9,14,25,31],:);
Da = D(:,6)./D(:,1);
D = [D Da];
for i = 1:8
    r(i,:)=greyRe(D,i);
end
r1 = [r(6,1:5) r(7:9)]
x=1:8;

for i=1:6
subplot(3,2,i)
y(x)=baseline(i);
plot(x,y)
hold on
plot(x,r(:,i))
axis([1 8 0 1]) 
end