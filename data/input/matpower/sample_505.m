function mpc = powergrid
mpc.version = '2';
mpc.baseMVA = 100;
mpc.bus = [
	1	1	1.477818	0.235294	0	-400	1	1.050192	20.815300	130	1	1.100000	0.900000;
	2	1	214.263085	-144.434520	0	0	1	1.103746	20.530335	130	1	1.100000	0.900000;
	3	1	275.209909	164.418001	0	0	1	1.015638	22.570126	130	1	1.100000	0.900000;
	4	1	495.081643	181.340370	0	0	1	0.990895	14.801896	130	1	1.100000	0.900000;
	5	1	248.264353	-139.471755	0	0	1	0.951474	-14.784010	130	1	1.100000	0.900000;
	6	1	129.864754	64.256342	0	0	1	0.977748	-0.223100	130	1	1.100000	0.900000;
	7	1	583.246246	329.992841	0	0	1	0.902450	-13.862128	130	1	1.100000	0.900000;
	8	1	547.715922	118.693313	0	0	1	0.973061	-8.398320	130	1	1.100000	0.900000;
	9	1	86.032824	51.213983	0	0	1	0.990104	-6.482203	130	1	1.100000	0.900000;
	10	1	125.558056	60.039348	0	0	1	1.005905	0.477941	220	1	1.100000	0.900000;
	11	1	465.756043	271.026487	0	0	1	0.959914	-5.358351	220	1	1.100000	0.900000;
	12	1	15.473063	11.197490	0	-400	1	1.036017	26.256159	400	1	1.100000	0.900000;
	13	1	119.097462	62.023723	0	0	1	1.073820	25.116620	400	1	1.100000	0.900000;
	14	1	755.001991	545.117066	0	0	1	0.949173	-8.153006	400	1	1.100000	0.900000;
	15	1	233.509158	161.666781	0	0	1	0.992855	-5.168078	400	1	1.100000	0.900000;
	16	1	1.716105	0.956327	0	0	1	0.995940	-4.667854	400	1	1.100000	0.900000;
	17	1	88.537399	60.471835	0	0	1	0.996107	-3.911658	400	1	1.100000	0.900000;
	18	1	83.658622	7.872491	0	0	1	1.000397	-2.033498	400	1	1.100000	0.900000;
	19	1	335.589066	165.920750	0	0	1	0.993793	0.905744	400	1	1.100000	0.900000;
	20	1	261.093544	103.743555	0	0	1	0.953494	-13.214402	400	1	1.100000	0.900000;
	21	1	645.779781	260.762223	0	0	1	0.967540	-12.180211	400	1	1.100000	0.900000;
	22	1	572.214700	298.258606	0	0	1	0.968640	-10.265067	400	1	1.100000	0.900000;
	23	1	0	0	0	-100	1	0.985393	21.203955	400	1	1.100000	0.900000;
	24	1	0	0	0	0	1	1.047514	21.817098	130	1	1.100000	0.900000;
	25	1	0	0	0	0	1	0.999017	28.083984	130	1	1.100000	0.900000;
	26	1	0	0	0	0	1	0.975500	20.514638	400	1	1.100000	0.900000;
	27	1	0	0	0	0	1	1.108597	8.103878	400	1	1.100000	0.900000;
	28	1	0	0	0	0	1	0.958537	13.451159	400	1	1.100000	0.900000;
	29	1	0	0	0	0	1	1.008180	1.425064	400	1	1.100000	0.900000;
	30	1	0	0	0	0	1	1.304095	7.092538	400	1	1.100000	0.900000;
	31	1	0	0	0	0	1	0.974954	2.848018	400	1	1.100000	0.900000;
	32	1	0	0	0	0	1	0.900494	-19.224278	400	1	1.100000	0.900000;
	33	1	0	0	0	0	1	0.900494	-19.224278	400	1	1.100000	0.900000;
	34	1	0	0	0	0	1	0.966338	-9.606452	400	1	1.100000	0.900000;
	35	1	0	0	0	0	1	0.940971	-11.211481	400	1	1.100000	0.900000;
	36	1	0	0	0	0	1	0.988130	-6.367390	400	1	1.100000	0.900000;
	37	1	0	0	0	0	1	0.995688	-5.651492	400	1	1.100000	0.900000;
	38	2	0	0	0	0	1	0	20.530335	15	1	1.100000	0.900000;
	39	2	0	0	0	0	1	1	28.078933	15	1	1.100000	0.900000;
	40	2	0	0	0	0	1	0	21.817098	15	1	1.100000	0.900000;
	41	2	0	0	0	0	1	1	31.347654	15	1	1.100000	0.900000;
	42	2	0	0	0	0	1	1	31.517352	15	1	1.100000	0.900000;
	43	2	0	0	0	0	1	1	5.499888	15	1	1.100000	0.900000;
	44	2	0	0	0	0	1	1	4.547414	15	1	1.100000	0.900000;
	45	2	0	0	0	0	1	1	-2.829785	15	1	1.100000	0.900000;
	46	2	0	0	0	0	1	1	24.256422	15	1	1.100000	0.900000;
	47	2	0	0	0	0	1	1	26.882396	15	1	1.100000	0.900000;
	48	2	0	0	0	0	1	0	8.103878	15	1	1.100000	0.900000;
	49	2	0	0	0	0	1	1	17.488819	15	1	1.100000	0.900000;
	50	2	0	0	0	0	1	0	-8.153006	15	1	1.100000	0.900000;
	51	2	0	0	0	0	1	0	-5.168078	15	1	1.100000	0.900000;
	52	3	0	0	0	0	1	1	0	15	1	1.000000	1.000000;
	53	2	0	0	0	0	1	1	3.559499	15	1	1.100000	0.900000;
	54	2	0	0	0	0	1	1	6.536141	15	1	1.100000	0.900000;
	55	2	0	0	0	0	1	1	6.377943	15	1	1.100000	0.900000;
	56	2	0	0	0	0	1	1	-6.396641	15	1	1.100000	0.900000;
	57	2	0	0	0	0	1	1	-4.488088	15	1	1.100000	0.900000;
	58	2	0	0	0	0	1	1	-4.488088	15	1	1.100000	0.900000;
	59	2	0	0	0	0	1	1	31.656281	15	1	1.100000	0.900000;
	60	2	0	0	0	0	1	0	25.116620	15	1	1.100000	0.900000;
	61	2	0	0	0	0	1	0	-14.784010	15	1	1.100000	0.900000;
];
mpc.gen = [
	52	0	0	1840.000000	-540.000000	1	1	1	2800.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	38	0	0	720.000000	-720.000000	0	100	0	720.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	39	390.000000	0	540.000000	-540.000000	1	100	1	540.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	40	0	0	630.000000	-630.000000	0	100	0	630.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	41	227.500000	0	540.000000	-540.000000	1	100	1	540.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	42	475.000000	0	325.000000	-225.000000	1	100	1	475.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	43	260.000000	0	560.000000	-360.000000	1	100	1	560.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	44	380.000000	0	360.000000	-280.000000	1	100	1	380.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	45	239.978343	0	965.000000	-765.000000	1	100	1	965.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	46	424.407958	0	900.000000	-900.000000	1	100	1	900.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	47	520.000000	0	720.000000	-720.000000	1	100	1	720.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	48	0	0	570.000000	-370.000000	0	100	0	570.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	49	575.000000	0	515.000000	-415.000000	1	100	1	575.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	50	0	0	570.000000	-570.000000	0	100	0	0.000000	-0.000000	0	0	0	0	0	0	0	0	0	0	0;
	51	0	0	630.000000	-630.000000	0	100	0	630.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	53	390.000000	0	580.000000	-540.000000	1	100	1	540.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	54	455.000000	0	630.000000	-630.000000	1	100	1	630.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	55	442.255247	0	630.000000	-630.000000	1	100	1	630.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	56	390.000000	0	540.000000	-540.000000	1	100	1	540.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	57	390.000000	0	540.000000	-540.000000	1	100	1	540.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	58	390.000000	0	540.000000	-540.000000	1	100	1	540.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	59	325.000000	0	520.000000	-450.000000	1	100	1	560.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	60	0	0	4000.000000	-2050.000000	0	100	0	4500.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
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
	26	12	0.005000	0.045000	1.402400	700.000000	250	250	0	0	0	-360	360;
	23	28	0.004000	0.035000	1.050560	700.000000	250	250	0	0	1	-360	360;
	23	12	0.005000	0.050000	1.497920	700.000000	250	250	0	0	1	-360	360;
	27	29	0.004000	0.040000	1.201344	700.000000	250	250	0	0	1	-360	360;
	27	30	0.010000	0.100000	3.000864	700.000000	250	250	0	0	1	-360	360;
	30	15	0	-0.040000	0	700.000000	250	250	0	0	0	-360	360;
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