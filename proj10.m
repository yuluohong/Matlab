l=0.25;
x=[];
y=[];
z=[];
%generate x
for i=0:1:10000
    rnum=[];
    rnuml=[];
    for j=0:1:2
        rnum(end+1)=rand;% generate uniform random variable
    end
rnuml=log(rnum);
x(end+1)=(sum(rnuml)/l)*(-1);
end
%generate y
for i=0:1:10000
    rnum=[];
    rnuml=[];
    for j=0:1:1
        rnum(end+1)=rand;
    end
rnuml=log(rnum);
y(end+1)=(sum(rnuml)/l)*(-1);
end
%generate z
for i=0:1:10000
    rnum=[];
    rnuml=[];
    for j=0:1:4
        rnum(end+1)=rand;
    end
rnuml=log(rnum);
z(end+1)=(sum(rnuml)/l)*(-1);
end

a=x+y;
h1=histogram(a,200);
h1.Normalization='probability';
hold on;
h2=histogram(z,200);
h2.Normalization='probability';