#sajat fejlesytesu erzekenzseg analizalo program. a ca1pc model parametereit varialjuk egyesevel. minden futtatasbol elvegezzuk a feature extrakciot
import numpy as np

from ca1_pc_model import ca1_pc

import efel

import matplotlib

import matplotlib.pyplot as plt

try:
    import cPickle as pickle
except:
    import pickle
import gzip

#eredeti
"""parameter_list_stabil = [0.0345192775248,
					9.36306346883,
					0.0502860139359,
					0.0671801816115,
					0.0986651013104,
    				0.487285742869,
    				0.0785320232345,
    				0.000178028006746,
    				0.00198128401373,
    				0.00472836079025,
    				-0.0293415133234,
    				1.97397711018,
    				5.5279083377,
    				0.305340240734,
    				0.0112866326715,
    				0.0817014108486,
    				4.42551608175,
    				0.1]"""

#masodik kombo
# parameter_list_stabil = [0.0357,
# 				            10.2673,
# 				            0.0414,
# 				            0.0495,
# 				            0.1362,
# 				            0.4513,
# 				            0.1220,
# 				            0.0002,
# 				            0.0017,
# 				            0.0134,
# 				             -0.0291,
# 				            1.2139,
# 				            2.7682,
# 				            0.3029,
# 				            0.0110,
# 				            0.0905,
# 				            6.8688,
# 				            0.1295]


#elso kombo
parameter_list_stabil = [0.0273,
				            10.1819,
				            0.0570,
				            0.0623,
				            -0.0317,
				            0.5071,
				            0.0848,
				            0.0002,
				            -0.0009,
				            0.0065,
				            -0.0286,
				            1.8327,
				            4.4535,
				            0.3201,
				            0.0119,
				            0.0744,
				            5.0507,
				            0.0967]





delay = 200

duration = 400

#parameter_list = parameter_list,
time, value, info = ca1_pc( delay = delay, amplitude = 1.0, duration = duration)
#EFEL feature lista
feature_list = [
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


#plt.figure()

traces=[]

trace = {}
trace['T'] = time
trace['V'] = value
trace['stim_start'] = [delay]
trace['stim_end'] = [delay + duration]
traces.append(trace)


traces_results_stabil = efel.getFeatureValues(traces, feature_list)

#ez a matrix csak egy soros. az adott stabil/eredeti parameterkombinaciora adott featureok
feature_matrix_stabil = []

"""ez az 5 feature azert lesz kiszedve, mert osszevetve a Sara fele experimentalis adatokbol kivont feature listaval. a ketto metszete lesz valid. tehat ami itt az ottaniakon felul valid marad ki lesz vonva innen es forditva"""
invalid_feature_list = ['min_AHP_indices', 'APlast_width', 'decay_time_constant_after_stim', 'peak_time', 'depolarized_base']

valid_feature_list = []

for i in range(len(traces_results_stabil)):

	
	for key, value in traces_results_stabil[i].iteritems():

		if key not in invalid_feature_list:
			
			

			if not np.array(value).any():

				invalid_feature_list.append(key)
			


traces=[]

#ide raktuk a differenciamatrix nevezojenek megcsinalasat is mert igy egyszerubb
diff_par = [0 for k in range(len(parameter_list_stabil))]

for i in range(len(parameter_list_stabil)):

	parameter_list = list(parameter_list_stabil)

	parameter_list[i] *= 1.1


	diff_par[i] = (parameter_list[i]-parameter_list_stabil[i])

	#parameter_list = parameter_list,
	time, value, info = ca1_pc( delay = delay, amplitude = 1.0, duration = duration)

	# plt.plot(time, value)

	trace = {}
	trace['T'] = time
	trace['V'] = value
	trace['stim_start'] = [delay]
	trace['stim_end'] = [delay + duration]
	traces.append(trace)
	break
	

traces_results = efel.getFeatureValues(traces, feature_list)

feature_matrix = []


valid_feature_list = []



for i in range(len(traces_results)):

	
	for key, value in traces_results[i].iteritems():

		if key not in invalid_feature_list:

			

			if not np.array(value).any():

				invalid_feature_list.append(key)



valid_feature_list = [key for key, value in traces_results[0].iteritems() if key not in invalid_feature_list]

# valid_feature_list_stabil = [x for key, value in traces_results_stabil[0].iteritems() if key not in invalid_feature_list]

for key, value in traces_results_stabil[0].iteritems():

	

	if key not in invalid_feature_list:

		

		if len(value) > 1 and (key == 'AP_rise_time' or key == 'AP_amplitude' or key == 'AP_duration_half_width' or key == 'AP_begin_voltage'
		        or key == 'AP_rise_rate' or key == 'fast_AHP' or key == 'AP_begin_time' or key == 'AP_begin_width' or key == 'AP_duration'
		        or key == 'AP_duration_change' or key == 'AP_duration_half_width_change' or key == 'fast_AHP_change' or key == 'AP_rise_rate_change' or key == 'AP_width'): 

			feature_matrix_stabil.append(np.mean(value[1:]))

		elif len(value) > 1: 

			feature_matrix_stabil.append(np.mean(value))

		else:	

			feature_matrix_stabil.append(value[0])

pickle.dump(feature_matrix_stabil, gzip.GzipFile("feature_matrix_stabil.p", "wb"))

print(feature_matrix_stabil)
print("*"*200)

for i in range(len(traces_results)):

	model_features = []



	for key, value in traces_results[i].iteritems():

		if key not in invalid_feature_list:

			if len(value) > 1 and (key == 'AP_rise_time' or key == 'AP_amplitude' or key == 'AP_duration_half_width' or key == 'AP_begin_voltage'
	           or key == 'AP_rise_rate' or key == 'fast_AHP' or key == 'AP_begin_time' or key == 'AP_begin_width' or key == 'AP_duration'
	           or key == 'AP_duration_change' or key == 'AP_duration_half_width_change' or key == 'fast_AHP_change' or key == 'AP_rise_rate_change' or key == 'AP_width'): 

				model_features.append(np.mean(value[1:]))

			elif len(value) > 1: 

				model_features.append(np.mean(value))

			else:	

				model_features.append(value[0])
	#a 18 varialt parameterkombinaciora adott featureok
	
	#feature matrix elkeszitese
	feature_matrix.append(model_features)
#elmentjuk a valid featureok listajat es a feature matrixot
pickle.dump(feature_matrix, gzip.GzipFile("feature_matrix.p", "wb"))

pickle.dump(valid_feature_list, gzip.GzipFile("valid_feature_list.p", "wb"))

#differencia matrix elkeszitese
diff_feat = [[0 for x in range(len(feature_matrix[0]))] for y in range(len(feature_matrix))]

diff_matrix = [[0 for x in range(len(feature_matrix[0]))] for y in range(len(feature_matrix))]


for i in range(len(feature_matrix)):

	for j in range(len(feature_matrix[i])):
	
		diff_feat[i][j] = (feature_matrix[i][j]-feature_matrix_stabil[j])

		diff_matrix[i][j] = diff_feat[i][j] /diff_par[i]
#differencia matrix elmentese
pickle.dump(diff_matrix, gzip.GzipFile("diff_matrix.p", "wb"))



	 
print("*"*456)

print(feature_matrix_stabil[3],feature_matrix_stabil[5])
print("*"*456)

print(diff_matrix)

print(len(feature_matrix[0]),len(feature_matrix))


