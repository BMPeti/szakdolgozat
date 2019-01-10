#az uncertainpyos erzekenyseg analizisre eredmenyul kapott data tipusu valtozo olvasasa es vizsgalata
import uncertainpy as un

from ca1_pc_model import ca1_pc

import matplotlib

import matplotlib.pyplot as plt


data = un.Data()
data.load("ca1_pc.h5")

#print(data.keys())

# print(data["fast_AHP"].keys())
# for feat in data.keys():
# 	print(data[feat]["time"])

##ha a data dictionaryban a kulcsok kozul a modelt valasztom akkor az evaluationsben a traceeket kapom


t = data["ca1_pc"]["time"]

v = data["ca1_pc"]["evaluations"][-1]

plt.plot(t,v)

plt.show()
# for key, value in data.iteritems():
# 	print(key)
# 	print(value["time"])

#variance = data["fast_AHP"].variance

#print(variance)

#print(data["ca1_pc"].evaluations)

# t,v,i = ca1_pc()

# plt.plot(t, v)

# plt.show()