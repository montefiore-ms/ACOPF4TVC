function mpc = powergrid
mpc.version = '2';
mpc.baseMVA = 100;
mpc.bus = [
	1	1	52.783695	25.052384	0	-400	1	1.043663	12.463968	130	1	1.100000	0.900000;
	2	1	142.405469	-83.129576	0	0	1	1.086544	12.729034	130	1	1.100000	0.900000;
	3	1	278.413425	135.428087	0	0	1	1.004405	13.692111	130	1	1.100000	0.900000;
	4	1	101.323643	73.948840	0	0	1	1.034856	14.212407	130	1	1.100000	0.900000;
	5	1	45.625920	22.035763	0	0	1	1.013769	-1.317111	130	1	1.100000	0.900000;
	6	1	79.750809	22.524202	0	0	1	1.012568	7.064578	130	1	1.100000	0.900000;
	7	1	244.192023	87.473316	0	0	1	0.999393	0.237415	130	1	1.100000	0.900000;
	8	1	321.597958	107.831312	0	0	1	1.059045	-2.543955	130	1	1.100000	0.900000;
	9	1	162.901982	-51.699232	0	0	1	1.059760	-2.776681	130	1	1.100000	0.900000;
	10	1	257.574826	175.978660	0	0	1	1.049704	2.264415	220	1	1.100000	0.900000;
	11	1	193.543209	135.052463	0	0	1	0.996247	10.756222	220	1	1.100000	0.900000;
	12	1	465.779726	34.444096	0	-400	1	0.971569	-0.460482	400	1	1.100000	0.900000;
	13	1	1016.640976	603.421772	0	0	1	0.982820	-7.248573	400	1	1.100000	0.900000;
	14	1	378.297778	203.427478	0	0	1	1.082102	-2.496764	400	1	1.100000	0.900000;
	15	1	231.004510	153.854967	0	0	1	1.081848	-1.592678	400	1	1.100000	0.900000;
	16	1	1.974207	0.576406	0	0	1	1.061656	-1.808561	400	1	1.100000	0.900000;
	17	1	37.166219	21.456711	0	0	1	1.048322	-1.754648	400	1	1.100000	0.900000;
	18	1	436.017904	174.043531	0	0	1	1.025500	-1.398989	400	1	1.100000	0.900000;
	19	1	482.578425	360.319003	0	0	1	1.005072	-3.401148	400	1	1.100000	0.900000;
	20	1	400.830766	133.022810	0	0	1	1.032708	-2.798616	400	1	1.100000	0.900000;
	21	1	526.160718	68.193124	0	0	1	1.027495	1.318629	400	1	1.100000	0.900000;
	22	1	176.827532	19.519823	0	0	1	1.017146	6.370343	400	1	1.100000	0.900000;
	23	1	0	0	0	-100	1	0.976669	12.714271	400	1	1.100000	0.900000;
	24	1	0	0	0	0	1	1.022059	16.795803	130	1	1.100000	0.900000;
	25	1	0	0	0	0	1	1.037997	14.186319	130	1	1.100000	0.900000;
	26	1	0	0	0	0	1	0.971788	12.489627	400	1	1.100000	0.900000;
	27	1	0	0	0	0	1	1.058130	5.140830	400	1	1.100000	0.900000;
	28	1	0	0	0	0	1	0.989039	11.865788	400	1	1.100000	0.900000;
	29	1	0	0	0	0	1	1.062735	1.308304	400	1	1.100000	0.900000;
	30	1	0	0	0	0	1	1.017359	-5.886374	400	1	1.100000	0.900000;
	31	1	0	0	0	0	1	1.039675	1.904920	400	1	1.100000	0.900000;
	32	1	0	0	0	0	1	1.041704	-6.452263	400	1	1.100000	0.900000;
	33	1	0	0	0	0	1	1.041704	-6.452263	400	1	1.100000	0.900000;
	34	1	0	0	0	0	1	1.057629	-3.408211	400	1	1.100000	0.900000;
	35	1	0	0	0	0	1	1.023440	-4.287001	400	1	1.100000	0.900000;
	36	1	0	0	0	0	1	1.070848	-2.167887	400	1	1.100000	0.900000;
	37	1	0	0	0	0	1	1.062575	-2.593218	400	1	1.100000	0.900000;
	38	2	0	0	0	0	1	0	12.729034	15	1	1.100000	0.900000;
	39	2	0	0	0	0	1	1	15.099611	15	1	1.100000	0.900000;
	40	2	0	0	0	0	1	1	21.345225	15	1	1.100000	0.900000;
	41	2	0	0	0	0	1	0	14.186319	15	1	1.100000	0.900000;
	42	2	0	0	0	0	1	1	30.198301	15	1	1.100000	0.900000;
	43	2	0	0	0	0	1	1	12.590141	15	1	1.100000	0.900000;
	44	2	0	0	0	0	1	1	16.806606	15	1	1.100000	0.900000;
	45	2	0	0	0	0	1	1	16.026386	15	1	1.100000	0.900000;
	46	2	0	0	0	0	1	1	18.247828	15	1	1.100000	0.900000;
	47	2	0	0	0	0	1	1	18.443600	15	1	1.100000	0.900000;
	48	2	0	0	0	0	1	1	10.427774	15	1	1.100000	0.900000;
	49	2	0	0	0	0	1	0	1.904920	15	1	1.100000	0.900000;
	50	2	0	0	0	0	1	0	-2.496764	15	1	1.100000	0.900000;
	51	2	0	0	0	0	1	0	-1.592678	15	1	1.100000	0.900000;
	52	3	0	0	0	0	1	1	0	15	1	1.000000	1.000000;
	53	2	0	0	0	0	1	1	4.056682	15	1	1.100000	0.900000;
	54	2	0	0	0	0	1	1	1.239524	15	1	1.100000	0.900000;
	55	2	0	0	0	0	1	0	-3.401148	15	1	1.100000	0.900000;
	56	2	0	0	0	0	1	1	6.763672	15	1	1.100000	0.900000;
	57	2	0	0	0	0	1	1	11.870956	15	1	1.100000	0.900000;
	58	2	0	0	0	0	1	1	11.870956	15	1	1.100000	0.900000;
	59	2	0	0	0	0	1	1	5.299023	15	1	1.100000	0.900000;
	60	2	0	0	0	0	1	1	-6.697945	15	1	1.100000	0.900000;
	61	2	0	0	0	0	1	0	-1.317111	15	1	1.100000	0.900000;
];
mpc.gen = [
	52	0	0	1840.000000	-540.000000	1	1	1	2800.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	38	0	0	720.000000	-720.000000	0	100	0	720.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	39	98.684992	0	540.000000	-540.000000	1	100	1	540.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	40	378.313037	0	630.000000	-630.000000	1	100	1	630.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	41	0	0	540.000000	-540.000000	0	100	0	540.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	42	475.000000	0	325.000000	-225.000000	1	100	1	475.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	43	260.000000	0	560.000000	-360.000000	1	100	1	560.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	44	380.000000	0	360.000000	-280.000000	1	100	1	380.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	45	518.543208	0	965.000000	-765.000000	1	100	1	965.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	46	650.000000	0	900.000000	-900.000000	1	100	1	900.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	47	520.000000	0	720.000000	-720.000000	1	100	1	720.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	48	195.000000	0	570.000000	-370.000000	1	100	1	570.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	49	0	0	515.000000	-415.000000	0	100	0	575.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	50	0	0	570.000000	-570.000000	0	100	0	0.000000	-0.000000	0	0	0	0	0	0	0	0	0	0	0;
	51	0	0	630.000000	-630.000000	0	100	0	630.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	53	390.000000	0	580.000000	-540.000000	1	100	1	540.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	54	379.471038	0	630.000000	-630.000000	1	100	1	630.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	55	0	0	630.000000	-630.000000	0	100	0	630.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	56	390.000000	0	540.000000	-540.000000	1	100	1	540.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	57	390.000000	0	540.000000	-540.000000	1	100	1	540.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	58	390.000000	0	540.000000	-540.000000	1	100	1	540.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	59	325.000000	0	520.000000	-450.000000	1	100	1	560.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	60	283.379444	0	4000.000000	-2050.000000	1	100	1	4500.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
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
	7	8	0.010000	0.080000	0.015928	175.000000	250	250	0	0	0	-360	360;
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
	28	31	0.004000	0.040000	1.201344	700.000000	250	250	0	0	0	-360	360;
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
