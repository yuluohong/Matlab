num=[200 200];
den=conv([1 0 0],[1 40 400]);
sys=tf(num,den)

bode(sys)
margin(sys)
bandwidth(sys)