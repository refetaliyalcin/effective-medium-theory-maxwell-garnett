wavelength_nm=[300;500;700;900];
n_pigment=[1;1.2;1.5;1.6];
k_pigment=[0;0.6;0.6;2];
n_medium=[1.5;1.55;1.56;1.6];
k_medium=[0.02;0.06;0.1;0.2];

f_v=0.1;

[n_eff,k_eff] = maxwell(f_v,n_pigment,k_pigment,n_medium,k_medium);

figure
plot(wavelength_nm,n_pigment,wavelength_nm,n_medium,wavelength_nm,n_eff,'LineWidth',2)
xlabel('Wavelength [nm]')
ylabel('Real Refractive Index (n)')
legend('Pigment','Medium','Effective Value','Location','northwest')
figure
plot(wavelength_nm,k_pigment,wavelength_nm,k_medium,wavelength_nm,k_eff,'LineWidth',2)
xlabel('Wavelength [nm]')
ylabel('Imaginary Refractive Index (k)')
legend('Pigment','Medium','Effective Value','Location','northwest')