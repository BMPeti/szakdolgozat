#Sara altal alapitott altalam tovabbfejlesztett kod a kiserleti adatok matrixanak elkeszitesehez, a szukseges feladatok elvegzesere...
all_feats = [
    "AHP1_depth_from_peak",
    "AHP2_depth_from_peak",
    "AHP_depth",
    "AHP_depth_abs",
    "AHP_depth_abs_slow",
    "AHP_depth_diff",
    "AHP_depth_from_peak",
    "AHP_slow_time",
    "AHP_time_from_peak",
    "AP1_amp",
    "AP1_begin_voltage",
    "AP1_begin_width",
    "AP1_peak",
    "AP1_width",
    "AP2_AP1_begin_width_diff",
    "AP2_AP1_diff",
    "AP2_AP1_peak_diff",
    "AP2_amp",
    "AP2_begin_voltage",
    "AP2_begin_width",
    "AP2_peak",
    "AP2_width",
    "AP_amplitude",
    "AP_amplitude_change",
    "AP_amplitude_diff",
    "AP_amplitude_from_voltagebase",
    "AP_begin_indices",
    "AP_begin_time",
    "AP_begin_voltage",
    "AP_begin_width",
    "AP_duration",
    "AP_duration_change",
    "AP_duration_half_width",
    "AP_duration_half_width_change",
    "AP_end_indices",
    "AP_fall_indices",
    "AP_fall_rate",
    "AP_fall_rate_change",
    "AP_fall_time",
    "AP_height",
    "AP_phaseslope",
    "AP_phaseslope_AIS",
    "AP_rise_indices",
    "AP_rise_rate",
    "AP_rise_rate_change",
    "AP_rise_time",
    "AP_width",
    "APlast_amp",
    "APlast_width",
    "BAC_maximum_voltage",
    "BAC_width",
    "BPAPAmplitudeLoc1",
    "BPAPAmplitudeLoc2",
    "BPAPHeightLoc1",
    "BPAPHeightLoc2",
    "BPAPatt2",
    "BPAPatt3",
    "E10",
    "E11",
    "E12",
    "E13",
    "E14",
    "E15",
    "E16",
    "E17",
    "E18",
    "E19",
    "E2",
    "E20",
    "E21",
    "E22",
    "E23",
    "E24",
    "E25",
    "E26",
    "E27",
    "E3",
    "E39",
    "E39_cod",
    "E4",
    "E40",
    "E5",
    "E6",
    "E7",
    "E8",
    "E9",
    "ISI_CV",
    "ISI_log_slope",
    "ISI_log_slope_skip",
    "ISI_semilog_slope",
    "ISI_values",
    "Spikecount",
    "Spikecount_stimint",
    "adaptation_index",
    "adaptation_index2",
    "all_ISI_values",
    "amp_drop_first_last",
    "amp_drop_first_second",
    "amp_drop_second_last",
    "burst_ISI_indices",
    "burst_mean_freq",
    "burst_number",
    "check_AISInitiation",
    "decay_time_constant_after_stim",
    "depolarized_base",
    "doublet_ISI",
    "fast_AHP",
    "fast_AHP_change",
    "interburst_voltage",
    "inv_fifth_ISI",
    "inv_first_ISI",
    "inv_fourth_ISI",
    "inv_last_ISI",
    "inv_second_ISI",
    "inv_third_ISI",
    "inv_time_to_first_spike",
    "irregularity_index",
    "is_not_stuck",
    "max_amp_difference",
    "maximum_voltage",
    "maximum_voltage_from_voltagebase",
    "mean_AP_amplitude",
    "mean_frequency",
    "min_AHP_indices",
    "min_AHP_values",
    "min_voltage_between_spikes",
    "minimum_voltage",
    "number_initial_spikes",
    "ohmic_input_resistance",
    "ohmic_input_resistance_vb_ssse",
    "peak_indices",
    "peak_time",
    "peak_voltage",
    "sag_amplitude",
    "sag_ratio1",
    "sag_ratio2",
    "single_burst_ratio",
    "spike_half_width",
    "spike_width2",
    "steady_state_hyper",
    "steady_state_voltage",
    "steady_state_voltage_stimend",
    "time",
    "time_constant",
    "time_to_first_spike",
    "time_to_last_spike",
    "time_to_second_spike",
    "trace_check",
    "voltage",
    "voltage_after_stim",
    "voltage_base",
    "voltage_deflection",
    "voltage_deflection_begin",
    "voltage_deflection_vb_ssse",
    "voltage",
    "time",
    "ISIs",
    "initburst_sahp",
    "initburst_sahp_vb",
    "initburst_sahp_ssse"
]


import os
import json
import collections

try:
    import cPickle as pickle
except:
    import pickle
import gzip

import numpy as np


cells = ["95810022", "95810030", "95817003", "95817007", "95822000", "95831000", "95831002", "95831003"]

basedir = "/home/peti/Downloads/CA1_PC_cAC-noljp_ALL_features_new_output_nanmean_cell_False/SP_PC"


"""Collecting feature names in a matrix that has value in the json"""
cell_feat_name_matrix = []
for cell in os.listdir(basedir):
	if cell in cells:
		##print cell
		feat_name_list = []
		with open(basedir + '/' + cell + '/' + 'features.json') as f:
			feats = json.load(f, object_pairs_hook=collections.OrderedDict)
		##print feats
		feats_step1 = feats["step_1.0"]["soma"]
		#print len(feats_step1)
		for i in range(len(feats_step1)):
			feat_name_list.append(feats_step1[i]["feature"])

		cell_feat_name_matrix.append(feat_name_list)

##print len(cell_feat_name_matrix)


"""checking difference - not all the cells have all the features - those features should be excluded"""
#print set(cell_feat_name_matrix[2]) - set(cell_feat_name_matrix[0])



