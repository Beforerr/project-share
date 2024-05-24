
# %%
# Define the labels for the plots
j_lab = L"Current Density ($nA/m^2$)"
l_lab = L"Thickness ($km$)"

l_norm_lab = L"Normalized Thickness ($d_i$)"
j_norm_lab = L"Normalized Current Density ($J_A$)"

di_lab = L"Ion Inertial Length ($km$)"
jA_lab = L"Alfvénic Current Density ($nA/m^2$)"

B_lab = L"Magnetic Field ($nT$)"
b_fit_lab = L"Fitted Amplitude ($nT$)"
density_lab = L"Density ($cm^{-3}$)"

# %%
# Define the mappings
di_map = :ion_inertial_length => di_lab
di_log_map = :ion_inertial_length => log10 => L"Log %$di_lab"
l_map = :L_k => l_lab
l_norm_map = :L_k_norm => l_norm_lab
l_log_map = :L_k => log10 => L"Log %$l_lab"
l_norm_log_map = :L_k_norm => log10 => L"Log %$l_norm_lab"

jA_map = :j_Alfven => jA_lab
jA_log_map = :j_Alfven => log10 => L"Log %$jA_lab"

j_map = :j0_k => j_lab
j_log_map = :j0_k => log10 => L"Log %$j_lab"
j_norm_map = :j0_k_norm => j_norm_lab
j_norm_log_map = :j0_k_norm => log10 => L"Log %$j_norm_lab"

b_map = :"fit.vars.amplitude" => abs => b_fit_lab
b_log_map = :"fit.vars.amplitude" => log10 ∘ abs => L"Log %$b_fit_lab"
B_map = :"B.mean" => B_lab
B_log_map = :"B.mean" => log10 => L"Log %$B_lab"

density_map = :"n.mean" => density_lab
density_log_map = :"n.mean" => log10 => L"Log %$density_lab"


v_Alfven_map = "v.Alfven.change.l" => L"\Delta V_{A,l}"
v_ion_map = "v.ion.change.l" => L"\Delta V_{i,l}"