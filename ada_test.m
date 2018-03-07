subplot(2,1,2)
G=zeros(2551,1);
abak = 0:0.1:255;
for q=1:1:2551
  
    for abai = 1:num
        if abak(q) > h0(abai)&& abak(q) < h1(abai)
            G(q) = G(q) + wClass(abai)*(-1);
        else
             G(q) = G(q) + wClass(abai)*(1);
        end  
    end
      
end
plot(abak,G,'r','LineWidth',4) 
 hold on
 SG=zeros(2551,1);%??sign????
 for i = 1:1:2551
   SG(i) = sign(G(i));  
 end
plot(abak,SG,'Color',[0 1 0],'LineWidth',4)