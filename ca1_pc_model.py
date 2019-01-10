#a neuron modell megvalositasa


import uncertainpy as un

import numpy as np

from neuron import h

import matplotlib

import matplotlib.pyplot as plt

#eredeti atlag alapu optimalizaciobol szarmazo egy optimalis parameter kombinacio
def ca1_pc(gmax_Na_BG_dend = 0.0345192775248,
            Na_BG_act_inact_shift = 9.36306346883,
            gmax_K_DRS4_params_voltage_dep_dend = 0.0502860139359,
            gmax_Na_BG_soma = 0.0671801816115,
            gmax_K_DRS4_params_voltage_dep_soma = 0.0986651013104,
            gmax_Na_BG_axon = 0.487285742869,
            gmax_K_DRS4_params_voltage_dep_axon = 0.0785320232345,
            gmax_Leak_pyr = 0.000178028006746,
            gmax_KM2_params_soma_dend = 0.00198128401373,
            gmax_KM2_params_axon = 0.00472836079025,
            X_v0_K_M2_params = -0.0293415133234,
            H_ratio  = 1.97397711018,
            K_A_ratio = 5.5279083377,
            gkd_kd_params3 = 0.305340240734,
            gmax_CaN = 0.0112866326715,
            gbar_bk_ch = 0.0817014108486,
            CaL_ratio = 4.42551608175,
            K_AHP_ratio = 0.1,
            delay = 200, amplitude = 1.0, duration = 400):

#a vegen a generalt parameter eloszlasokbol mintavetelezett parameter kombinaciok
#masodik generalt kombo
# def ca1_pc(gmax_Na_BG_dend =  0.0357,
#             Na_BG_act_inact_shift = 10.2673,
#             gmax_K_DRS4_params_voltage_dep_dend = 0.0414,
#             gmax_Na_BG_soma = 0.0495,
#             gmax_K_DRS4_params_voltage_dep_soma = 0.1362,
#             gmax_Na_BG_axon = 0.4513,
#             gmax_K_DRS4_params_voltage_dep_axon = 0.1220,
#             gmax_Leak_pyr = 0.0002,
#             gmax_KM2_params_soma_dend = 0.0017,
#             gmax_KM2_params_axon = 0.0134,
#             X_v0_K_M2_params = -0.0291,
#             H_ratio  = 1.2139,
#             K_A_ratio = 2.7682,
#             gkd_kd_params3 = 0.3029,
#             gmax_CaN = 0.0110,
#             gbar_bk_ch = 0.0905,
#             CaL_ratio = 6.8688,
#             K_AHP_ratio = 0.1295,
#             delay = 200, amplitude = 1.0, duration = 400):


#elso generalt kombo
# def ca1_pc(gmax_Na_BG_dend =  0.0273,
#             Na_BG_act_inact_shift = 10.1819,
#             gmax_K_DRS4_params_voltage_dep_dend = 0.0570,
#             gmax_Na_BG_soma = 0.0623,
#             gmax_K_DRS4_params_voltage_dep_soma = -0.0317,
#             gmax_Na_BG_axon = 0.5071,
#             gmax_K_DRS4_params_voltage_dep_axon = 0.0848,
#             gmax_Leak_pyr = 0.0002,
#             gmax_KM2_params_soma_dend = -0.0009,
#             gmax_KM2_params_axon = 0.0065,
#             X_v0_K_M2_params = -0.0286,
#             H_ratio  = 1.8327,
#             K_A_ratio = 4.4535,
#             gkd_kd_params3 = 0.3201,
#             gmax_CaN = 0.0119,
#             gbar_bk_ch = 0.0744,
#             CaL_ratio = 5.0507,
#             K_AHP_ratio = 0.0967,
#             delay = 200, amplitude = 1.0, duration = 400):




