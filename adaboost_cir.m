
[~, ~, raw] = xlsread('/Users/ruihong/Documents/MATLAB/data.xlsx','data');
raw = raw(2:end,:);

%% Create output variable
data = reshape([raw{:}],size(raw));

%% Allocate imported array to column variable names
number1 = data(:,1);
 xx= data(:,2);
x2= data(:,3);
y2 = data(:,4);
x=x2.';
y=y2.';
%???????
%x = [0,1,2,3,4,5,6,7,8,9];
y3 = [1,1,1,-1,-1,-1,1,1,1,-1];
z = [x;y];

subplot(2,1,1)
for i = 1:1:size(x,2)
    if y(i) == 1
       plot(x(i), y(i), '+r');
    else
       plot(x(i), y(i), 'o');
    end
    hold on
end

 
 %??????????
num = 40;   %????
wSample = 1/size(x,2)*ones(size(x,2), 1);%?????
wClass = zeros(num,1);%?????
h = zeros(num,1);%?????
be = ones(num,1);%???????????????

for i1 = 1:1:num
 for j = 0:0.01:2
 e0 = 0;  %?????
 e1 = 0;  %?????
    for k = 1:60   %?????????????????????
     if z(1,k) > j
         if z(2,k) == 1
             e0 = e0+wSample(k);
         else
             e1 = e1+wSample(k);
         end
     else
         if z(2,k) == -1
             e0 = e0+wSample(k);
         else
             e1 = e1+wSample(k);
         end
     end
    end 
     
     if be(i1) > e0
       be(i1) = e0;  
       h(i1) = j;
     end
 end
%?????????
 line([h(i1) h(i1)],[-2 2],'color','c','LineWidth',4) %[][][x? x?]][y? y?]?[]??????????
 sumclass = sum(wSample(:,1));%????????????
  %??????????????????????
  we = be(i1)/sumclass;
 wClass(i1) = 0.5*log((1-we)/we);
for k1 = 1:60   
     if z(1,k1) > h(i1)
         if z(2,k1) == 1
             wSample(k1) = exp(wClass(i1))*wSample(k1);
         else
             wSample(k1) = exp(-wClass(i1))*wSample(k1);
         end
     else
         if z(2,k1) == -1
            wSample(k1) = exp(wClass(i1))*wSample(k1);
         else
            wSample(k1) = exp(-wClass(i1))*wSample(k1);
         end
     end
   end 
   
   
end
hold off
%?????????
subplot(2,1,2)
G=zeros(201,1);
abak = 0:0.01:2;
for q=1:1:201
  
    for abai = 1:num
        if abak(q) > h(abai)
            G(q) = G(q) + wClass(abai)*(-1);
        else
             G(q) = G(q) + wClass(abai)*(1);
        end  
    end
      
end
plot(abak,G,'r','LineWidth',4) 
 hold on
 SG=zeros(201,1);%??sign????
 for i = 1:1:201
   SG(i) = sign(G(i));  
 end
plot(abak,SG,'Color',[0 1 0],'LineWidth',4)