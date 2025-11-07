




folder = 'InsertPathHere';


res_2u2t = load(strcat(folder,'LossOnlyKR_2_Users_2_Trusted.mat'))
res_3u2t = load(strcat(folder,'LossOnlyKR_3_Users_2_Trusted.mat'))


adr = 'InsertFileLocationHere';

L_2B2T_low = table2array(readtable(adr,'Range','R4:R17'));
KR_2B2T_low = table2array(readtable(adr,'Range','S4:S17'));


adr = 'InsertFileLocationHere';

L_3B2T_low = table2array(readtable(adr,'Range','R38:R51'));
KR_3B2T_low = table2array(readtable(adr,'Range','S38:S51'));

figure;
semilogy(res_2u2t.Lengths,res_2u2t.keyRates,'color',[0 0.4470 0.7410], 'Linestyle','-', 'Displayname','2 Bobs, 2 trusted, analytical','LineWidth',1.5);
hold on
semilogy(L_2B2T_low,KR_2B2T_low,'bx', 'Displayname','2 Bobs, 2 Trusted, \xi = 1e-6','LineWidth',1.5)
semilogy(res_3u2t.Lengths,res_3u2t.keyRates,'color',[0.8500 0.3250 0.0980], 'Linestyle','-', 'Displayname','3 Bobs, 2 trusted, analytical','LineWidth',1.5);
semilogy(L_3B2T_low,KR_3B2T_low,'ro', 'Displayname','3 Bobs, 2 Trusted, \xi = 1e-6','LineWidth',1.5)


xlim([0 105])
xlabel('Transmission Distance {\it L} (km)')
ylabel('Secure Key Rate (Bits per Channel use)')
%title('N = 1E12, \xi = 0.01, \eta_d = 1, \nu_{el} = 0');
grid on
legend
hold off







folder = 'InsertPathHere';

res_2u2t = load(strcat(folder,'LossOnlyKR_2_Users_2_Trusted.mat'))
res_5u2t = load(strcat(folder,'LossOnlyKR_5_Users_2_Trusted.mat'))


adr = 'InsertFileLocationHere';

L_2B2T_low = table2array(readtable(adr,'Range','C4:C17'));
KR_2B2T_low = table2array(readtable(adr,'Range','D4:D17'));


adr = 'InsertFileLocationHere';

L_5B2T_low = table2array(readtable(adr,'Range','C65:C78'));
KR_5B2T_low = table2array(readtable(adr,'Range','D65:D78'));


adr = 'InsertFileLocationHere';


L_2B2T_fin1E10 = table2array(readtable(adr,'Range','F4:F8'));
KR_2B2T_fin1E10 = table2array(readtable(adr,'Range','G4:G8'));


adr = 'InsertFileLocationHere';

L_2B2T_fin1E12 = table2array(readtable(adr,'Range','F22:F30'));
KR_2B2T_fin1E12 = table2array(readtable(adr,'Range','G22:G30'));

figure;
semilogy(res_2u2t.Lengths,res_2u2t.keyRates,'color',[0 0.4470 0.7410], 'Linestyle','-', 'Displayname','2 Bobs, 2 trusted, \xi = 0, N = \infty','LineWidth',1.5);
hold on
semilogy(L_2B2T_low,KR_2B2T_low,'bx:', 'Displayname','2 Bobs, 2 Trusted, \xi = 10^{-2}, N = \infty','LineWidth',1.5)
semilogy(res_5u2t.Lengths,res_5u2t.keyRates,'color',[0.8500 0.3250 0.0980], 'Linestyle','-', 'Displayname','5 Bobs, 2 trusted, \xi = 0, N = \infty','LineWidth',1.5);
semilogy(L_5B2T_low,KR_5B2T_low,'ro:', 'Displayname','5 Bobs, 2 Trusted, \xi = 10^{-2}, N = \infty','LineWidth',1.5)
semilogy(L_2B2T_fin1E10,KR_2B2T_fin1E10,'color',[0.3921 0.5843 0.9294], 'Linestyle','--', 'Displayname','2 Bobs, 2 Trusted, \xi = 10^{-2}, N=10^{10}','LineWidth',1.5)
semilogy(L_2B2T_fin1E12,KR_2B2T_fin1E12,'color',[0.0627 0.3059 0.5451], 'Linestyle','-.', 'Displayname','2 Bobs, 2 Trusted, \xi = 10^{-2}, N=10^{12}','LineWidth',1.5)


