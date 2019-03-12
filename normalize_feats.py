#egy fuggveny a featureok normalasahoz. bemenet egy feature a sajat erzekenyseganalizis modellbol a vegleges valid listarol,
#visszateritesi erteke a normalt feature 
import numpy as np

try:
    
    import cPickle as pickle

except:
    
    import pickle

import gzip

import copy

from experiment_matrix import invalid_feat_list_atado



#feature normalizalas
def normalize_feats(v,k):
	#beolvassuk a valid kiserleti feature listat
	exp_valid_features = pickle.load(gzip.GzipFile("exp_valid_features.p", "rb"))
	# print(exp_valid_features)
	print(500*"a")
	print(len(exp_valid_features))

	#beolvassuk a kiserleti feature matrixot
	cell_feat_value_matrix = pickle.load(gzip.GzipFile("cell_feat_value_matrix.p", "rb"))

	cell_feat_value_matrix = np.asarray(cell_feat_value_matrix)

	#cell_feat_value_matrix = cell_feat_value_matrix.transpose()
	# print(cell_feat_value_matrix)

	print(len(cell_feat_value_matrix))

	#keszitek egy dictionaryt a kiserleti adatok feature listajabol es ertekeibol
	keys = exp_valid_features
	values = cell_feat_value_matrix
	dictionary_exp = dict(zip(keys, values))
	#print(dictionary_exp)
	# print(len(dictionary_exp))

	#egyeztetem a modell valid feature listajaval
	valid_features = pickle.load(gzip.GzipFile("valid_feature_list.p", "rb"))

  	kul = []

	for i in range(len(dictionary_exp.keys())):
		if dictionary_exp.keys()[i] not in valid_features:
			kul.append(dictionary_exp.keys()[i])

	for key in kul:
		if key in dictionary_exp:
			del dictionary_exp[key]
			



  	#majd kimentem a modell valid listajanak is megfeleltetett valid kiserleti feature listat,hogy teljes legyen az osszhang
  	dictionary_exp = dictionary_exp
  	cell_feat_value_matrix = []
  	exp_valid_features = []

  	cell_feat_value_matrix = dictionary_exp.values()
  	exp_valid_features = dictionary_exp.keys()

  	print(500*"*")
  	print(cell_feat_value_matrix)
  	print(len(cell_feat_value_matrix))
  	print(exp_valid_features)
  	print(len(exp_valid_features))
  	print(500*"*")



  	pickle.dump(cell_feat_value_matrix, gzip.GzipFile("cell_feat_value_matrix.p", "wb"))
	pickle.dump(exp_valid_features, gzip.GzipFile("exp_valid_features.p", "wb"))

	#kiszamolom a kiserleti featurok atlagat
	averages = []
	for i in range(len(cell_feat_value_matrix)):
	        averages.append(sum(cell_feat_value_matrix[i])/float(len(cell_feat_value_matrix[i])))
	# print(averages)
	# print(len(averages))

	#keszitek egy dictionaryt az atlagokbol
	keys = exp_valid_features
	values = averages
	dictionary_exp_avg = dict(zip(keys, values))
	# print(dictionary_exp_avg)
	# print(len(dictionary_exp_avg))

	#kiszamolom a varianciat
	variances = []
	for i in range(len(cell_feat_value_matrix)):
		variances.append(np.var(cell_feat_value_matrix[i]))
	# print(variances)
	# print(len(variances))


	#keszitek egy dictionaryt a varianciakbol
	keys = exp_valid_features
	values = variances
	dictionary_exp_var = dict(zip(keys, values))
	# print(dictionary_exp_var)
	# print(len(dictionary_exp_var))
	# print(dictionary_exp_var.get("time"))
	# print("a")
	# print(type(v))
	# print("aa")
	# print(k)
	# print(type(k))
	# print("aaa")
	# print(type(str(k)))
	# print("aaaa")
	# print(type(dictionary_exp_avg.get(str(k))))
	# print("aaaaa")
	# print(type(dictionary_exp_var.get(str(k))))
	# print("aaaaaa")

	

	v = (v-dictionary_exp_avg.get(k)/dictionary_exp_var.get(k))

	return v