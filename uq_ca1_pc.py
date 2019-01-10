#uncertainpy-os sensitivity analisys megvalositasa
import uncertainpy as un

from ca1_pc_model import ca1_pc


# Define a parameter list
parameter_list = {"Na_BG_act_inact_shift": 9.36306346883,
					"gmax_K_DRS4_params_voltage_dep_dend": 0.0502860139359,
					"gmax_KM2_params_axon": 0.00472836079025}






					
gmax_Na_BG_soma= 0.0671801816115,
gmax_K_DRS4_params_voltage_dep_soma=0.0986651013104,
gmax_Na_BG_dend= 0.0345192775248,
gmax_Na_BG_axon= 0.487285742869,
gmax_K_DRS4_params_voltage_dep_axon= 0.0785320232345,
gmax_Leak_pyr= 0.000178028006746,
gmax_KM2_params_soma_dend= 0.00198128401373,
X_v0_K_M2_params= -0.0293415133234,
H_ratio= 1.97397711018,
K_A_ratio= 5.5279083377,
gkd_kd_params3= 0.305340240734,
gmax_CaN= 0.0112866326715,
gbar_bk_ch= 0.0817014108486,
CaL_ratio= 4.42551608175,
K_AHP_ratio= 0.1

# Create the parameters
parameters = un.Parameters(parameter_list)



# Set all parameters to have a uniform distribution
# within a 20% interval around their fixed value
parameters.set_all_distributions(un.uniform(0.2))


print(parameters.get_from_uncertain("distribution"))

# Initialize the features
features = un.EfelFeatures()

# Initialize the model
model = un.Model(run=ca1_pc,
                labels=["Time (ms)", "Membrane potential (mV)"])


# Initialize the model with the start and end time of the stimulus
# model = un.NeuronModel(path="/home/peti/Downloads/ca1_pc_petinek/", interpolate=True,
#                        stimulus_start=1000, stimulus_end=1900)

# Perform the uncertainty quantification
UQ = un.UncertaintyQuantification(model,
                                  parameters=parameters,
                                  features=features)
# logger_level="info",
# logger_filename="uncertainpy.log"
# We set the seed to easier be able to reproduce the result
data = UQ.quantify(seed=10)

#print(data)