xlim([0 100])
xlabel('Transmission Distance {\it L} (km)')
ylabel('Secure Key Rate (Bits per Channel use)')
%title('N = 1E12, \xi = 0.01, \eta_d = 1, \nu_{el} = 0');
grid on
legend
hold off



%%% in dB

figure;
semilogy(3+0.2*res_2u2t.Lengths,res_2u2t.keyRates,'color',[0 0.4470 0.7410], 'Linestyle','-', 'Displayname','2 Bobs, 2 trusted, \xi = 0, N = \infty','LineWidth',1.5);
hold on
semilogy(3+0.2*L_2B2T_low,KR_2B2T_low,'bx:', 'Displayname','2 Bobs, 2 Trusted, \xi = 10^{-2}, , N = \infty','LineWidth',1.5)
%semilogy(7+0.2*res_5u2t.Lengths,res_5u2t.keyRates,'color',[0.8500 0.3250 0.0980], 'Linestyle','-', 'Displayname','5 Bobs, 2 trusted, \xi = 0','LineWidth',1.5);
%semilogy(7+0.2*L_5B2T_low,KR_5B2T_low,'ro:', 'Displayname','5 Bobs, 2 Trusted, \xi = 10^{-2}, , N = \infty','LineWidth',1.5)
semilogy(3+0.2*L_2B2T_fin1E10,KR_2B2T_fin1E10,'color',[0.3921 0.5843 0.9294], 'Linestyle','--', 'Displayname','2 Bobs, 2 Trusted, \xi = 10^{-2}, N=10^{10}','LineWidth',1.5)
semilogy(3+0.2*L_2B2T_fin1E12,KR_2B2T_fin1E12,'color',[0.0627 0.3059 0.5451], 'Linestyle','-.', 'Displayname','2 Bobs, 2 Trusted, \xi = 10^{-2}, N=10^{12}','LineWidth',1.5)
semilogy(-10*log10(0.27),2.18e-3, 'Marker', 'pentagram', 'Displayname', 'Exp. Result, N = 2.3\times 10^9','LineWidth',1.5, 'color',[0.9844 0.6133 0.0117])
xline(3,'color','black', 'HandleVisibility','off')

xlim([0 15])
ylim([1e-4,1e0])
xlabel('Total loss in dB')
ylabel('Secure Key Rate (Bits per Channel use)')
%title('N = 1E12, \xi = 0.01, \eta_d = 1, \nu_{el} = 0');
grid on
legend
hold off



figure;
%semilogy(res_2u2t.Lengths,res_2u2t.keyRates,'color',[0 0.4470 0.7410], 'Linestyle','-', 'Displayname','2 Bobs, 2 trusted, \xi = 0','LineWidth',1.5);
%hold on
semilogy(L_2B2T_low,KR_2B2T_low,'color',[0 0.4470 0.7410], 'Linestyle','-', 'Displayname','2 Bobs, 2 Trusted, \xi = 10^{-2}, N = \infty','LineWidth',1.5)
hold on
%semilogy(res_5u2t.Lengths,res_5u2t.keyRates,'color',[0.8500 0.3250 0.0980], 'Linestyle','-', 'Displayname','5 Bobs, 2 trusted, \xi = 0','LineWidth',1.5);
semilogy(L_5B2T_low,KR_5B2T_low,'color',[0.8500 0.3250 0.0980], 'Linestyle','-', 'Displayname','5 Bobs, 2 Trusted, \xi = 10^{-2}, N = \infty','LineWidth',1.5)
semilogy(L_2B2T_fin1E10,KR_2B2T_fin1E10,'color',[0.3921 0.5843 0.9294], 'Linestyle','--', 'Displayname','2 Bobs, 2 Trusted, \xi = 10^{-2}, N=10^{10}','LineWidth',1.5)
semilogy(L_2B2T_fin1E12,KR_2B2T_fin1E12,'color',[0.0627 0.3059 0.5451], 'Linestyle','--', 'Displayname','2 Bobs, 2 Trusted, \xi = 10^{-2}, N=10^{12}','LineWidth',1.5)
semilogy(10,2.18e-3, 'Marker', 'pentagram', 'Displayname', '2 Bobs, 2 Trusted, N = 2.3\times 10^9, experiment','LineWidth',1.5, 'color',[0.9844 0.6133 0.0117])


