#a kiserleti adatok vizsgalatara hasznalt feature lista es a sajat erzekenyseg analizis soran hasznalt feature lista egyezesenek vizsgalata.
#az itt keszitett kovariancia matrix erdektelen

import numpy as np

try:
    
    import cPickle as pickle

except:
    
    import pickle

import gzip



valid_feature_list = pickle.load(gzip.GzipFile("valid_feature_list.p", "rb"))

exp_valid_features = pickle.load(gzip.GzipFile("exp_valid_features.p", "rb"))

print(valid_feature_list)

"""print(set(valid_feature_list)-set(exp_valid_features), set(exp_valid_features)-set(valid_feature_list))"""


"""es monda az ur: csinaljunk 2 covariancia matrixot. eloszor saranak, im!"""


cell_feat_value_matrix = pickle.load(gzip.GzipFile("cell_feat_value_matrix.p", "rb"))

cell_feat_value_matrix = np.asarray(cell_feat_value_matrix)

cell_feat_value_matrix = cell_feat_value_matrix.transpose()

# print(cell_feat_value_matrix)

# print(len(cell_feat_value_matrix))

# print(cell_feat_value_matrix)

# print(len(cell_feat_value_matrix))

covar_matrix_exp = np.cov(cell_feat_value_matrix)



# print(len(covar_matrix_exp))

# print("a"*600)

# for i in range(len(covar_matrix_exp)):

# 	print(len(covar_matrix_exp[i]), len(covar_matrix_exp))

np.savetxt('covarsov', covar_matrix_exp, newline='\;') 



"""print(cell_feat_value_matrix, cell_feat_value_matrix.shape, cell_feat_value_matrix.size)"""