#             gmax_Na_BG_dend = 0.0345192775248,
#             Na_BG_act_inact_shift = 9.36306346883,
#             gmax_K_DRS4_params_voltage_dep_dend = 0.0502860139359,
#             gmax_Na_BG_soma = 0.0671801816115,
#             gmax_K_DRS4_params_voltage_dep_soma = 0.0986651013104,
#             gmax_Na_BG_dend = 0.0345192775248,
#             gmax_Na_BG_axon = 0.487285742869,
#             gmax_K_DRS4_params_voltage_dep_axon = 0.0785320232345,
#             gmax_Leak_pyr = 0.000178028006746,
#             gmax_KM2_params_soma_dend = 0.00198128401373,
#             gmax_KM2_params_axon = 0.00472836079025,
#             X_v0_K_M2_params = -0.0293415133234,
#             H_ratio  = 1.97397711018,
#             K_A_ratio = 5.5279083377,
#             gkd_kd_params3 = 0.305340240734,
#             gmax_CaN = 0.0112866326715,
#             gbar_bk_ch = 0.0817014108486,
#             CaL_ratio = 4.42551608175,
#             K_AHP_ratio = 0.1



    # Setup time
    end_time = 700          # ms
    dt = 0.025             # ms
    time = np.arange(0, end_time + dt, dt)



    h('load_file("/home/peti/Downloads/ca1_pc_petinek/load_model_diff_distribution_fixvhalf_ahp.hoc")')

     # Simulation duration and RUN
    h.dt = dt                                                       # Time step (iteration)
    h.steps_per_ms = 1 / dt

    h.celsius = 34

    # Set the appropriate "nseg"

    h('forall {nseg = int((L/(0.1*lambda_f(100))+.9)/2)*2 + 1}')  # If Ra_max = 105 dend.nseg = 21 and soma.nseg = 1


    h.tstop = end_time
    stim = h.IClamp(h.soma(0.5))
    stim.delay = delay
    stim.amp = amplitude
    stim.dur = duration

    h.stdinit()
 
   
    # gmax_Na_BG_dend = 0.0345192775248
    # Na_BG_act_inact_shift = 9.36306346883
    # gmax_K_DRS4_params_voltage_dep_dend = 0.0502860139359
    # gmax_Na_BG_soma = 0.0671801816115
    # gmax_K_DRS4_params_voltage_dep_soma = 0.0986651013104
    # gmax_Na_BG_axon = 0.487285742869
    # gmax_K_DRS4_params_voltage_dep_axon = 0.0785320232345
    # gmax_Leak_pyr = 0.000178028006746
    # gmax_KM2_params_soma_dend = 0.00198128401373
    # gmax_KM2_params_axon = 0.00472836079025
    # X_v0_K_M2_params = -0.0293415133234
    # H_ratio  = 1.97397711018
    # K_A_ratio = 5.5279083377
    # gkd_kd_params3 = 0.305340240734
    # gmax_CaN = 0.0112866326715
    # gbar_bk_ch = 0.0817014108486
    # CaL_ratio = 4.42551608175
    # K_AHP_ratio = 0.1
   

    """gmax_Na_BG_dend = parameter_list[0]
    Na_BG_act_inact_shift = parameter_list[1]
    gmax_K_DRS4_params_voltage_dep_dend = parameter_list[2]
    gmax_Na_BG_soma = parameter_list[3]
    gmax_K_DRS4_params_voltage_dep_soma = parameter_list[4]
    gmax_Na_BG_axon = parameter_list[5]
    gmax_K_DRS4_params_voltage_dep_axon = parameter_list[6]
    gmax_Leak_pyr = parameter_list[7]
    gmax_KM2_params_soma_dend = parameter_list[8]
    gmax_KM2_params_axon = parameter_list[9]
    X_v0_K_M2_params = parameter_list[10]
    H_ratio  = parameter_list[11]
    K_A_ratio = parameter_list[12]
    gkd_kd_params3 = parameter_list[13]
    gmax_CaN = parameter_list[14]
    gbar_bk_ch = parameter_list[15]
    CaL_ratio = parameter_list[16]
    K_AHP_ratio = parameter_list[17]"""


