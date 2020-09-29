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
print(data.head())
x = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56]
y=data['confirm']                                                         
#plt.title('疫情趋势图')#加标题
plt.plot(x,y,'r',label='单日新增人数')
plt.ylabel('人数')
plt.xlabel("日期")
plt.legend(loc=0)
plt.show()
