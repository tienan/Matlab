function r = greyRe(D,main)
%calculate the grey correlation coffieicnt r
%D is the matrix contain the main vector, each row is a vector
%main is the position of the reference vector 
[m,n]=size(D);
maxr=max(D);
for i=1:n
    d1(:,i) = D(:,i)/maxr(i);
end
lo = 0.55;
for i=1:n
    rtmp(:,i)=abs(d1(:,i)-d1(:,main));
end
tmin = min(min(rtmp));
tmax = max(max(rtmp));
d2 = (tmin+lo*tmax)./(rtmp+lo*tmax);
r = mean(d2);
end