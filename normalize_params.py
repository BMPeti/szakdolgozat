#egy fuggveny a parameterek normalasahoz
import numpy as np

import copy

# v = [35,
#     10.1819,
#     0.0570,
#     0.0623,
#     -0.0317,
#     0.5071,
#     0.0848,
#     0.0002,
#     -0.0009,
#     0.0065,
#     -0.0286,
#     1.8327,
#     4.4535,
#     0.3201,
#     0.0119,
#     0.0744,
#     5.0507,
#     0.0967]

# list_minmax = []

#az egyes min es max ertekek ahogyan az optimalizacional a boundaryben voltak
# lmin = [0.01,5.0,0.01,0.05,0.01,0.05,0.01,5e-05,0.001,0.001,-0.04,1.0,5.0,0.1,0.0002,0.001,0.1,0.1]

# lmax = [0.05,15.0,0.2,0.5,0.2,0.5,0.2,5e-04,0.01,0.01,-0.025,5.0,15.0,0.5,0.02,0.1,5,5]

# list_minmax.append(lmin)
# list_minmax.append(lmax)

#print(len(list_minmax))
#print(list_minmax)

"""az alabbi fuggveny normalizalja a parametereinket ugy, hogy megkapja az aktualis parameter listat es egy masik listat,
 mely a minimum es maximum hatarokat tartalmazza a parameterekre, a normalt parameterek listajat a c valtozoban adjuk vissza"""
def normalize_params(v,list_minmax):

    c=copy.copy(v)

    for i in range(len(v)):

            c[i]=(v[i]-list_minmax[0][i])/(list_minmax[1][i]-list_minmax[0][i])
    return c
    #print(c)