xlim([0 40])
xlabel('Transmission Distance {\it L} (km)')
ylabel('Secure Key Rate (Bits per Channel use)')
%title('N = 1E12, \xi = 0.01, \eta_d = 1, \nu_{el} = 0');
grid on
legend
hold off



%%%---------------------------------------------------%%%
%                 Key Rate vs NBob                      %
%%%---------------------------------------------------%%%


adr = 'InsertFileLocationHere';


NB_num = table2array(readtable(adr,'Range','C5:C16'));
KR_num = table2array(readtable(adr,'Range','D5:D16'));

NB_ana = table2array(readtable(adr,'Range','J5:J16'));
KR_ana = table2array(readtable(adr,'Range','K5:K16'));

NB_fin = table2array(readtable(adr,'Range','C42:C44'));
KR_fin = table2array(readtable(adr,'Range','D42:D44'));


figure;
semilogy(NB_ana,KR_ana,'color',[0 0.4470 0.7410], 'Marker','x', 'Linestyle','none','Displayname','2 Bobs trusted, \xi = 0, N = \infty','LineWidth',1.5);
hold on
semilogy(NB_num, KR_num,'color',[0.8500 0.3250 0.0980], 'Marker','o', 'Linestyle','none', 'Displayname','2 Bobs trusted, \xi = 10^{-2}, N = \infty','LineWidth',1.5);
semilogy(NB_fin, KR_fin,'color',[0.0627 0.3059 0.5451], 'Marker','^', 'Linestyle','none', 'Displayname','2 Bobs trusted, \xi = 10^{-6}, N=10^{12}','LineWidth',1.5);
%semilogy(2,7e-3, 'Marker', 'pentagram', 'Displayname', '2 Bobs, 2 trusted, N = 2.3\times 10^9, experiment','LineWidth',1.5, 'color',[0.9844 0.6133 0.0117])



xlim([0 32])
ylim([1e-4 1e0])
xlabel('Total Number of Bobs N_B')
ylabel('Secure Key Rate (Bits per Channel use)')
%title('N = 1E12, \xi = 0.01, \eta_d = 1, \nu_{el} = 0');
grid on
legend
hold off





%%%---------------------------------------------------%%%
%                 Examination Numerics                  %
%%%---------------------------------------------------%%%


adr = 'InsertFileLocationHere';


xi_num = table2array(readtable(adr,'Range','C4:C10'));
KR_num = table2array(readtable(adr,'Range','D4:D10'));

xi_ana = table2array(readtable(adr,'Range','F4:F10'));
KR_ana = table2array(readtable(adr,'Range','G4:G10'));


figure;
semilogx(xi_ana,KR_ana,'color',[0 0.4470 0.7410], 'Linestyle','-','Displayname','analytical result for \xi=0','LineWidth',1.5);
hold on
semilogx(xi_num, KR_num,'color',[0.8500 0.3250 0.0980], 'Marker','x', 'Linestyle','none', 'Displayname','numerical result','LineWidth',1.5);



xlim([1e-8, 1e-2])
xlabel('Excess noise \xi')
ylabel('Secure Key Rate (Bits per Channel use)')
set(gca, 'XDir','reverse')
%title('N = 1E12, \xi = 0.01, \eta_d = 1, \nu_{el} = 0');
grid on
legend
hold off






folder = 'InsertFileLocationHere';

res_2u2t = load(strcat(folder,'LossOnlyKR_2_Users_2_Trusted.mat'))
res_3u2t = load(strcat(folder,'LossOnlyKR_3_Users_2_Trusted.mat'))


adr = 'InsertFileLocationHere';

L_2B2T_low = table2array(readtable(adr,'Range','R4:R17'));
KR_2B2T_low = table2array(readtable(adr,'Range','S4:S17'));
L_3B2T_low = table2array(readtable(adr,'Range','R38:R51'));
KR_3B2T_low = table2array(readtable(adr,'Range','S38:S51'));

figure;
semilogy(res_2u2t.Lengths,res_2u2t.keyRates,'color',[0 0.4470 0.7410], 'Linestyle','-', 'Displayname','2 Bobs, 2 trusted analytical, \xi = 0','LineWidth',1.5);
hold on
semilogy(L_2B2T_low,KR_2B2T_low,'bx', 'Displayname','2 Bobs, 2 Trusted numerical, \xi = 10^{-6}','LineWidth',1.5)
semilogy(res_3u2t.Lengths,res_3u2t.keyRates,'color',[0.8500 0.3250 0.0980], 'Linestyle','-', 'Displayname','3 Bobs, 2 trusted analytical, \xi = 0','LineWidth',1.5);
semilogy(L_3B2T_low,KR_3B2T_low,'ro', 'Displayname','3 Bobs, 2 Trusted numerical, \xi = 10^{-6}','LineWidth',1.5)


