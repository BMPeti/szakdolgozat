#egy rovid kis kod a sajat erzekenyseg analizis eredmenyeinek olvasasahoz es vizsgalatahoz
try:
    
    import cPickle as pickle

except:
    
    import pickle

import gzip

feature_matrix = pickle.load(gzip.GzipFile("feature_matrix.p", "rb"))

feature_matrix_stabil = pickle.load(gzip.GzipFile("feature_matrix_stabil.p", "rb"))

diff_matrix = pickle.load(gzip.GzipFile("diff_matrix.p", "rb"))

print(len(diff_matrix))


print(len(feature_matrix))





# if len(feature_matrix) == len(feature_matrix_stabil):

# 	print("joo")


print(feature_matrix_stabil, "*"*50,  feature_matrix)

for i in range(len(feature_matrix)):

	print(len(feature_matrix[i]), len(feature_matrix_stabil))