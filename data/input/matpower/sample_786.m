function mpc = powergrid
mpc.version = '2';
mpc.baseMVA = 100;
mpc.bus = [
	1	1	11.241897	7.358035	0	-400	1	1.050115	16.629159	130	1	1.100000	0.900000;
	2	1	189.346115	123.143875	0	0	1	1.073988	15.590052	130	1	1.100000	0.900000;
	3	1	172.183933	107.605257	0	0	1	1.028383	14.347994	130	1	1.100000	0.900000;
	4	1	193.258010	125.073273	0	0	1	1.046762	7.365963	130	1	1.100000	0.900000;
	5	1	10.519816	4.307565	0	0	1	1.029409	-5.307375	130	1	1.100000	0.900000;
	6	1	234.046617	-156.322378	0	0	1	1.060171	-4.827341	130	1	1.100000	0.900000;
	7	1	234.855831	169.101277	0	0	1	1.010394	-3.688423	130	1	1.100000	0.900000;
	8	1	19.221334	11.958820	0	0	1	1.070474	-5.378758	130	1	1.100000	0.900000;
	9	1	321.965131	168.982378	0	0	1	1.072412	-7.927021	130	1	1.100000	0.900000;
	10	1	69.379990	23.061284	0	0	1	1.108574	-3.398153	220	1	1.100000	0.900000;
	11	1	84.877171	28.144997	0	0	1	1.092559	-5.130485	220	1	1.100000	0.900000;
	12	1	103.022669	72.356896	0	-400	1	0.974382	28.320111	400	1	1.100000	0.900000;
	13	1	46.360388	16.977203	0	0	1	1.003481	36.198362	400	1	1.100000	0.900000;
	14	1	1432.568293	117.757171	0	0	1	1.100440	-11.666373	400	1	1.100000	0.900000;
	15	1	46.020145	24.511501	0	0	1	1.072322	-1.970242	400	1	1.100000	0.900000;
	16	1	98.707454	58.401595	0	0	1	1.056083	-4.095409	400	1	1.100000	0.900000;
	17	1	378.065765	150.679471	0	0	1	1.036321	-4.513845	400	1	1.100000	0.900000;
	18	1	107.753759	48.224019	0	0	1	1.027271	-2.216713	400	1	1.100000	0.900000;
	19	1	195.763593	120.763407	0	0	1	1.084067	-9.289543	400	1	1.100000	0.900000;
	20	1	29.313442	13.778022	0	0	1	1.106233	-7.484705	400	1	1.100000	0.900000;
	21	1	19.847538	10.465292	0	0	1	1.091766	-5.238653	400	1	1.100000	0.900000;
	22	1	87.793138	57.940190	0	0	1	1.097383	-5.904607	400	1	1.100000	0.900000;
	23	1	0	0	0	-100	1	0.971263	16.504708	400	1	1.100000	0.900000;
	24	1	0	0	0	0	1	1.044978	14.808650	130	1	1.100000	0.900000;
	25	1	0	0	0	0	1	1.049939	7.339875	130	1	1.100000	0.900000;
	26	1	0	0	0	0	1	0.971394	17.195142	400	1	1.100000	0.900000;
	27	1	0	0	0	0	1	1.054711	4.879071	400	1	1.100000	0.900000;
	28	1	0	0	0	0	1	1.001239	7.188502	400	1	1.100000	0.900000;
	29	1	0	0	0	0	1	1.073160	-1.835134	400	1	1.100000	0.900000;
	30	1	0	0	0	0	1	1.005531	-6.401430	400	1	1.100000	0.900000;
	31	1	0	0	0	0	1	1.061109	-2.537223	400	1	1.100000	0.900000;
	32	1	0	0	0	0	1	1.084293	-19.629627	400	1	1.100000	0.900000;
	33	1	0	0	0	0	1	1.084293	-19.629627	400	1	1.100000	0.900000;
	34	1	0	0	0	0	1	1.027575	-2.291896	400	1	1.100000	0.900000;
	35	1	0	0	0	0	1	1.030280	-7.731907	400	1	1.100000	0.900000;
	36	1	0	0	0	0	1	1.078947	-5.492819	400	1	1.100000	0.900000;
	37	1	0	0	0	0	1	1.084526	-7.361231	400	1	1.100000	0.900000;
	38	2	0	0	0	0	1	0	15.590052	15	1	1.100000	0.900000;
	39	2	0	0	0	0	1	0	14.347994	15	1	1.100000	0.900000;
	40	2	0	0	0	0	1	0	14.808650	15	1	1.100000	0.900000;
	41	2	0	0	0	0	1	0	7.339875	15	1	1.100000	0.900000;
	42	2	0	0	0	0	1	1	14.683408	15	1	1.100000	0.900000;
	43	2	0	0	0	0	1	1	0.449394	15	1	1.100000	0.900000;
	44	2	0	0	0	0	1	1	12.695262	15	1	1.100000	0.900000;
	45	2	0	0	0	0	1	0	-5.130485	15	1	1.100000	0.900000;
	46	2	0	0	0	0	1	1	22.955691	15	1	1.100000	0.900000;
	47	2	0	0	0	0	1	1	18.180561	15	1	1.100000	0.900000;
	48	2	0	0	0	0	1	1	10.183202	15	1	1.100000	0.900000;
	49	2	0	0	0	0	1	0	-2.537223	15	1	1.100000	0.900000;
	50	2	0	0	0	0	1	0	-11.666373	15	1	1.100000	0.900000;
	51	2	0	0	0	0	1	1	3.246638	15	1	1.100000	0.900000;
	52	3	0	0	0	0	1	1	0	15	1	1.000000	1.000000;
	53	2	0	0	0	0	1	1	3.229523	15	1	1.100000	0.900000;
	54	2	0	0	0	0	1	0	-9.289543	15	1	1.100000	0.900000;
	55	2	0	0	0	0	1	0	-9.289543	15	1	1.100000	0.900000;
	56	2	0	0	0	0	1	1	-0.115035	15	1	1.100000	0.900000;
	57	2	0	0	0	0	1	0	-5.904607	15	1	1.100000	0.900000;
	58	2	0	0	0	0	1	0	-5.904607	15	1	1.100000	0.900000;
	59	2	0	0	0	0	1	0	28.320111	15	1	1.100000	0.900000;
	60	2	0	0	0	0	1	1	38.018664	15	1	1.100000	0.900000;
	61	2	0	0	0	0	1	0	-5.307375	15	1	1.100000	0.900000;
];
mpc.gen = [
	52	0	0	1840.000000	-540.000000	1	1	1	2800.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	38	0	0	720.000000	-720.000000	0	100	0	720.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	39	0	0	540.000000	-540.000000	0	100	0	540.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	40	0	0	630.000000	-630.000000	0	100	0	630.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	41	0	0	540.000000	-540.000000	0	100	0	540.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	42	222.204160	0	325.000000	-225.000000	1	100	1	475.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	43	260.000000	0	560.000000	-360.000000	1	100	1	560.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	44	380.000000	0	360.000000	-280.000000	1	100	1	380.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	45	0	0	965.000000	-765.000000	0	100	0	965.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	46	650.000000	0	900.000000	-900.000000	1	100	1	900.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	47	151.491078	0	720.000000	-720.000000	1	100	1	720.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	48	195.000000	0	570.000000	-370.000000	1	100	1	570.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	49	0	0	515.000000	-415.000000	0	100	0	575.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	50	0	0	570.000000	-570.000000	0	100	0	0.000000	-0.000000	0	0	0	0	0	0	0	0	0	0	0;
	51	455.000000	0	630.000000	-630.000000	1	100	1	630.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	53	390.000000	0	580.000000	-540.000000	1	100	1	540.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	54	0	0	630.000000	-630.000000	0	100	0	630.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	55	0	0	630.000000	-630.000000	0	100	0	630.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	56	390.000000	0	540.000000	-540.000000	1	100	1	540.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	57	0	0	540.000000	-540.000000	0	100	0	540.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	58	0	0	540.000000	-540.000000	0	100	0	540.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	59	0	0	520.000000	-450.000000	0	100	0	560.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	60	956.360388	0	4000.000000	-2050.000000	1	100	1	4500.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
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
	6	8	0.037988	0.280000	0.059995	175.000000	250	250	0	0	1	-360	360;
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
	14	36	0.003000	0.030000	0.899744	700.000000	250	250	0	0	1	-360	360;
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
