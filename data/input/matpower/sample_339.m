function mpc = powergrid
mpc.version = '2';
mpc.baseMVA = 100;
mpc.bus = [
	1	1	149.127078	65.995939	0	-400	1	1.021917	17.820356	130	1	1.100000	0.900000;
	2	1	21.427847	7.578905	0	0	1	1.061974	20.421814	130	1	1.100000	0.900000;
	3	1	273.400571	109.383971	0	0	1	0.999165	22.564516	130	1	1.100000	0.900000;
	4	1	45.417522	20.883081	0	0	1	1.087290	12.533250	130	1	1.100000	0.900000;
	5	1	54.769345	21.876744	0	0	1	1.145469	-13.246271	130	1	1.100000	0.900000;
	6	1	481.843204	327.034535	0	0	1	0.941131	-20.251391	130	1	1.100000	0.900000;
	7	1	241.815741	159.235938	0	0	1	1.126436	-13.652729	130	1	1.100000	0.900000;
	8	1	405.849035	80.499426	0	0	1	1.169648	-10.360509	130	1	1.100000	0.900000;
	9	1	64.233157	39.052501	0	0	1	1.196013	-11.089746	130	1	1.100000	0.900000;
	10	1	11.645088	4.498736	0	0	1	1.126143	4.135796	220	1	1.100000	0.900000;
	11	1	10.120293	6.108985	0	0	1	1.036128	12.008558	220	1	1.100000	0.900000;
	12	1	706.050365	178.987569	0	-400	1	0.953629	21.424719	400	1	1.100000	0.900000;
	13	1	782.289669	143.661995	0	0	1	0.995251	29.467384	400	1	1.100000	0.900000;
	14	1	55.522157	28.980442	0	0	1	1.192380	-5.267967	400	1	1.100000	0.900000;
	15	1	32.235126	17.057687	0	0	1	1.177541	-4.397250	400	1	1.100000	0.900000;
	16	1	60.786229	39.803937	0	0	1	1.146594	-4.080895	400	1	1.100000	0.900000;
	17	1	155.717955	-105.651533	0	0	1	1.139912	-4.111773	400	1	1.100000	0.900000;
	18	1	0.448538	0.182570	0	0	1	1.110776	-3.048172	400	1	1.100000	0.900000;
	19	1	12.972512	-6.801030	0	0	1	1.235621	-10.865298	400	1	1.100000	0.900000;
	20	1	27.381309	13.718513	0	0	1	1.147716	-12.952747	400	1	1.100000	0.900000;
	21	1	183.540224	131.515755	0	0	1	1.117925	-16.251998	400	1	1.100000	0.900000;
	22	1	617.847512	165.760491	0	0	1	1.063524	-18.692289	400	1	1.100000	0.900000;
	23	1	0	0	0	-100	1	0.958863	19.709570	400	1	1.100000	0.900000;
	24	1	0	0	0	0	1	1.015075	25.746899	130	1	1.100000	0.900000;
	25	1	0	0	0	0	1	1.090590	12.507162	130	1	1.100000	0.900000;
	26	1	0	0	0	0	1	0.953749	17.498585	400	1	1.100000	0.900000;
	27	1	0	0	0	0	1	1.091716	4.963156	400	1	1.100000	0.900000;
	28	1	0	0	0	0	1	1.041369	10.094618	400	1	1.100000	0.900000;
	29	1	0	0	0	0	1	1.131123	0.440122	400	1	1.100000	0.900000;
	30	1	0	0	0	0	1	1.152119	-9.461837	400	1	1.100000	0.900000;
	31	1	0	0	0	0	1	1.102832	2.529654	400	1	1.100000	0.900000;
	32	1	0	0	0	0	1	1.204226	-11.368863	400	1	1.100000	0.900000;
	33	1	0	0	0	0	1	1.204226	-11.368863	400	1	1.100000	0.900000;
	34	1	0	0	0	0	1	1.174269	-7.056642	400	1	1.100000	0.900000;
	35	1	0	0	0	0	1	1.175873	-13.629189	400	1	1.100000	0.900000;
	36	1	0	0	0	0	1	1.185387	-8.773590	400	1	1.100000	0.900000;
	37	1	0	0	0	0	1	1.205053	-10.619071	400	1	1.100000	0.900000;
	38	2	0	0	0	0	1	0	20.421814	15	1	1.100000	0.900000;
	39	2	0	0	0	0	1	1	26.487027	15	1	1.100000	0.900000;
	40	2	0	0	0	0	1	1	30.993348	15	1	1.100000	0.900000;
	41	2	0	0	0	0	1	0	12.507162	15	1	1.100000	0.900000;
	42	2	0	0	0	0	1	1	27.729116	15	1	1.100000	0.900000;
	43	2	0	0	0	0	1	1	-14.304951	15	1	1.100000	0.900000;
	44	2	0	0	0	0	1	0	-13.652729	15	1	1.100000	0.900000;
	45	2	0	0	0	0	1	1	15.280587	15	1	1.100000	0.900000;
	46	2	0	0	0	0	1	0	17.498585	15	1	1.100000	0.900000;
	47	2	0	0	0	0	1	1	22.090985	15	1	1.100000	0.900000;
	48	2	0	0	0	0	1	1	10.087007	15	1	1.100000	0.900000;
	49	2	0	0	0	0	1	1	6.655310	15	1	1.100000	0.900000;
	50	2	0	0	0	0	1	0	-5.267967	15	1	1.100000	0.900000;
	51	2	0	0	0	0	1	0	-4.397250	15	1	1.100000	0.900000;
	52	3	0	0	0	0	1	1	0	15	1	1.000000	1.000000;
	53	2	0	0	0	0	1	0	-3.048172	15	1	1.100000	0.900000;
	54	2	0	0	0	0	1	0	-10.865298	15	1	1.100000	0.900000;
	55	2	0	0	0	0	1	0	-10.865298	15	1	1.100000	0.900000;
	56	2	0	0	0	0	1	0	-16.251998	15	1	1.100000	0.900000;
	57	2	0	0	0	0	1	0	-18.692289	15	1	1.100000	0.900000;
	58	2	0	0	0	0	1	1	-15.374190	15	1	1.100000	0.900000;
	59	2	0	0	0	0	1	0	21.424719	15	1	1.100000	0.900000;
	60	2	0	0	0	0	1	1	32.716257	15	1	1.100000	0.900000;
	61	2	0	0	0	0	1	0	-13.246271	15	1	1.100000	0.900000;
];
mpc.gen = [
	52	0	0	1840.000000	-540.000000	1	1	1	2800.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	38	0	0	720.000000	-720.000000	0	100	0	720.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	39	273.400572	0	540.000000	-540.000000	1	100	1	540.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	40	433.143894	0	630.000000	-630.000000	1	100	1	630.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	41	0	0	540.000000	-540.000000	0	100	0	540.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	42	475.000000	0	325.000000	-225.000000	1	100	1	475.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	43	260.000000	0	560.000000	-360.000000	1	100	1	560.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	44	0	0	360.000000	-280.000000	0	100	0	380.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	45	335.120293	0	965.000000	-765.000000	1	100	1	965.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	46	0	0	900.000000	-900.000000	0	100	0	900.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	47	212.492020	0	720.000000	-720.000000	1	100	1	720.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	48	195.000000	0	570.000000	-370.000000	1	100	1	570.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	49	185.132384	0	515.000000	-415.000000	1	100	1	575.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	50	0	0	570.000000	-570.000000	0	100	0	0.000000	-0.000000	0	0	0	0	0	0	0	0	0	0	0;
	51	0	0	630.000000	-630.000000	0	100	0	630.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	53	0	0	580.000000	-540.000000	0	100	0	540.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	54	0	0	630.000000	-630.000000	0	100	0	630.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	55	0	0	630.000000	-630.000000	0	100	0	630.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	56	0	0	540.000000	-540.000000	0	100	0	540.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	57	0	0	540.000000	-540.000000	0	100	0	540.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	58	246.224570	0	540.000000	-540.000000	1	100	1	540.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	59	0	0	520.000000	-450.000000	0	100	0	560.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	60	1692.289669	0	4000.000000	-2050.000000	1	100	1	4500.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
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
	23	28	0.004000	0.035000	1.050560	700.000000	250	250	0	0	0	-360	360;
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
	16	36	0.001000	0.010000	0.301594	700.000000	250	250	0	0	0	-360	360;
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