xlim([0 100])
xlabel('Transmission Distance {\it L} (km)')
ylabel('Secure Key Rate (Bits per Channel use)')
%title('N = 1E12, \xi = 0.01, \eta_d = 1, \nu_{el} = 0');
grid on
legend
hold off



%Combined Figure


folder = 'InsertPathHere';

res_2u2t = load(strcat(folder,'LossOnlyKR_2_Users_2_Trusted.mat'))
res_5u2t = load(strcat(folder,'LossOnlyKR_5_Users_2_Trusted.mat'))


adr = 'InsertFileLocationHere';

L_2B2T_low = table2array(readtable(adr,'Range','C4:C17'));
KR_2B2T_low = table2array(readtable(adr,'Range','D4:D17'));


adr = 'InsertFileLocationHere';

L_5B2T_low = table2array(readtable(adr,'Range','C65:C78'));
KR_5B2T_low = table2array(readtable(adr,'Range','D65:D78'));


adr = 'InsertFileLocationHere';

L_2B2T_fin1E10 = table2array(readtable(adr,'Range','F4:F8'));
KR_2B2T_fin1E10 = table2array(readtable(adr,'Range','G4:G8'));


adr = 'InsertFileLocationHere';

L_2B2T_fin1E12 = table2array(readtable(adr,'Range','F22:F30'));
KR_2B2T_fin1E12 = table2array(readtable(adr,'Range','G22:G30'));



adr = 'InsertFileLocationHere';


NB_num = table2array(readtable(adr,'Range','C5:C16'));
KR_num = table2array(readtable(adr,'Range','D5:D16'));

NB_ana = table2array(readtable(adr,'Range','J5:J16'));
KR_ana = table2array(readtable(adr,'Range','K5:K16'));

NB_fin = table2array(readtable(adr,'Range','C42:C44'));
KR_fin = table2array(readtable(adr,'Range','D42:D44'));





folder = 'InsertFileLocationHere';

res_1u1t = load(strcat(folder,'LossOnlyKR_1_Users_1_Trusted.mat'))
res_2u1t = load(strcat(folder,'LossOnlyKR_2_Users_1_Trusted.mat'))
res_2u2t = load(strcat(folder,'LossOnlyKR_2_Users_2_Trusted.mat'))

res_4u1t = load(strcat(folder,'LossOnlyKR_4_Users_1_Trusted.mat'))
res_4u2t = load(strcat(folder,'LossOnlyKR_4_Users_2_Trusted.mat'))
res_4u3t = load(strcat(folder,'LossOnlyKR_4_Users_3_Trusted.mat'))
res_4u4t = load(strcat(folder,'LossOnlyKR_4_Users_4_Trusted.mat'))

res_8u1t = load(strcat(folder,'LossOnlyKR_8_Users_1_Trusted.mat'))
res_8u2t = load(strcat(folder,'LossOnlyKR_8_Users_2_Trusted.mat'))
res_8u3t = load(strcat(folder,'LossOnlyKR_8_Users_3_Trusted.mat'))
res_8u4t = load(strcat(folder,'LossOnlyKR_8_Users_4_Trusted.mat'))
res_8u5t = load(strcat(folder,'LossOnlyKR_8_Users_5_Trusted.mat'))
res_8u6t = load(strcat(folder,'LossOnlyKR_8_Users_6_Trusted.mat'))
res_8u7t = load(strcat(folder,'LossOnlyKR_8_Users_7_Trusted.mat'))
res_8u8t = load(strcat(folder,'LossOnlyKR_8_Users_8_Trusted.mat'))


