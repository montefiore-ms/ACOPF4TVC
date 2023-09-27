function mpc = powergrid
mpc.version = '2';
mpc.baseMVA = 100;
mpc.bus = [
	1	1	128.416070	85.567718	0	-400	1	1.033459	10.486396	130	1	1.100000	0.900000;
	2	1	335.375823	206.070459	0	0	1	1.041278	8.880283	130	1	1.100000	0.900000;
	3	1	6.435629	4.572612	0	0	1	1.024588	12.888700	130	1	1.100000	0.900000;
	4	1	100.059790	68.892380	0	0	1	1.048810	7.872299	130	1	1.100000	0.900000;
	5	1	13.718416	4.661974	0	0	1	1.047096	-5.333498	130	1	1.100000	0.900000;
	6	1	228.080763	84.327844	0	0	1	0.905411	-17.525487	130	1	1.100000	0.900000;
	7	1	27.602499	4.817927	0	0	1	1.044938	-5.439981	130	1	1.100000	0.900000;
	8	1	213.905790	54.004235	0	0	1	1.044205	-5.012596	130	1	1.100000	0.900000;
	9	1	41.257946	29.004058	0	0	1	1.052612	-4.688320	130	1	1.100000	0.900000;
	10	1	117.655194	47.162844	0	0	1	1.057449	2.906475	220	1	1.100000	0.900000;
	11	1	476.370305	245.543824	0	0	1	0.982169	5.367753	220	1	1.100000	0.900000;
	12	1	203.635549	124.241467	0	-400	1	0.969719	7.699386	400	1	1.100000	0.900000;
	13	1	266.934514	199.571834	0	0	1	0.978127	5.200607	400	1	1.100000	0.900000;
	14	1	234.986591	58.136216	0	0	1	1.083961	-3.420193	400	1	1.100000	0.900000;
	15	1	734.614556	524.720601	0	0	1	1.023621	-2.824184	400	1	1.100000	0.900000;
	16	1	222.888278	48.793457	0	0	1	1.034136	-3.322376	400	1	1.100000	0.900000;
	17	1	88.176817	10.191039	0	0	1	1.030032	-2.777914	400	1	1.100000	0.900000;
	18	1	108.233173	38.735466	0	0	1	1.020020	-1.224906	400	1	1.100000	0.900000;
	19	1	210.513686	98.857957	0	0	1	1.031687	-1.600089	400	1	1.100000	0.900000;
	20	1	151.816703	113.373841	0	0	1	1.032403	-9.667231	400	1	1.100000	0.900000;
	21	1	209.431025	-137.056189	0	0	1	1.019717	-10.997610	400	1	1.100000	0.900000;
	22	1	773.354361	517.542524	0	0	1	0.962952	-14.773476	400	1	1.100000	0.900000;
	23	1	0	0	0	-100	1	0.950357	9.337972	400	1	1.100000	0.900000;
	24	1	0	0	0	0	1	1.020043	14.709460	130	1	1.100000	0.900000;
	25	1	0	0	0	0	1	1.010663	20.651426	130	1	1.100000	0.900000;
	26	1	0	0	0	0	1	0.961255	10.520103	400	1	1.100000	0.900000;
	27	1	0	0	0	0	1	1.038910	4.455643	400	1	1.100000	0.900000;
	28	1	0	0	0	0	1	0.997897	7.138457	400	1	1.100000	0.900000;
	29	1	0	0	0	0	1	1.044966	1.557279	400	1	1.100000	0.900000;
	30	1	0	0	0	0	1	0.943570	-7.927510	400	1	1.100000	0.900000;
	31	1	0	0	0	0	1	1.032432	3.168783	400	1	1.100000	0.900000;
	32	1	0	0	0	0	1	1.062554	-9.080435	400	1	1.100000	0.900000;
	33	1	0	0	0	0	1	1.062554	-9.080435	400	1	1.100000	0.900000;
	34	1	0	0	0	0	1	0.983333	-6.012937	400	1	1.100000	0.900000;
	35	1	0	0	0	0	1	1.008593	-7.292040	400	1	1.100000	0.900000;
	36	1	0	0	0	0	1	1.051045	-3.985897	400	1	1.100000	0.900000;
	37	1	0	0	0	0	1	1.056270	-4.324585	400	1	1.100000	0.900000;
	38	2	0	0	0	0	1	0	8.880283	15	1	1.100000	0.900000;
	39	2	0	0	0	0	1	0	12.888700	15	1	1.100000	0.900000;
	40	2	0	0	0	0	1	1	19.005864	15	1	1.100000	0.900000;
	41	2	0	0	0	0	1	1	23.877447	15	1	1.100000	0.900000;
	42	2	0	0	0	0	1	0	7.872299	15	1	1.100000	0.900000;
	43	2	0	0	0	0	1	0	-17.525487	15	1	1.100000	0.900000;
	44	2	0	0	0	0	1	0	-5.439981	15	1	1.100000	0.900000;
	45	2	0	0	0	0	1	1	11.064872	15	1	1.100000	0.900000;
	46	2	0	0	0	0	1	1	16.341617	15	1	1.100000	0.900000;
	47	2	0	0	0	0	1	0	9.337972	15	1	1.100000	0.900000;
	48	2	0	0	0	0	1	1	9.840682	15	1	1.100000	0.900000;
	49	2	0	0	0	0	1	1	16.977824	15	1	1.100000	0.900000;
	50	2	0	0	0	0	1	0	-3.420193	15	1	1.100000	0.900000;
	51	2	0	0	0	0	1	1	2.641642	15	1	1.100000	0.900000;
	52	3	0	0	0	0	1	1	0	15	1	1.000000	1.000000;
	53	2	0	0	0	0	1	1	4.260162	15	1	1.100000	0.900000;
	54	2	0	0	0	0	1	0	-1.600089	15	1	1.100000	0.900000;
	55	2	0	0	0	0	1	1	3.822872	15	1	1.100000	0.900000;
	56	2	0	0	0	0	1	1	-5.510905	15	1	1.100000	0.900000;
	57	2	0	0	0	0	1	1	-10.129542	15	1	1.100000	0.900000;
	58	2	0	0	0	0	1	0	-14.773476	15	1	1.100000	0.900000;
	59	2	0	0	0	0	1	1	13.469917	15	1	1.100000	0.900000;
	60	2	0	0	0	0	1	0	5.200607	15	1	1.100000	0.900000;
	61	2	0	0	0	0	1	0	-5.333498	15	1	1.100000	0.900000;
];
mpc.gen = [
	52	0	0	1840.000000	-540.000000	1	1	1	2800.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	38	0	0	720.000000	-720.000000	0	100	0	720.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	39	0	0	540.000000	-540.000000	0	100	0	540.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	40	356.608789	0	630.000000	-630.000000	1	100	1	630.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	41	227.500000	0	540.000000	-540.000000	1	100	1	540.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	42	0	0	325.000000	-225.000000	0	100	0	475.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	43	0	0	560.000000	-360.000000	0	100	0	560.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	44	0	0	360.000000	-280.000000	0	100	0	380.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	45	552.500000	0	965.000000	-765.000000	1	100	1	965.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	46	650.000000	0	900.000000	-900.000000	1	100	1	900.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	47	0	0	720.000000	-720.000000	0	100	0	720.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	48	195.000000	0	570.000000	-370.000000	1	100	1	570.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	49	575.000000	0	515.000000	-415.000000	1	100	1	575.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	50	0	0	570.000000	-570.000000	0	100	0	0.000000	-0.000000	0	0	0	0	0	0	0	0	0	0	0;
	51	455.000000	0	630.000000	-630.000000	1	100	1	630.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	53	389.999998	0	580.000000	-540.000000	1	100	1	540.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	54	0	0	630.000000	-630.000000	0	100	0	630.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	55	454.999997	0	630.000000	-630.000000	1	100	1	630.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	56	390.000000	0	540.000000	-540.000000	1	100	1	540.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	57	311.854696	0	540.000000	-540.000000	1	100	1	540.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
	58	0	0	540.000000	-540.000000	0	100	0	540.000000	10.000000	0	0	0	0	0	0	0	0	0	0	0;
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
