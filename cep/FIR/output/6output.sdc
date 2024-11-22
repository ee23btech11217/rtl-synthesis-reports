# ####################################################################

#  Created by Genus(TM) Synthesis Solution 20.10-p001_1 on Thu Nov 21 22:33:50 IST 2024

# ####################################################################

set sdc_version 2.0

set_units -capacitance 1000fF
set_units -time 1000ps

# Set the current design
current_design FIR_filter

create_clock -name "CLK" -period 10.0 -waveform {0.0 5.0} [get_ports clk]
set_clock_transition 0.1 [get_clocks CLK]
set_clock_gating_check -setup 0.0 
set_input_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {inData[31]}]
set_input_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {inData[30]}]
set_input_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {inData[29]}]
set_input_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {inData[28]}]
set_input_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {inData[27]}]
set_input_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {inData[26]}]
set_input_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {inData[25]}]
set_input_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {inData[24]}]
set_input_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {inData[23]}]
set_input_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {inData[22]}]
set_input_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {inData[21]}]
set_input_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {inData[20]}]
set_input_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {inData[19]}]
set_input_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {inData[18]}]
set_input_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {inData[17]}]
set_input_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {inData[16]}]
set_input_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {inData[15]}]
set_input_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {inData[14]}]
set_input_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {inData[13]}]
set_input_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {inData[12]}]
set_input_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {inData[11]}]
set_input_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {inData[10]}]
set_input_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {inData[9]}]
set_input_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {inData[8]}]
set_input_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {inData[7]}]
set_input_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {inData[6]}]
set_input_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {inData[5]}]
set_input_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {inData[4]}]
set_input_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {inData[3]}]
set_input_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {inData[2]}]
set_input_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {inData[1]}]
set_input_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {inData[0]}]
set_input_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports reset]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {outData[31]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {outData[30]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {outData[29]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {outData[28]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {outData[27]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {outData[26]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {outData[25]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {outData[24]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {outData[23]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {outData[22]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {outData[21]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {outData[20]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {outData[19]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {outData[18]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {outData[17]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {outData[16]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {outData[15]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {outData[14]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {outData[13]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {outData[12]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {outData[11]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {outData[10]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {outData[9]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {outData[8]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {outData[7]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {outData[6]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {outData[5]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {outData[4]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {outData[3]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {outData[2]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {outData[1]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {outData[0]}]
set_input_transition 0.1 [get_ports {inData[31]}]
set_input_transition 0.1 [get_ports {inData[30]}]
set_input_transition 0.1 [get_ports {inData[29]}]
set_input_transition 0.1 [get_ports {inData[28]}]
set_input_transition 0.1 [get_ports {inData[27]}]
set_input_transition 0.1 [get_ports {inData[26]}]
set_input_transition 0.1 [get_ports {inData[25]}]
set_input_transition 0.1 [get_ports {inData[24]}]
set_input_transition 0.1 [get_ports {inData[23]}]
set_input_transition 0.1 [get_ports {inData[22]}]
set_input_transition 0.1 [get_ports {inData[21]}]
set_input_transition 0.1 [get_ports {inData[20]}]
set_input_transition 0.1 [get_ports {inData[19]}]
set_input_transition 0.1 [get_ports {inData[18]}]
set_input_transition 0.1 [get_ports {inData[17]}]
set_input_transition 0.1 [get_ports {inData[16]}]
set_input_transition 0.1 [get_ports {inData[15]}]
set_input_transition 0.1 [get_ports {inData[14]}]
set_input_transition 0.1 [get_ports {inData[13]}]
set_input_transition 0.1 [get_ports {inData[12]}]
set_input_transition 0.1 [get_ports {inData[11]}]
set_input_transition 0.1 [get_ports {inData[10]}]
set_input_transition 0.1 [get_ports {inData[9]}]
set_input_transition 0.1 [get_ports {inData[8]}]
set_input_transition 0.1 [get_ports {inData[7]}]
set_input_transition 0.1 [get_ports {inData[6]}]
set_input_transition 0.1 [get_ports {inData[5]}]
set_input_transition 0.1 [get_ports {inData[4]}]
set_input_transition 0.1 [get_ports {inData[3]}]
set_input_transition 0.1 [get_ports {inData[2]}]
set_input_transition 0.1 [get_ports {inData[1]}]
set_input_transition 0.1 [get_ports {inData[0]}]
set_input_transition 0.1 [get_ports reset]
set_wire_load_mode "enclosed"
set_clock_uncertainty -setup 0.01 [get_clocks CLK]
set_clock_uncertainty -hold 0.01 [get_clocks CLK]
