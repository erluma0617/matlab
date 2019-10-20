x=1:14;
freqy=[1 0 1 0 4 0 1 0 3 1 0 0 1 1];
subplot(1,3,1);
bar(x,freqy);
xlim([0 15]);
subplot(1,3 ,2);
area(x,freqy);
xlim([0 15]);
subplot(1,3,3);
stem(x,freqy);
xlim([0 15]);

