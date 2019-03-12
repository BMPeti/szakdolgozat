"""ez a fuggveny osszeegyezteti a kiserleti adatok es a modell valid feaure-jeinek listajat"""

"""try:
    
    import cPickle as pickle

except:
    
    import pickle

import gzip"""

	
#import pickle as p

#import cPickle as pickle

from experiment_matrix import invalid_feat_list_atado


#bemenet az osszehangolas elotti invalid modell feature lista

def valid_feat_list_egyezteto(v):


	"""try:

		import dill as cPickle

	except ImportError:

		import pickle

	import gzip"""
	#beolvasom a kiserleti adatok invalid feature listajat, a pickle valamiert nem mukodott szoval egy fvnyel adom at
	#azota kiderult mi volt a baj, de most mar mindegy:D
	
	#exp_invalid_features = pickle.load(gzip.GzipFile("exp_invalid_feats.p", "rb"))
	exp_invalid_features = []

	exp_invalid_features = invalid_feat_list_atado(exp_invalid_features)

	#hozzaadom a modell invalid listajahoz
	invalid_feats = []

	invalid_feats = list(set(exp_invalid_features).union(set(v)))

	return invalid_feats