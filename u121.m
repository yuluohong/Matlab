num=[600 120];
den=conv(conv([1/5 1 0],[1/50 1]),[100 1]);
sys=tf(num,den)

bode(sys)
margin(sys)
bandwidth(sys)