%Part C
close all

%C1 and C2
N = 35; % filter length is 35 points
partCfunction_linearphase(N, "C1: h[n] for N = 35", "C2: |H(\Omega)| for N = 35");
partCfunction_zerophase(N, "C1: h[n] for N = 35", "C2: |H(\Omega)| for N = 35");

%C4
N2 = 71;
partCfunction_linearphase(N2, "C4: h[n] for N = 71", "C4: |H(\Omega)| for N = 71");
partCfunction_zerophase(N2, "C4: h[n] for N = 71", "C4: |H(\Omega)| for N = 71");