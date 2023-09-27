function mpc = powergrid
mpc.version = '2';
mpc.baseMVA = 100;
mpc.bus = [
	1	1	31.455281	13.369278	0	-400	1	1.049365	15.684690	130	1	1.100000	0.900000;
	2	1	155.819645	38.858476	0	0	1	1.086330	16.033117	130	1	1.100000	0.900000;
	3	1	351.920269	168.598849	0	0	1	1.009150	11.709922	130	1	1.100000	0.900000;
	4	1	55.868357	39.068902	0	0	1	1.070278	11.951746	130	1	1.100000	0.900000;
	5	1	330.571036	230.092982	0	0	1	0.894823	-17.229802	130	1	1.100000	0.900000;
	6	1	332.535731	144.584397	0	0	1	0.930038	-31.815569	130	1	1.100000	0.900000;
	7	1	34.930526	12.425047	0	0	1	0.934789	-14.971272	130	1	1.100000	0.900000;
	8	1	297.514410	197.337489	0	0	1	0.994882	-11.322614	130	1	1.100000	0.900000;
	9	1	92.188252	11.066068	0	0	1	1.007762	-10.031264	130	1	1.100000	0.900000;
	10	1	24.845113	13.474686	0	0	1	1.134628	-0.962099	220	1	1.100000	0.900000;
	11	1	229.845758	-42.010951	0	0	1	1.136055	-5.682222	220	1	1.100000	0.900000;
	12	1	453.933812	146.625249	0	-400	1	0.966232	23.397489	400	1	1.100000	0.900000;
	13	1	394.829417	216.258081	0	0	1	0.996093	31.397829	400	1	1.100000	0.900000;
	14	1	146.803981	94.697689	0	0	1	1.150562	-1.788465	400	1	1.100000	0.900000;
	15	1	425.808043	293.288651	0	0	1	1.023259	-8.520555	400	1	1.100000	0.900000;
	16	1	370.746286	177.021991	0	0	1	1.008938	-9.513308	400	1	1.100000	0.900000;
	17	1	184.619057	29.601437	0	0	1	1.008776	-9.191048	400	1	1.100000	0.900000;
	18	1	51.440380	12.968784	0	0	1	1.009105	-7.144395	400	1	1.100000	0.900000;
	19	1	22.722402	12.291083	0	0	1	1.021283	-4.070578	400	1	1.100000	0.900000;
	20	1	20.300697	14.991617	0	0	1	1.083259	-2.416347	400	1	1.100000	0.900000;
	21	1	382.060891	256.969588	0	0	1	1.036252	-2.473205	400	1	1.100000	0.900000;
	22	1	132.543642	27.534173	0	0	1	1.029096	-1.533462	400	1	1.100000	0.900000;
	23	1	0	0	0	-100	1	0.979316	17.147051	400	1	1.100000	0.900000;
	24	1	0	0	0	0	1	1.036160	13.336748	130	1	1.100000	0.900000;
	25	1	0	0	0	0	1	1.073527	11.925658	130	1	1.100000	0.900000;
	26	1	0	0	0	0	1	0.974409	16.704922	400	1	1.100000	0.900000;
	27	1	0	0	0	0	1	1.042437	3.167036	400	1	1.100000	0.900000;
	28	1	0	0	0	0	1	1.021161	10.150617	400	1	1.100000	0.900000;
	29	1	0	0	0	0	1	1.068863	-1.663246	400	1	1.100000	0.900000;
	30	1	0	0	0	0	1	0.961403	-16.293508	400	1	1.100000	0.900000;
	31	1	0	0	0	0	1	1.079562	0.413175	400	1	1.100000	0.900000;
	32	1	0	0	0	0	1	1.120888	-3.558645	400	1	1.100000	0.900000;
	33	1	0	0	0	0	1	1.120888	-3.558645	400	1	1.100000	0.900000;
	34	1	0	0	0	0	1	0.980506	-13.574353	400	1	1.100000	0.900000;
	35	1	0	0	0	0	1	0.946820	-15.038969	400	1	1.100000	0.900000;
	36	1	0	0	0	0	1	1.013101	-9.669231	400	1	1.100000	0.900000;
	37	1	0	0	0	0	1	1.018354	-8.850237	400	1	1.100000	0.900000;
	38	2	0	0	0	0	1	0	16.033117	15	1	1.100000	0.900000;
	39	2	0	0	0	0	1	0	11.709922	15	1	1.100000	0.900000;
	40	2	0	0	0	0	1	0	13.336748	15	1	1.100000	0.900000;
	41	2	0	0	0	0	1	0	11.925658	15	1	1.100000	0.900000;
	42	2	0	0	0	0	1	1	23.666057	15	1	1.100000	0.900000;
	43	2	0	0	0	0	1	1	-29.371667	15	1	1.100000	0.900000;
	44	2	0	0	0	0	1	0	-14.971272	15	1	1.100000	0.900000;
	45	2	0	0	0	0	1	0	-5.682222	15	1	1.100000	0.900000;
	46	2	0	0	0	0	1	1	21.802165	15	1	1.100000	0.900000;
	47	2	0	0	0	0	1	1	22.860844	15	1	1.100000	0.900000;
	48	2	0	0	0	0	1	1	8.533803	15	1	1.100000	0.900000;
	49	2	0	0	0	0	1	0	0.413175	15	1	1.100000	0.900000;
	50	2	0	0	0	0	1	0	-1.788465	15	1	1.100000	0.900000;
	51	2	0	0	0	0	1	0	-8.520555	15	1	1.100000	0.900000;
	52	3	0	0	0	0	1	1	0	15	1	1.000000	1.000000;
	53	2	0	0	0	0	1	0	-7.144395	15	1	1.100000	0.900000;
	54	2	0	0	0	0	1	0	-4.070578	15	1	1.100000	0.900000;
	55	2	0	0	0	0	1	1	1.407800	15	1	1.100000	0.900000;
	56	2	0	0	0	0	1	1	2.925687	15	1	1.100000	0.900000;
	57	2	0	0	0	0	1	1	1.853913	15	1	1.100000	0.900000;
	58	2	0	0	0	0	1	0	-1.533462	15	1	1.100000	0.900000;
	59	2	0	0	0	0	1	0	23.397489	15	1	1.100000	0.900000;
	60	2	0	0	0	0	1	1	33.900189	15	1	1.100000	0.900000;
	61	2	0	0	0	0	1	0	-17.229802	15	1	1.100000	0.900000;
];
mpc.gen = [
	52	0	0	1840.000000	-540.000000	1	1	1	2800.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	38	0	0	720.000000	-720.000000	0	100	0	720.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	39	0	0	540.000000	-540.000000	0	100	0	540.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	40	0	0	630.000000	-630.000000	0	100	0	630.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	41	0	0	540.000000	-540.000000	0	100	0	540.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	42	362.167666	0	325.000000	-225.000000	1	100	1	475.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	43	105.754470	0	560.000000	-360.000000	1	100	1	560.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	44	0	0	360.000000	-280.000000	0	100	0	380.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	45	0	0	965.000000	-765.000000	0	100	0	965.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	46	577.151114	0	900.000000	-900.000000	1	100	1	900.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	47	520.000000	0	720.000000	-720.000000	1	100	1	720.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	48	195.000000	0	570.000000	-370.000000	1	100	1	570.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	49	0	0	515.000000	-415.000000	0	100	0	575.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	50	0	0	570.000000	-570.000000	0	100	0	0.000000	-0.000000	0	0	0	0	0	0	0	0	0	0	0;
	51	0	0	630.000000	-630.000000	0	100	0	630.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	53	0	0	580.000000	-540.000000	0	100	0	540.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	54	0	0	630.000000	-630.000000	0	100	0	630.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	55	455.000000	0	630.000000	-630.000000	1	100	1	630.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	56	390.000000	0	540.000000	-540.000000	1	100	1	540.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	57	243.222309	0	540.000000	-540.000000	1	100	1	540.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	58	0	0	540.000000	-540.000000	0	100	0	540.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	59	0	0	520.000000	-450.000000	0	100	0	560.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	60	1304.829417	0	4000.000000	-2050.000000	1	100	1	4500.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	61	0	0	250.000000	-250.000000	0	100	0	0.000000	-0.000000	0	0	0	0	0	0	0	0	0	0	0;
];
mpc.branch = [
	1	3	0.010000	0.070000	0.013804	175.000000	250	250	0	0	1	-360	360;
	1	3	0.010000	0.070000	0.013804	175.000000	250	250	0	0	1	-360	360;
	2	24	0.014024	0.090000	0.018052	175.000000	250	250	0	0	1	-360	360;
	2	24	0.014024	0.090000	0.018052	175.000000	250	250	0	0	1	-360	360;
	3	24	0.006982	0.050000	0.010088	175.000000	250	250	0	0	1	-360	360;
	3	24	0.006982	0.050000	0.010088	175.000000	250	250	0	0	1	-360	360;
	25	4	0.030000	0.200000	0.030263	175.000000	250	250	0	0	1	-360	360;
	25	4	0.030000	0.200000	0.030263	175.000000	250	250	0	0	1	-360	360;
	5	7	0.010000	0.060000	0.012211	175.000000	250	250	0	0	1	-360	360;
	5	7	0.010000	0.060000	0.012211	175.000000	250	250	0	0	1	-360	360;
	5	9	0.014970	0.120000	0.024954	175.000000	250	250	0	0	1	-360	360;
	5	9	0.014970	0.120000	0.024954	175.000000	250	250	0	0	1	-360	360;
	6	8	0.037988	0.280000	0.059995	175.000000	250	250	0	0	0	-360	360;
	6	8	0.037988	0.280000	0.059995	175.000000	250	250	0	0	1	-360	360;
	6	9	0.050000	0.300000	0.059995	175.000000	250	250	0	0	1	-360	360;
	7	8	0.010000	0.080000	0.015928	175.000000	250	250	0	0	1	-360	360;
	7	8	0.010000	0.080000	0.015928	175.000000	250	250	0	0	1	-360	360;
	10	11	0.012004	0.090000	0.015205	250.000000	250	250	0	0	1	-360	360;
	10	11	0.012004	0.090000	0.015205	250.000000	250	250	0	0	1	-360	360;
	26	23	0.001000	0.008000	0.201062	700.000000	250	250	0	0	1	-360	360;
	26	27	0.006000	0.060000	1.799488	700.000000	250	250	0	0	1	-360	360;
	26	28	0.004000	0.040000	1.201344	700.000000	250	250	0	0	1	-360	360;
	26	12	0.005000	0.045000	1.402400	700.000000	250	250	0	0	1	-360	360;
	23	28	0.004000	0.035000	1.050560	700.000000	250	250	0	0	1	-360	360;
	23	12	0.005000	0.050000	1.497920	700.000000	250	250	0	0	1	-360	360;
	27	29	0.004000	0.040000	1.201344	700.000000	250	250	0	0	1	-360	360;
	27	30	0.010000	0.100000	3.000864	700.000000	250	250	0	0	1	-360	360;
	30	15	0	-0.040000	0	700.000000	250	250	0	0	1	-360	360;
	28	31	0.004000	0.040000	1.201344	700.000000	250	250	0	0	1	-360	360;
	28	31	0.004000	0.040000	1.201344	700.000000	250	250	0	0	1	-360	360;
	31	29	0.001000	0.010000	0.301594	700.000000	250	250	0	0	1	-360	360;
	31	32	0.006000	0.080000	2.397664	700.000000	250	250	0	0	1	-360	360;
	32	14	0	-0.040000	0	700.000000	250	250	0	0	1	-360	360;
	31	33	0.006000	0.080000	2.397664	700.000000	250	250	0	0	1	-360	360;
	33	14	0	-0.040000	0	700.000000	250	250	0	0	1	-360	360;
	29	34	0.010000	0.066669	2.000576	700.000000	250	250	0	0	1	-360	360;
	34	15	0	-0.026669	0	700.000000	250	250	0	0	1	-360	360;
	29	35	0.006000	0.080000	2.397664	700.000000	250	250	0	0	1	-360	360;
	35	36	0	-0.030000	0	700.000000	250	250	0	0	1	-360	360;
	14	36	0.003000	0.030000	0.899744	700.000000	250	250	0	0	0	-360	360;
	14	20	0.006000	0.045000	1.301888	700.000000	250	250	0	0	1	-360	360;
	15	16	0.002000	0.015000	0.497632	700.000000	250	250	0	0	1	-360	360;
	15	36	0.002000	0.020000	0.598176	700.000000	250	250	0	0	1	-360	360;
	16	36	0.001000	0.010000	0.301594	700.000000	250	250	0	0	1	-360	360;
	16	17	0.001000	0.010000	0.301594	700.000000	250	250	0	0	1	-360	360;
	16	18	0.002000	0.020000	0.598176	700.000000	250	250	0	0	1	-360	360;
	36	37	0.002000	0.020000	0.598176	700.000000	250	250	0	0	1	-360	360;
	36	37	0.002000	0.020000	0.598176	700.000000	250	250	0	0	1	-360	360;
	37	19	0.004000	0.040000	1.201344	700.000000	250	250	0	0	1	-360	360;
	37	19	0.004000	0.040000	1.201344	700.000000	250	250	0	0	1	-360	360;
	37	21	0.011000	0.080000	2.397664	700.000000	250	250	0	0	1	-360	360;
	17	18	0.001000	0.015000	0.497632	700.000000	250	250	0	0	1	-360	360;
	20	21	0.002000	0.020000	0.598176	700.000000	250	250	0	0	1	-360	360;
	21	22	0.003000	0.030000	0.899744	700.000000	250	250	0	0	1	-360	360;
	21	22	0.003000	0.030000	0.899744	700.000000	250	250	0	0	1	-360	360;
	12	13	0.003000	0.030000	3.000864	700.000000	250	250	0	0	1	-360	360;
	12	13	0.003000	0.030000	3.000864	700.000000	250	250	0	0	1	-360	360;
	2	38	0	0.018750	0	800	250	250	0	0	1	-360	360;
	3	39	0	0.025000	0	600	250	250	0	0	1	-360	360;
	24	40	0	0.021429	0	700	250	250	0	0	1	-360	360;
	25	41	0	0.025000	0	600	250	250	0	0	1	-360	360;
	4	42	0	0.060000	0	1250	250	250	0	0	1	-360	360;
	6	43	0	0.037500	0	400	250	250	0	0	1	-360	360;
	7	44	0	0.075000	0	1200	250	250	0	0	1	-360	360;
	11	45	0	0.017647	0	850	250	250	0	0	1	-360	360;
	26	46	0	0.015000	0	1000	250	250	0	0	1	-360	360;
	23	47	0	0.018750	0	800	250	250	0	0	1	-360	360;
	27	48	0	0.050000	0	300	250	250	0	0	1	-360	360;
	31	49	0	0.042857	0	1350	250	250	0	0	1	-360	360;
	14	50	0	0.017391	0	575	250	250	0	0	1	-360	360;
	15	51	0	0.021429	0	700	250	250	0	0	1	-360	360;
	18	52	0	0.025000	0	600	250	250	0	0	1	-360	360;
	18	53	0	0.025000	0	600	250	250	0	0	1	-360	360;
	19	54	0	0.021429	0	700	250	250	0	0	1	-360	360;
	19	55	0	0.021429	0	700	250	250	0	0	1	-360	360;
	21	56	0	0.025000	0	600	250	250	0	0	1	-360	360;
	22	57	0	0.025000	0	600	250	250	0	0	1	-360	360;
	22	58	0	0.025000	0	600	250	250	0	0	1	-360	360;
	12	59	0	0.030000	0	500	250	250	0	0	1	-360	360;
	13	60	0	0.003333	0	4500	250	250	0	0	1	-360	360;
	26	1	0	0.008000	0	1250	250	250	0.892860	0	1	-360	360;
	23	2	0	0.008000	0	1250	250	250	0.892860	0	1	-360	360;
	28	4	0	0.012000	0	833.300000	250	250	0.934580	0	1	-360	360;
	31	10	0	0.012000	0	833.300000	250	250	0.952380	0	1	-360	360;
	36	8	0	0.010000	0	1000	250	250	0	0	1	-360	360;
	36	8	0	0.010000	0	1000	250	250	0	0	1	-360	360;
	37	9	0	0.010000	0	1000	250	250	0	0	1	-360	360;
	37	9	0	0.010000	0	1000	250	250	0	0	1	-360	360;
	5	61	0	0.025000	0	1200	250	250	0	0	1	-360	360;
];