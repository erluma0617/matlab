G=[46,38,29,24,13];
S=[29,27,17,26,8];
B=[29 23 19 32 7];
h=bar(1:5,[G',S',B']);
title('Medal count for top 5 countries in 2012 Olympics');
ylabel('Number of medals');
xlabel('Country');
legend('Gold','Silver','Bronze')