# 18
# gmax_Na_BG_dend 0
# Na_BG_act_inact_shift 1
# gmax_K_DRS4_params_voltage_dep_dend 2
# gmax_Na_BG_soma 3
# gmax_K_DRS4_params_voltage_dep_soma 4
# gmax_Na_BG_axon 5
# gmax_K_DRS4_params_voltage_dep_axon 6
# gmax_Leak_pyr 7
# gmax_KM2_params_soma_dend 8
# gmax_KM2_params_axon 9
# X_v0_K_M2_params 10
# H_ratio  11
# K_A_ratio 12
# gkd_kd_params3 13
# gmax_CaN 14
# gbar_bk_ch  15
# CaL_ratio 16
# K_AHP_ratio 17
    for sec in h.all_dendrites:
        sec.gmax_Na_BG_dend = gmax_Na_BG_dend
        sec.Y_v0_Na_BG_dend = sec.X_v0_Na_BG_dend-Na_BG_act_inact_shift
        sec.gmax_K_DRS4_params_voltage_dep = gmax_K_DRS4_params_voltage_dep_dend
        sec.gmax_K_M2_params = gmax_KM2_params_soma_dend
        for seg in sec:
                h('soma distance()')
                dist=(h.distance(seg.x))
        
                if (dist>100) and (dist<=150):
                        seg.gmax_H_CA1pyr_dist=(H_ratio*0.00002+H_ratio*4e-07*dist)
                        seg.gmax_H_CA1pyr_prox=0
                        seg.gmax_K_A_prox=0
                        seg.gmax_K_A_dist=(0.0035*K_A_ratio+K_A_ratio*5.5e-05*dist)
                        seg.gmax_CaL_pool2=(0.002*CaL_ratio+CaL_ratio*(-1.3333e-05)*dist)                                
                        seg.gmax_K_AHP3_lpool=(0.002*K_AHP_ratio+K_AHP_ratio*(-1.3333e-05)*dist)

                elif (dist>150.0) and (dist<=400.0):
                        seg.gmax_H_CA1pyr_dist=(H_ratio*0.00002+H_ratio*4e-07*dist)
                        seg.gmax_H_CA1pyr_prox=0
                        seg.gmax_K_A_prox=0
                        seg.gmax_K_A_dist=(0.0035*K_A_ratio+K_A_ratio*5.5e-05*dist)
                        seg.gmax_CaL_pool2=(0.002*CaL_ratio+CaL_ratio*(-1.3333e-05)*150)
                        seg.gmax_K_AHP3_lpool=(0.002*K_AHP_ratio+K_AHP_ratio*(-1.3333e-05)*150)

                elif (dist<=100.0) and (dist>0.0):
                        seg.gmax_H_CA1pyr_dist=0
                        seg.gmax_H_CA1pyr_prox=(H_ratio*0.00002+H_ratio*4e-07*dist)
                        seg.gmax_K_A_prox=(0.0035*K_A_ratio+K_A_ratio*5.5e-05*dist)
                        seg.gmax_K_A_dist=0
                        seg.gmax_CaL_pool2=(0.002*CaL_ratio+CaL_ratio*(-1.3333e-05)*dist)
                        seg.gmax_K_AHP3_lpool=(0.002*K_AHP_ratio+K_AHP_ratio*(-1.3333e-05)*dist)
                                
                elif (dist>400.0):
                        seg.gmax_H_CA1pyr_dist=0.00018*H_ratio
                        seg.gmax_H_CA1pyr_prox=0
                        seg.gmax_K_A_prox=0
                        seg.gmax_K_A_dist=0.0255*K_A_ratio
                        seg.gmax_CaL_pool2=(0.002*CaL_ratio+CaL_ratio*(-1.3333e-05)*150)
                        seg.gmax_K_AHP3_lpool=(0.002*K_AHP_ratio+K_AHP_ratio*(-1.3333e-05)*150)

                elif (dist<=0.0):
                        seg.gmax_H_CA1pyr_prox=0.00002*H_ratio
                        seg.gmax_H_CA1pyr_dist=0
                        seg.gmax_K_A_prox=0.0035*K_A_ratio
                        seg.gmax_K_A_dist=0
                        seg.gmax_CaL_pool2=0.002*CaL_ratio
                        seg.gmax_K_AHP3_lpool=0.002*K_AHP_ratio
    for sec in h.soma:
            sec.gmax_Na_BG_soma = gmax_Na_BG_soma
            sec.Y_v0_Na_BG_soma = sec.X_v0_Na_BG_soma-Na_BG_act_inact_shift
            sec.gmax_K_DRS4_params_voltage_dep = gmax_K_DRS4_params_voltage_dep_soma
            sec.gmax_K_M2_params = gmax_KM2_params_soma_dend
            sec.gmax_H_CA1pyr_prox = 0.00002*H_ratio
            sec.gmax_K_A_prox=0.0035*K_A_ratio
            sec.gkd_kd_params3=gkd_kd_params3
            sec.gmax_CaN_BG_pool2=gmax_CaN
            sec.gbar_bk_ch_pool=gbar_bk_ch
            sec.gmax_CaL_pool2=0.00021*CaL_ratio
            sec.gmax_K_AHP3_lpool = 0.005*K_AHP_ratio          
    for sec in h.all_axon:#
            sec.gmax_Na_BG_axon = gmax_Na_BG_axon
            sec.Y_v0_Na_BG_axon = sec.X_v0_Na_BG_axon-Na_BG_act_inact_shift
            sec.gmax_K_DRS4_params_voltage_dep = gmax_K_DRS4_params_voltage_dep_axon
            sec.gmax_K_M2_params = gmax_KM2_params_axon
            sec.gmax_K_A_prox=0.0035*K_A_ratio
            sec.gmax_H_CA1pyr_prox = 0.00002*H_ratio
    for sec in h.all:
            sec.gmax_Leak_pyr = gmax_Leak_pyr
            sec.X_v0_K_M2_params= X_v0_K_M2_params

    v_vec = h.Vector()
    t_vec = h.Vector()
    v_vec.record(h.soma(0.5)._ref_v)
    t_vec.record(h._ref_t)

    h.v_init = -70
    h.finitialize(h.v_init)                                         # Starting membrane potential

    h.init()
    h.run()

    time = np.asarray(t_vec.to_python())
    values = np.asarray(v_vec.to_python())



    # Add info needed by certain spiking features and efel features
    info = {"stimulus_start": time[0], "stimulus_end": time[-1]}


    return time, values, info

# t,v,i = ca1_pc()

# plt.plot(t, v)

# plt.show()