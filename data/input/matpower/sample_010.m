function mpc = powergrid
mpc.version = '2';
mpc.baseMVA = 100;
mpc.bus = [
	1	1	549.901908	399.428794	0	-400	1	0.904328	3.269504	130	1	1.100000	0.900000;
	2	1	287.507651	145.342365	0	0	1	0.975281	6.884463	130	1	1.100000	0.900000;
	3	1	9.124647	-6.153905	0	0	1	0.946071	8.210783	130	1	1.100000	0.900000;
	4	1	554.995507	131.989503	0	0	1	0.967994	-4.195792	130	1	1.100000	0.900000;
	5	1	104.329458	35.363071	0	0	1	1.001927	-10.284245	130	1	1.100000	0.900000;
	6	1	46.014135	15.129191	0	0	1	1.009542	5.567198	130	1	1.100000	0.900000;
	7	1	359.058180	122.334538	0	0	1	0.991206	-10.477196	130	1	1.100000	0.900000;
	8	1	178.578954	117.167278	0	0	1	1.038723	-5.669441	130	1	1.100000	0.900000;
	9	1	62.108443	16.386209	0	0	1	1.051875	-6.598447	130	1	1.100000	0.900000;
	10	1	355.091705	198.345484	0	0	1	1.009711	-6.453638	220	1	1.100000	0.900000;
	11	1	504.235259	314.106600	0	0	1	0.958375	-4.759344	220	1	1.100000	0.900000;
	12	1	65.336404	46.464860	0	-400	1	0.931356	18.934637	400	1	1.100000	0.900000;
	13	1	157.648939	-78.033465	0	0	1	0.998144	26.861026	400	1	1.100000	0.900000;
	14	1	302.485230	101.397525	0	0	1	1.072893	-5.192907	400	1	1.100000	0.900000;
	15	1	138.973740	26.467649	0	0	1	1.051599	-2.575149	400	1	1.100000	0.900000;
	16	1	12.569084	4.373850	0	0	1	1.039041	-3.572125	400	1	1.100000	0.900000;
	17	1	274.797957	201.893468	0	0	1	1.020512	-3.665531	400	1	1.100000	0.900000;
	18	1	105.965762	4.038325	0	0	1	1.019761	-1.677795	400	1	1.100000	0.900000;
	19	1	392.860100	152.926068	0	0	1	1.043175	-10.361486	400	1	1.100000	0.900000;
	20	1	142.184389	61.378345	0	0	1	1.058723	0.758030	400	1	1.100000	0.900000;
	21	1	15.441256	-5.612337	0	0	1	1.050368	4.951691	400	1	1.100000	0.900000;
	22	1	95.197767	39.775179	0	0	1	1.037052	7.369169	400	1	1.100000	0.900000;
	23	1	0	0	0	-100	1	0.874515	6.167555	400	1	1.100000	0.900000;
	24	1	0	0	0	0	1	0.977991	11.636086	130	1	1.100000	0.900000;
	25	1	0	0	0	0	1	0.994406	9.303028	130	1	1.100000	0.900000;
	26	1	0	0	0	0	1	0.859813	5.005283	400	1	1.100000	0.900000;
	27	1	0	0	0	0	1	1.015355	0.588148	400	1	1.100000	0.900000;
	28	1	0	0	0	0	1	0.924383	-1.786516	400	1	1.100000	0.900000;
	29	1	0	0	0	0	1	1.023605	-3.591343	400	1	1.100000	0.900000;
	30	1	0	0	0	0	1	0.985153	-4.620821	400	1	1.100000	0.900000;
	31	1	0	0	0	0	1	0.998368	-4.453588	400	1	1.100000	0.900000;
	32	1	0	0	0	0	1	1.048294	-5.643599	400	1	1.100000	0.900000;
	33	1	0	0	0	0	1	1.048294	-5.643599	400	1	1.100000	0.900000;
	34	1	0	0	0	0	1	1.022149	-1.955671	400	1	1.100000	0.900000;
	35	1	0	0	0	0	1	1.012336	-5.771874	400	1	1.100000	0.900000;
	36	1	0	0	0	0	1	1.051686	-4.964583	400	1	1.100000	0.900000;
	37	1	0	0	0	0	1	1.057618	-6.300723	400	1	1.100000	0.900000;
	38	2	0	0	0	0	1	1	9.812551	15	1	1.100000	0.900000;
	39	2	0	0	0	0	1	0	8.210783	15	1	1.100000	0.900000;
	40	2	0	0	0	0	1	1	16.769159	15	1	1.100000	0.900000;
	41	2	0	0	0	0	1	1	12.581846	15	1	1.100000	0.900000;
	42	2	0	0	0	0	1	0	-4.195792	15	1	1.100000	0.900000;
	43	2	0	0	0	0	1	1	11.109374	15	1	1.100000	0.900000;
	44	2	0	0	0	0	1	1	-5.412155	15	1	1.100000	0.900000;
	45	2	0	0	0	0	1	1	1.079709	15	1	1.100000	0.900000;
	46	2	0	0	0	0	1	0	5.005283	15	1	1.100000	0.900000;
	47	2	0	0	0	0	1	0	6.167555	15	1	1.100000	0.900000;
	48	2	0	0	0	0	1	1	6.098495	15	1	1.100000	0.900000;
	49	2	0	0	0	0	1	0	-4.453588	15	1	1.100000	0.900000;
	50	2	0	0	0	0	1	0	-5.192907	15	1	1.100000	0.900000;
	51	2	0	0	0	0	1	1	2.744830	15	1	1.100000	0.900000;
	52	3	0	0	0	0	1	1	0	15	1	1.000000	1.000000;
	53	2	0	0	0	0	1	1	3.808673	15	1	1.100000	0.900000;
	54	2	0	0	0	0	1	0	-10.361486	15	1	1.100000	0.900000;
	55	2	0	0	0	0	1	0	-10.361486	15	1	1.100000	0.900000;
	56	2	0	0	0	0	1	1	10.277816	15	1	1.100000	0.900000;
	57	2	0	0	0	0	1	0	7.369169	15	1	1.100000	0.900000;
	58	2	0	0	0	0	1	1	12.763887	15	1	1.100000	0.900000;
	59	2	0	0	0	0	1	0	18.934637	15	1	1.100000	0.900000;
	60	2	0	0	0	0	1	1	28.877391	15	1	1.100000	0.900000;
	61	2	0	0	0	0	1	0	-10.284245	15	1	1.100000	0.900000;
];
mpc.gen = [
	52	0	0	1840.000000	-540.000000	1	1	1	2800.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	38	265.705788	0	720.000000	-720.000000	1	100	1	720.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	39	0	0	540.000000	-540.000000	0	100	0	540.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	40	408.325818	0	630.000000	-630.000000	1	100	1	630.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	41	227.500000	0	540.000000	-540.000000	1	100	1	540.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	42	0	0	325.000000	-225.000000	0	100	0	475.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	43	260.000000	0	560.000000	-360.000000	1	100	1	560.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	44	116.680169	0	360.000000	-280.000000	1	100	1	380.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	45	552.500000	0	965.000000	-765.000000	1	100	1	965.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	46	0	0	900.000000	-900.000000	0	100	0	900.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	47	0	0	720.000000	-720.000000	0	100	0	720.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	48	195.000000	0	570.000000	-370.000000	1	100	1	570.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	49	0	0	515.000000	-415.000000	0	100	0	575.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	50	0	0	570.000000	-570.000000	0	100	0	0.000000	-0.000000	0	0	0	0	0	0	0	0	0	0	0;
	51	455.000000	0	630.000000	-630.000000	1	100	1	630.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	53	390.000000	0	580.000000	-540.000000	1	100	1	540.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	54	0	0	630.000000	-630.000000	0	100	0	630.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	55	0	0	630.000000	-630.000000	0	100	0	630.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	56	390.000000	0	540.000000	-540.000000	1	100	1	540.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	57	0	0	540.000000	-540.000000	0	100	0	540.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	58	390.000000	0	540.000000	-540.000000	1	100	1	540.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	59	0	0	520.000000	-450.000000	0	100	0	560.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	60	1053.694701	0	4000.000000	-2050.000000	1	100	1	4500.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
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