res_8u1t_short = load(strcat(folder,'LossOnlyKR_short_8_Users_1_Trusted.mat'))
res_8u2t_short = load(strcat(folder,'LossOnlyKR_short_8_Users_2_Trusted.mat'))
res_8u3t_short = load(strcat(folder,'LossOnlyKR_short_8_Users_3_Trusted.mat'))
res_8u4t_short = load(strcat(folder,'LossOnlyKR_short_8_Users_4_Trusted.mat'))
res_8u5t_short = load(strcat(folder,'LossOnlyKR_short_8_Users_5_Trusted.mat'))
res_8u6t_short = load(strcat(folder,'LossOnlyKR_short_8_Users_6_Trusted.mat'))
res_8u7t_short = load(strcat(folder,'LossOnlyKR_short_8_Users_7_Trusted.mat'))
res_8u8t_short = load(strcat(folder,'LossOnlyKR_short_8_Users_8_Trusted.mat'))

res_16u1t = load(strcat(folder,'LossOnlyKR_16_Users_1_Trusted.mat'))
res_16u16t = load(strcat(folder,'LossOnlyKR_16_Users_16_Trusted.mat'))
res_32u1t = load(strcat(folder,'LossOnlyKR_32_Users_1_Trusted.mat'))
res_32u32t = load(strcat(folder,'LossOnlyKR_32_Users_32_Trusted.mat'))
res_64u1t = load(strcat(folder,'LossOnlyKR_64_Users_1_Trusted.mat'))
res_64u64t = load(strcat(folder,'LossOnlyKR_64_Users_64_Trusted.mat'))


res_2u2t_short = load(strcat(folder,'LossOnlyKR_short_2_Users_2_Trusted.mat'))
res_4u4t_short = load(strcat(folder,'LossOnlyKR_short_4_Users_4_Trusted.mat'))
res_8u8t_short = load(strcat(folder,'LossOnlyKR_short_8_Users_8_Trusted.mat'))
res_16u16t_short = load(strcat(folder,'LossOnlyKR_short_16_Users_16_Trusted.mat'))
res_32u32t_short = load(strcat(folder,'LossOnlyKR_short_32_Users_32_Trusted.mat'))
res_64u64t_short = load(strcat(folder,'LossOnlyKR_short_64_Users_64_Trusted.mat'))










%Combine All Four Figures into One

figure;
fontsize(gcf,8,"points");
fontsize(gca,10,"points");
subplot(2,2,1);

semilogy(res_1u1t.Lengths(1:end-1),res_1u1t.keyRates,'k-', 'Displayname','1 Bob, 1 trusted','LineWidth',1.5);
hold on;
semilogy(res_2u2t.Lengths(1:end),res_2u2t.keyRates,'color',[0 0.4470 0.7410], 'Linestyle','-', 'Displayname','2 Bobs, 2 trusted','LineWidth',1.5);
semilogy(res_4u4t.Lengths(1:end),res_4u4t.keyRates,'color',[0.8500 0.3250 0.0980], 'Linestyle','-', 'Displayname','4 Bobs, 4 trusted','LineWidth',1.5);
semilogy(res_8u8t.Lengths(1:end),res_8u8t.keyRates,'color',[0.4940 0.1840 0.5560], 'Linestyle','-', 'Displayname','8 Bobs, 8 trusted','LineWidth',1.5);
semilogy(res_16u16t.Lengths(1:end),res_16u16t.keyRates,'color',[0.6350 0.0780 0.1840], 'Linestyle','-', 'Displayname','16 Bobs, 16 trusted','LineWidth',1.5);
semilogy(res_32u32t.Lengths(1:end),res_32u32t.keyRates,'color',[0.4660 0.6740 0.1880], 'Linestyle','-', 'Displayname','32 Bobs, 32 trusted','LineWidth',1.5);
semilogy(res_64u64t.Lengths(1:end),res_64u64t.keyRates,'color',[0.3010 0.7450 0.9330], 'Linestyle','-', 'Displayname','64 Bobs, 64 trusted','LineWidth',1.5);


title('(a)')
ylabel('Secure Key Rate (Bits per Channel use)');
ylim([1e-5 1e1]);
xlabel('Transmission distance {\it L} (km)');
xlim([0 200]);
ylim([1E-6,10])
legend;
grid on;
hold off;