"""ez a 3 feature azert lesz kiszedve, mert osszevetve a Peti fele (uncertaintys modell) feature listaval a ketto metszete lesz valid. tehat ami itt az ottaniakon felul valid marad ki lesz vonva innen es forditva"""
#invalid_feats = ["ohmic_input_resistance", 'ohmic_input_resistance_vb_ssse', 'trace_check']
"""itt kiszedjuk a diszkret featureoket is"""
#diszkret_feats = ["Spikecount","Spikecount_stimint","number_initial_spikes","burst_number","is_not_stuck","adaptation_index","adaptation_index2","irregularity_index","AP_begin_indices","AP_end_indices","AP_fall_indices","AP_rise_indices","burst_ISI_indices","min_AHP_indices","peak_indices"]
"""itt kiszedem a timeot mert a featnormalas nem megy miatta mivel a varianciaja 0"""
#menjinnen = ["time"]

#invalid_feats = invalid_feats + diszkret_feats + menjinnen

"""kiszedem a diszkret feature-oket, majd a kiserleti adatok invalid feature listajanak elkeszitese utan azokat a feature-oket,
melyeknek varianciaja 0., majd osszehangolom a valid feature listat a modellben hasznalt valid feature listaval
egy fuggveny segitsegevel"""

invalid_feats = []
"""itt kiszedjuk a diszkret featureoket"""
diszkret_feats = ["Spikecount","Spikecount_stimint","number_initial_spikes","burst_number","is_not_stuck","adaptation_index","adaptation_index2","irregularity_index","AP_begin_indices","AP_end_indices","AP_fall_indices","AP_rise_indices","burst_ISI_indices","min_AHP_indices","peak_indices"]

invalid_feats = diszkret_feats

"""Find invalid features. (Valid features are those that have a value for ALL of the cells"""
for j in range(len(all_feats)):
	for i in range(len(cell_feat_name_matrix)):
		##print cell_feat_name_matrix[0][j]
		if all_feats[j] not in cell_feat_name_matrix[i] and all_feats[j] not in invalid_feats:
			#print all_feats[j]
			invalid_feats.append(all_feats[j])
#print(invalid_feats)
#print(len(invalid_feats))

#itt kell majd meghivni az osszehangolo fvt
"""for i in all_feats = [all_feats - invalid_feats]
print(all_feats)
print(len(all_feats))"""

"""Creating matrix excluding the invalid features"""

cell_feat_value_matrix = []
cell_feat_name_matrix = []
for cell in os.listdir(basedir):
	if cell in cells:
		##print cell
		feat_name_list = []
		feat_value_list = []
		with open(basedir + '/' + cell + '/' + 'features.json') as f:
			feats = json.load(f, object_pairs_hook=collections.OrderedDict)
		##print feats
		feats_step1 = feats["step_1.0"]["soma"]
		##print len(feats_step1)
		for i in range(len(feats_step1)):
			if feats_step1[i]["feature"] not in invalid_feats:
				feat_name_list.append(feats_step1[i]["feature"])
				feat_value_list.append(feats_step1[i]["val"][0])
			
		#print len(feat_name_list)
		#print len(feat_value_list)

		cell_feat_value_matrix.append(feat_value_list)
		cell_feat_name_matrix.append(feat_name_list)

exp_valid_features = cell_feat_name_matrix[0]


#print(exp_valid_features)
#print(len(exp_valid_features))
cell_feat_value_matrix = np.asarray(cell_feat_value_matrix)

cell_feat_value_matrix = cell_feat_value_matrix.transpose()

#kiszamolom a varianciat
variances = []
for i in range(len(cell_feat_value_matrix)):
    variances.append(np.var(cell_feat_value_matrix[i]))
#print(variances)
#print(len(variances))


#keszitek egy dictionaryt a varianciakbol
keys = exp_valid_features
values = variances
dictionary_exp_var = dict(zip(keys, values))
#print(dictionary_exp_var)
# print(len(dictionary_exp_var))
# print(dictionary_exp_var.get("time"))

#kiszedem ahol variancia 0
nullvar = []

for k,v in dictionary_exp_var.iteritems():
  if dictionary_exp_var[k] == None or dictionary_exp_var[k] == 0.0:
    nullvar.append(k)
#print(nullvar)
#print(len(nullvar))
invalid_feats = invalid_feats + nullvar
pickle.dump(invalid_feats, gzip.GzipFile("exp_invalid_feats.p", "wb"))

print(invalid_feats)
print(len(invalid_feats))

"""ez a fv atadja a kiserleti invalid feature listat"""
def invalid_feat_list_atado(v):
    v = invalid_feats
    return v

"""Saving important data"""

pickle.dump(cell_feat_value_matrix, gzip.GzipFile("cell_feat_value_matrix.p", "wb"))
pickle.dump(exp_valid_features, gzip.GzipFile("exp_valid_features.p", "wb"))
pickle.dump(cells, gzip.GzipFile("cell.p", "wb"))


"""with open('test.txt', 'w') as a:
        a.write('%s: 05' % name)"""



"""Checking if there is difference"""
#print set(cell_feat_name_matrix[0]) - set(cell_feat_name_matrix[1])
#print set(cell_feat_name_matrix[1]) - set(cell_feat_name_matrix[0])
	
"""Checking if all the features are the same at the same index"""
# for i in range(len(cell_feat_name_matrix)):
	#print cell_feat_name_matrix[i][100]

"""More checking - values to compare with the results of feature extraction"""

# num_feat = 100
# num_cell = 7
#print exp_valid_features[num_feat]
#print cells[num_cell]

#print cell_feat_name_matrix[num_cell][num_feat]
#print cell_feat_value_matrix[num_cell][num_feat]
