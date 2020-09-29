import pandas as pd
from pylab import *
mpl.rcParams['font.sans-serif'] = ['SimHei']#解决中文乱码问题
from matplotlib import pyplot as plt
import random
import numpy as np
import matplotlib
import collections
from scipy.optimize import curve_fit
import math
#from matplotlib import pyplot as plt

data=pd.read_csv('china_DailyList_2020_02_03.csv')
print(data.head(24))
x=[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24]
y=data['confirm']
plt.plot(x,y,'r',label='疫情确诊人数')
plt.ylabel('人数')
plt.xlabel("日期")
plt.legend(loc=0)
plt.show()
def logistic_increase_function(t, K, P0, r):
     r=0.6
     t0 = 1
     exp_value = np.exp(r * (t - t0))
     return (K * exp_value * P0) / (K + (exp_value - 1) * P0)
     # 日期与感染人数
t = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24]
t = np.array(t)
P = data['confirm']
# 最小二乘拟合
P = np.array(P)
popt, pocv = curve_fit(logistic_increase_function, t, P)

#所获取的opt皆为拟合系数
print("K:capacity P0:intitial_value r:increase_rate t:time")
print(popt)
#拟合后对未来情况进行预测
P_predict=logistic_increase_function(t,popt[0],popt[1],popt[2])
future=[25,27,29,30,35,40,45,50,60]
future=np.array(future)
future_predict=logistic_increase_function(future,popt[0],popt[1],popt[2])
#近期情况
tomorrow=[25,26,27,28,29,30,31]
tomorrow=np.array(tomorrow)
tomorrow_predict=logistic_increase_function(tomorrow,popt[0],popt[1],popt[2])+2500
#图像绘制
plot1=plt.plot(t,P,'s',label="疫情确诊感染人数")
plot2=plt.plot(t,P_predict,'r',label='感染人数拟合曲线')
plot3=plt.plot(tomorrow,tomorrow_predict,'s',label='近期感染人数预测')

plt.xlabel('日期')
plt.ylabel('确诊人数')
plt.legend(loc=0)
plt.show()
plot4=plt.plot(future,future_predict,'s',label='未来感染人数预测')
plt.show()
for i in range(25):
     people_sick=int(logistic_increase_function(np.array(i+8),popt[0],popt[1],popt[2]))
     print("拐点到来后%d日确诊人数预计:%d人"%(i+7,people_sick+2800))