subplot(2,2,2)
semilogy(res_1u1t.Lengths(1:end-1),res_1u1t.keyRates,'k-', 'Displayname','1 Bob, 1 trusted','LineWidth',1.5);
hold on;
semilogy(res_2u1t.Lengths(1:end),res_2u1t.keyRates,'color',[0 0.4470 0.7410], 'Linestyle','-', 'Displayname','2 Bobs, 1 trusted','LineWidth',1.5);
semilogy(res_4u1t.Lengths(1:end),res_4u1t.keyRates,'color',[0.8500 0.3250 0.0980], 'Linestyle','-', 'Displayname','4 Bobs, 1 trusted','LineWidth',1.5);
semilogy(res_8u1t.Lengths(1:end),res_8u1t.keyRates,'color',[0.4940 0.1840 0.5560], 'Linestyle','-', 'Displayname','8 Bobs, 1 trusted','LineWidth',1.5);
semilogy(res_16u1t.Lengths(1:end),res_16u1t.keyRates,'color',[0.6350 0.0780 0.1840], 'Linestyle','-', 'Displayname','16 Bobs, 1 trusted','LineWidth',1.5);
semilogy(res_32u1t.Lengths(1:end),res_32u1t.keyRates,'color',[0.4660 0.6740 0.1880], 'Linestyle','-', 'Displayname','32 Bobs, 1 trusted','LineWidth',1.5);
semilogy(res_64u1t.Lengths(1:end),res_64u1t.keyRates,'color',[0.3010 0.7450 0.9330], 'Linestyle','-', 'Displayname','64 Bobs, 1 trusted','LineWidth',1.5);


title('(b)')
ylabel('Secure Key Rate (Bits per Channel use)');
ylim([1e-5 1e1]);
xlabel('Transmission distance {\it L} (km)');
xlim([0 200]);
ylim([1E-6,10])
legend;
grid on;
hold off;


subplot(2,2,3)
semilogy(NB_ana,KR_ana,'color',[0 0.4470 0.7410], 'Marker','x', 'Linestyle','none','Displayname','2 Bobs trusted, \xi = 0, N = \infty','LineWidth',1.5);
hold on
semilogy(NB_num, KR_num,'color',[0.8500 0.3250 0.0980], 'Marker','o', 'Linestyle','none', 'Displayname','2 Bobs trusted, \xi = 10^{-2}, N = \infty','LineWidth',1.5);
semilogy(NB_fin, KR_fin,'color',[0.0627 0.3059 0.5451], 'Marker','^', 'Linestyle','none', 'Displayname','2 Bobs trusted, \xi = 10^{-6}, N=10^{12}','LineWidth',1.5);
%semilogy(2,7e-3, 'Marker', 'pentagram', 'Displayname', '2 Bobs, 2 trusted, N = 2.3\times 10^9, experiment','LineWidth',1.5, 'color',[0.9844 0.6133 0.0117])

title('(c)')
xlim([0 32])
ylim([1e-4 1e0])
xlabel('Total Number of Bobs N_B')
ylabel('Secure Key Rate (Bits per Channel use)')
grid on
legend
hold off




subplot(2,2,4)
semilogy(res_2u2t.Lengths,res_2u2t.keyRates,'color',[0 0.4470 0.7410], 'Linestyle','-', 'Displayname','2 Bobs, 2 trusted, \xi = 0, N = \infty','LineWidth',1.5);
hold on
semilogy(L_2B2T_low,KR_2B2T_low,'bx:', 'Displayname','2 Bobs, 2 trusted, \xi = 10^{-2}, N = \infty','LineWidth',1.5)
semilogy(res_5u2t.Lengths,res_5u2t.keyRates,'color',[0.8500 0.3250 0.0980], 'Linestyle','-', 'Displayname','5 Bobs, 2 trusted, \xi = 0, N = \infty','LineWidth',1.5);
semilogy(L_5B2T_low,KR_5B2T_low,'ro:', 'Displayname','5 Bobs, 2 trusted, \xi = 10^{-2}, N = \infty','LineWidth',1.5)
semilogy(L_2B2T_fin1E10,KR_2B2T_fin1E10,'color',[0.3921 0.5843 0.9294], 'Linestyle','--', 'Displayname','2 Bobs, 2 trusted, \xi = 10^{-2}, N=10^{10}','LineWidth',1.5)
semilogy(L_2B2T_fin1E12,KR_2B2T_fin1E12,'color',[0.0627 0.3059 0.5451], 'Linestyle','-.', 'Displayname','2 Bobs, 2 trusted, \xi = 10^{-2}, N=10^{12}','LineWidth',1.5)


title('(d)')
xlim([0 100])
ylim([1e-4 1e1])
xlabel('Transmission Distance {\it L} (km)')
ylabel('Secure Key Rate (Bits per Channel use)')
grid on
legend
hold off