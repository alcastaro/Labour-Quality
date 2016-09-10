*Calidad del Empleo

rename actividadempresa rama2d
rename terminocontrato p6460
rename tiempoenlaempresa p6426
rename contratoverbaloescrito p6450
rename contratosino p6440
rename desempe�oempresa p6430

*Ingreso Real
gen ipc=1.0366
gen ingreso_real=inglabo/ipc

*Variables binarias
gen d_mujer=0
replace d_mujer=1 if p6020==2


* Ramas
rename rama4d ramadeactividad
 g d_agricultura=1 if  ramadeactividad==111
 replace d_agricultura=1 if  ramadeactividad==112
 replace d_agricultura=1 if  ramadeactividad==111
 replace d_agricultura=1 if  ramadeactividad==113
 replace d_agricultura=1 if  ramadeactividad==114
 replace d_agricultura=1 if  ramadeactividad==115
 replace d_agricultura=1 if  ramadeactividad==116
 replace d_agricultura=1 if  ramadeactividad==117
 replace d_agricultura=1 if  ramadeactividad==118
 replace d_agricultura=1 if  ramadeactividad==121
 replace d_agricultura=1 if  ramadeactividad==122
 replace d_agricultura=1 if  ramadeactividad==123
 replace d_agricultura=1 if  ramadeactividad==124
 replace d_agricultura=1 if  ramadeactividad==125
 replace d_agricultura=1 if  ramadeactividad==130
 replace d_agricultura=1 if  ramadeactividad==140
 replace d_agricultura=0 if d_agricultura==.
 g d_silvicultura=1 if  ramadeactividad==201
 replace d_silvicultura=0 if d_silvicultura==.
 g d_pesca=1 if  ramadeactividad==501
 replace d_pesca=0 if d_pesca==.
g d_carbon=0
replace d_carbon=1 if ramadeactividad==1010
replace d_carbon=1 if ramadeactividad==1020
g d_petroleo=0
replace d_petroleo=1 if ramadeactividad==1110
replace d_petroleo=1 if ramadeactividad==1120
g d_minmetaliferos=0
replace d_minmetaliferos=1 if ramadeactividad==1320
replace d_minmetaliferos=1 if ramadeactividad==1339
g d_minnometalicos=0
replace d_minnometalicos=1 if ramadeactividad==1411
replace d_minnometalicos=1 if ramadeactividad==1490
g d_prodalimenticios=0
replace d_prodalimenticios=1 if ramadeactividad==1511
replace d_prodalimenticios=1 if ramadeactividad==1512
replace d_prodalimenticios=1 if ramadeactividad==1521
replace d_prodalimenticios=1 if ramadeactividad==1522
replace d_prodalimenticios=1 if ramadeactividad==1530
replace d_prodalimenticios=1 if ramadeactividad==1541
replace d_prodalimenticios=1 if ramadeactividad==1543
replace d_prodalimenticios=1 if ramadeactividad==1551
replace d_prodalimenticios=1 if ramadeactividad==1552
replace d_prodalimenticios=1 if ramadeactividad==1561
replace d_prodalimenticios=1 if ramadeactividad==1562
replace d_prodalimenticios=1 if ramadeactividad==1563
replace d_prodalimenticios=1 if ramadeactividad==1571
replace d_prodalimenticios=1 if ramadeactividad==1572
replace d_prodalimenticios=1 if ramadeactividad==1581
replace d_prodalimenticios=1 if ramadeactividad==1589
replace d_prodalimenticios=1 if ramadeactividad==1591
replace d_prodalimenticios=1 if ramadeactividad==1592
replace d_prodalimenticios=1 if ramadeactividad==1593
replace d_prodalimenticios=1 if ramadeactividad==1594
g d_prodtabaco=0
replace d_prodtabaco=1 if ramadeactividad==1600
g d_prodtextiles=0
replace d_prodtextiles=1 if ramadeactividad==1710
replace d_prodtextiles=1 if ramadeactividad==1720
replace d_prodtextiles=1 if ramadeactividad==1730
replace d_prodtextiles=1 if ramadeactividad==1741
replace d_prodtextiles=1 if ramadeactividad==1742
replace d_prodtextiles=1 if ramadeactividad==1743
replace d_prodtextiles=1 if ramadeactividad==1749
replace d_prodtextiles=1 if ramadeactividad==1750
g d_confeccionprendas=0
replace d_confeccionprendas=1 if ramadeactividad==1810
replace d_confeccionprendas=1 if ramadeactividad==1820
g d_cueros=0
replace d_cueros=1 if ramadeactividad==1910
replace d_cueros=1 if ramadeactividad==1921
replace d_cueros=1 if ramadeactividad==1922
replace d_cueros=1 if ramadeactividad==1924
replace d_cueros=1 if ramadeactividad==1925
replace d_cueros=1 if ramadeactividad==1926
replace d_cueros=1 if ramadeactividad==1929
replace d_cueros=1 if ramadeactividad==1931
replace d_cueros=1 if ramadeactividad==1932
replace d_cueros=1 if ramadeactividad==1939
g d_madera=0
replace d_madera=1 if ramadeactividad==2010
replace d_madera=1 if ramadeactividad==2020
replace d_madera=1 if ramadeactividad==2030
replace d_madera=1 if ramadeactividad==2040
replace d_madera=1 if ramadeactividad==2090
g d_papel=0
replace d_papel=1 if ramadeactividad==2101
replace d_papel=1 if ramadeactividad==2102
replace d_papel=1 if ramadeactividad==2109
g d_actedicion=0
replace d_actedicion=1 if ramadeactividad==2211
replace d_actedicion=1 if ramadeactividad==2212
replace d_actedicion=1 if ramadeactividad==2213
replace d_actedicion=1 if ramadeactividad==2219
replace d_actedicion=1 if ramadeactividad==2220
replace d_actedicion=1 if ramadeactividad==2231
replace d_actedicion=1 if ramadeactividad==2233
replace d_actedicion=1 if ramadeactividad==2234
replace d_actedicion=1 if ramadeactividad==2239
g d_coquizacion=0
replace d_coquizacion=1 if ramadeactividad==2310
replace d_coquizacion=1 if ramadeactividad==2321
replace d_coquizacion=1 if ramadeactividad==2322
g d_quimicos=0
replace d_quimicos=1 if ramadeactividad==2411
replace d_quimicos=1 if ramadeactividad==2412
replace d_quimicos=1 if ramadeactividad==2413
replace d_quimicos=1 if ramadeactividad==2421
replace d_quimicos=1 if ramadeactividad==2422
replace d_quimicos=1 if ramadeactividad==2423
replace d_quimicos=1 if ramadeactividad==2424
replace d_quimicos=1 if ramadeactividad==2429
replace d_quimicos=1 if ramadeactividad==2430
g d_cauchoplastico=0
replace d_cauchoplastico=1 if ramadeactividad==2511
replace d_cauchoplastico=1 if ramadeactividad==2512
replace d_cauchoplastico=1 if ramadeactividad==2513
replace d_cauchoplastico=1 if ramadeactividad==2519
replace d_cauchoplastico=1 if ramadeactividad==2521
replace d_cauchoplastico=1 if ramadeactividad==2529
g d_prodminnometalicos=0
replace d_prodminnometalicos=1 if ramadeactividad==2610
replace d_prodminnometalicos=1 if ramadeactividad==2691
replace d_prodminnometalicos=1 if ramadeactividad==2692
replace d_prodminnometalicos=1 if ramadeactividad==2693
replace d_prodminnometalicos=1 if ramadeactividad==2694
replace d_prodminnometalicos=1 if ramadeactividad==2695
replace d_prodminnometalicos=1 if ramadeactividad==2696
replace d_prodminnometalicos=1 if ramadeactividad==2699
g d_prodmetalurgicos=0
replace d_prodmetalurgicos=1 if ramadeactividad==2710
replace d_prodmetalurgicos=1 if ramadeactividad==2729
replace d_prodmetalurgicos=1 if ramadeactividad==2731
g d_prodmetal=0
replace d_prodmetal=1 if ramadeactividad==2811
replace d_prodmetal=1 if ramadeactividad==2812
replace d_prodmetal=1 if ramadeactividad==2813
replace d_prodmetal=1 if ramadeactividad==2891
replace d_prodmetal=1 if ramadeactividad==2892
replace d_prodmetal=1 if ramadeactividad==2893
replace d_prodmetal=1 if ramadeactividad==2899
g d_maqyequi=0
replace d_maqyequi=1 if ramadeactividad==2911
replace d_maqyequi=1 if ramadeactividad==2912
replace d_maqyequi=1 if ramadeactividad==2913
replace d_maqyequi=1 if ramadeactividad==2914
replace d_maqyequi=1 if ramadeactividad==2915
replace d_maqyequi=1 if ramadeactividad==2919
replace d_maqyequi=1 if ramadeactividad==2921
replace d_maqyequi=1 if ramadeactividad==2924
replace d_maqyequi=1 if ramadeactividad==2925
replace d_maqyequi=1 if ramadeactividad==2926
replace d_maqyequi=1 if ramadeactividad==2929
replace d_maqyequi=1 if ramadeactividad==2930
g d_maqoficina=0
replace d_maqoficina=1 if ramadeactividad==3000
g d_maqelectr=0
replace d_maqelectr=1 if ramadeactividad==3110
replace d_maqelectr=1 if ramadeactividad==3120
replace d_maqelectr=1 if ramadeactividad==3130
replace d_maqelectr=1 if ramadeactividad==3140
replace d_maqelectr=1 if ramadeactividad==3150
replace d_maqelectr=1 if ramadeactividad==3190
g d_equiporadio=0
replace d_equiporadio=1 if ramadeactividad==3210
replace d_equiporadio=1 if ramadeactividad==3220
replace d_equiporadio=1 if ramadeactividad==3230
g d_instrmedicos=0
replace d_instrmedicos=1 if ramadeactividad==3311
replace d_instrmedicos=1 if ramadeactividad==3312
replace d_instrmedicos=1 if ramadeactividad==3320
replace d_instrmedicos=1 if ramadeactividad==3330
g d_vehiculos=0
replace d_vehiculos=1 if ramadeactividad==3410
replace d_vehiculos=1 if ramadeactividad==3420
replace d_vehiculos=1 if ramadeactividad==3430
g d_otroeqtransporte=0
replace d_otroeqtransporte=1 if ramadeactividad==3511
replace d_otroeqtransporte=1 if ramadeactividad==3512
replace d_otroeqtransporte=1 if ramadeactividad==3520
replace d_otroeqtransporte=1 if ramadeactividad==3530
replace d_otroeqtransporte=1 if ramadeactividad==3591
g d_muebles=0
replace d_muebles=1 if ramadeactividad==3611
replace d_muebles=1 if ramadeactividad==3612
replace d_muebles=1 if ramadeactividad==3613
replace d_muebles=1 if ramadeactividad==3614
replace d_muebles=1 if ramadeactividad==3619
replace d_muebles=1 if ramadeactividad==3691
replace d_muebles=1 if ramadeactividad==3692
replace d_muebles=1 if ramadeactividad==3693
replace d_muebles=1 if ramadeactividad==3694
replace d_muebles=1 if ramadeactividad==3699
g d_reciclaje=0
replace d_reciclaje=1 if ramadeactividad==3710
replace d_reciclaje=1 if ramadeactividad==3720
g d_suminelectricidad=0
replace d_suminelectricidad=1 if ramadeactividad==4010
replace d_suminelectricidad=1 if ramadeactividad==4020
replace d_suminelectricidad=1 if ramadeactividad==4030
g d_agua=0
replace d_agua=1 if ramadeactividad==4100
g d_construccion=0
replace d_construccion=1 if ramadeactividad==4511
replace d_construccion=1 if ramadeactividad==4512
replace d_construccion=1 if ramadeactividad==4521
replace d_construccion=1 if ramadeactividad==4522
replace d_construccion=1 if ramadeactividad==4530
replace d_construccion=1 if ramadeactividad==4541
replace d_construccion=1 if ramadeactividad==4542
replace d_construccion=1 if ramadeactividad==4543
replace d_construccion=1 if ramadeactividad==4549
replace d_construccion=1 if ramadeactividad==4551
replace d_construccion=1 if ramadeactividad==4552
replace d_construccion=1 if ramadeactividad==4559
replace d_construccion=1 if ramadeactividad==4560
g d_comercio=0
replace d_comercio=1 if ramadeactividad==5011
replace d_comercio=1 if ramadeactividad==5012
replace d_comercio=1 if ramadeactividad==5020
replace d_comercio=1 if ramadeactividad==5030
replace d_comercio=1 if ramadeactividad==5040
replace d_comercio=1 if ramadeactividad==5051
replace d_comercio=1 if ramadeactividad==5052
g d_comerciomayor=0
replace d_comerciomayor=1 if ramadeactividad==5111
replace d_comerciomayor=1 if ramadeactividad==5112
replace d_comerciomayor=1 if ramadeactividad==5119
replace d_comerciomayor=1 if ramadeactividad==5121
replace d_comerciomayor=1 if ramadeactividad==5122
replace d_comerciomayor=1 if ramadeactividad==5123
replace d_comerciomayor=1 if ramadeactividad==5124
replace d_comerciomayor=1 if ramadeactividad==5125
replace d_comerciomayor=1 if ramadeactividad==5127
replace d_comerciomayor=1 if ramadeactividad==5131
replace d_comerciomayor=1 if ramadeactividad==5132
replace d_comerciomayor=1 if ramadeactividad==5133
replace d_comerciomayor=1 if ramadeactividad==5134
replace d_comerciomayor=1 if ramadeactividad==5135
replace d_comerciomayor=1 if ramadeactividad==5136
replace d_comerciomayor=1 if ramadeactividad==5137
replace d_comerciomayor=1 if ramadeactividad==5139
replace d_comerciomayor=1 if ramadeactividad==5141
replace d_comerciomayor=1 if ramadeactividad==5142
replace d_comerciomayor=1 if ramadeactividad==5151
replace d_comerciomayor=1 if ramadeactividad==5152
replace d_comerciomayor=1 if ramadeactividad==5153
replace d_comerciomayor=1 if ramadeactividad==5154
replace d_comerciomayor=1 if ramadeactividad==5155
replace d_comerciomayor=1 if ramadeactividad==5159
replace d_comerciomayor=1 if ramadeactividad==5161
replace d_comerciomayor=1 if ramadeactividad==5163
replace d_comerciomayor=1 if ramadeactividad==5169
replace d_comerciomayor=1 if ramadeactividad==5170
replace d_comerciomayor=1 if ramadeactividad==5190
g d_comerciomenor=0
replace d_comerciomenor=1 if ramadeactividad==5211
replace d_comerciomenor=1 if ramadeactividad==5219
replace d_comerciomenor=1 if ramadeactividad==5221
replace d_comerciomenor=1 if ramadeactividad==5222
replace d_comerciomenor=1 if ramadeactividad==5223
replace d_comerciomenor=1 if ramadeactividad==5224
replace d_comerciomenor=1 if ramadeactividad==5225
replace d_comerciomenor=1 if ramadeactividad==5229
replace d_comerciomenor=1 if ramadeactividad==5231
replace d_comerciomenor=1 if ramadeactividad==5232
replace d_comerciomenor=1 if ramadeactividad==5233
replace d_comerciomenor=1 if ramadeactividad==5234
replace d_comerciomenor=1 if ramadeactividad==5235
replace d_comerciomenor=1 if ramadeactividad==5236
replace d_comerciomenor=1 if ramadeactividad==5237
replace d_comerciomenor=1 if ramadeactividad==5239
replace d_comerciomenor=1 if ramadeactividad==5241
replace d_comerciomenor=1 if ramadeactividad==5242
replace d_comerciomenor=1 if ramadeactividad==5243
replace d_comerciomenor=1 if ramadeactividad==5244
replace d_comerciomenor=1 if ramadeactividad==5245
replace d_comerciomenor=1 if ramadeactividad==5246
replace d_comerciomenor=1 if ramadeactividad==5249
replace d_comerciomenor=1 if ramadeactividad==5251
replace d_comerciomenor=1 if ramadeactividad==5252
replace d_comerciomenor=1 if ramadeactividad==5261
replace d_comerciomenor=1 if ramadeactividad==5262
replace d_comerciomenor=1 if ramadeactividad==5269
replace d_comerciomenor=1 if ramadeactividad==5271
replace d_comerciomenor=1 if ramadeactividad==5272
g d_hotelrestaurantebar=0
replace d_hotelrestaurantebar=1 if ramadeactividad==5511
replace d_hotelrestaurantebar=1 if ramadeactividad==5512
replace d_hotelrestaurantebar=1 if ramadeactividad==5519
replace d_hotelrestaurantebar=1 if ramadeactividad==5521
replace d_hotelrestaurantebar=1 if ramadeactividad==5522
replace d_hotelrestaurantebar=1 if ramadeactividad==5523
replace d_hotelrestaurantebar=1 if ramadeactividad==5524
replace d_hotelrestaurantebar=1 if ramadeactividad==5529
replace d_hotelrestaurantebar=1 if ramadeactividad==5530
g d_transterrestre=0
replace d_transterrestre=1 if ramadeactividad==6010
replace d_transterrestre=1 if ramadeactividad==6021
replace d_transterrestre=1 if ramadeactividad==6022
replace d_transterrestre=1 if ramadeactividad==6023
replace d_transterrestre=1 if ramadeactividad==6031
replace d_transterrestre=1 if ramadeactividad==6032
replace d_transterrestre=1 if ramadeactividad==6039
replace d_transterrestre=1 if ramadeactividad==6041
replace d_transterrestre=1 if ramadeactividad==6042
replace d_transterrestre=1 if ramadeactividad==6043
replace d_transterrestre=1 if ramadeactividad==6044
g d_transacuatico=0
replace d_transacuatico=1 if ramadeactividad==6111
replace d_transacuatico=1 if ramadeactividad==6112
replace d_transacuatico=1 if ramadeactividad==6120
g d_transaereo=0
replace d_transaereo=1 if ramadeactividad==6211
replace d_transaereo=1 if ramadeactividad==6212
replace d_transaereo=1 if ramadeactividad==6213
replace d_transaereo=1 if ramadeactividad==6214
g d_actcomplementarias=0
replace d_actcomplementarias=1 if ramadeactividad==6310
replace d_actcomplementarias=1 if ramadeactividad==6320
replace d_actcomplementarias=1 if ramadeactividad==6331
replace d_actcomplementarias=1 if ramadeactividad==6332
replace d_actcomplementarias=1 if ramadeactividad==6333
replace d_actcomplementarias=1 if ramadeactividad==6339
replace d_actcomplementarias=1 if ramadeactividad==6340
replace d_actcomplementarias=1 if ramadeactividad==6390
g d_correo=0
replace d_correo=1 if ramadeactividad==6411
replace d_correo=1 if ramadeactividad==6412
replace d_correo=1 if ramadeactividad==6421
replace d_correo=1 if ramadeactividad==6422
replace d_correo=1 if ramadeactividad==6423
replace d_correo=1 if ramadeactividad==6424
replace d_correo=1 if ramadeactividad==6425
replace d_correo=1 if ramadeactividad==6426
g d_intermediacionfin=0
replace d_intermediacionfin=1 if ramadeactividad==6511
replace d_intermediacionfin=1 if ramadeactividad==6512
replace d_intermediacionfin=1 if ramadeactividad==6514
replace d_intermediacionfin=1 if ramadeactividad==6515
replace d_intermediacionfin=1 if ramadeactividad==6516
replace d_intermediacionfin=1 if ramadeactividad==6519
replace d_intermediacionfin=1 if ramadeactividad==6591
replace d_intermediacionfin=1 if ramadeactividad==6592
replace d_intermediacionfin=1 if ramadeactividad==6593
replace d_intermediacionfin=1 if ramadeactividad==6595
replace d_intermediacionfin=1 if ramadeactividad==6596
replace d_intermediacionfin=1 if ramadeactividad==6599
g d_seguros=0
replace d_seguros=1 if ramadeactividad==6601
replace d_seguros=1 if ramadeactividad==6602
replace d_seguros=1 if ramadeactividad==6604
g d_servaux=0
replace d_servaux=1 if ramadeactividad==6712
replace d_servaux=1 if ramadeactividad==6713
replace d_servaux=1 if ramadeactividad==6714
replace d_servaux=1 if ramadeactividad==6715
replace d_servaux=1 if ramadeactividad==6719
g d_inmobiliaria=0
replace d_inmobiliaria=1 if ramadeactividad==7010
replace d_inmobiliaria=1 if ramadeactividad==7020
g d_alquilermaq=0
replace d_alquilermaq=1 if ramadeactividad==7111
replace d_alquilermaq=1 if ramadeactividad==7113
replace d_alquilermaq=1 if ramadeactividad==7121
replace d_alquilermaq=1 if ramadeactividad==7122
replace d_alquilermaq=1 if ramadeactividad==7123
replace d_alquilermaq=1 if ramadeactividad==7129
replace d_alquilermaq=1 if ramadeactividad==7130
g d_informatica=0
replace d_informatica=1 if ramadeactividad==7220
replace d_informatica=1 if ramadeactividad==7230
replace d_informatica=1 if ramadeactividad==7240
replace d_informatica=1 if ramadeactividad==7250
replace d_informatica=1 if ramadeactividad==7290
g d_investigacion=0
replace d_investigacion=1 if ramadeactividad==7310
replace d_investigacion=1 if ramadeactividad==7320
g d_otrasactiv=0
replace d_otrasactiv=1 if ramadeactividad==7411
replace d_otrasactiv=1 if ramadeactividad==7412
replace d_otrasactiv=1 if ramadeactividad==7413
replace d_otrasactiv=1 if ramadeactividad==7414
replace d_otrasactiv=1 if ramadeactividad==7421
replace d_otrasactiv=1 if ramadeactividad==7422
replace d_otrasactiv=1 if ramadeactividad==7430
replace d_otrasactiv=1 if ramadeactividad==7491
replace d_otrasactiv=1 if ramadeactividad==7492
replace d_otrasactiv=1 if ramadeactividad==7493
replace d_otrasactiv=1 if ramadeactividad==7494
replace d_otrasactiv=1 if ramadeactividad==7495
replace d_otrasactiv=1 if ramadeactividad==7499
g d_admonpub=0
replace d_admonpub=1 if ramadeactividad==7511
replace d_admonpub=1 if ramadeactividad==7512
replace d_admonpub=1 if ramadeactividad==7513
replace d_admonpub=1 if ramadeactividad==7514
replace d_admonpub=1 if ramadeactividad==7515
replace d_admonpub=1 if ramadeactividad==7521
replace d_admonpub=1 if ramadeactividad==7522
replace d_admonpub=1 if ramadeactividad==7523
replace d_admonpub=1 if ramadeactividad==7524
replace d_admonpub=1 if ramadeactividad==7530
g d_educacion=0
replace d_educacion=1 if ramadeactividad==8011
replace d_educacion=1 if ramadeactividad==8012
replace d_educacion=1 if ramadeactividad==8021
replace d_educacion=1 if ramadeactividad==8022
replace d_educacion=1 if ramadeactividad==8030
replace d_educacion=1 if ramadeactividad==8041
replace d_educacion=1 if ramadeactividad==8042
replace d_educacion=1 if ramadeactividad==8043
replace d_educacion=1 if ramadeactividad==8044
replace d_educacion=1 if ramadeactividad==8045
replace d_educacion=1 if ramadeactividad==8046
replace d_educacion=1 if ramadeactividad==8050
replace d_educacion=1 if ramadeactividad==8060
g d_servsociales=0
replace d_servsociales=1 if ramadeactividad==8511
replace d_servsociales=1 if ramadeactividad==8512
replace d_servsociales=1 if ramadeactividad==8513
replace d_servsociales=1 if ramadeactividad==8514
replace d_servsociales=1 if ramadeactividad==8515
replace d_servsociales=1 if ramadeactividad==8519
replace d_servsociales=1 if ramadeactividad==8520
replace d_servsociales=1 if ramadeactividad==8531
replace d_servsociales=1 if ramadeactividad==8532
g d_desperdicios=0
replace d_desperdicios=1 if ramadeactividad==9000
g d_asociaciones=0
replace d_asociaciones=1 if ramadeactividad==9111
replace d_asociaciones=1 if ramadeactividad==9112
replace d_asociaciones=1 if ramadeactividad==9120
replace d_asociaciones=1 if ramadeactividad==9191
replace d_asociaciones=1 if ramadeactividad==9192
replace d_asociaciones=1 if ramadeactividad==9199
g d_esparcimiento=0
replace d_esparcimiento=1 if ramadeactividad==9211
replace d_esparcimiento=1 if ramadeactividad==9212
replace d_esparcimiento=1 if ramadeactividad==9213
replace d_esparcimiento=1 if ramadeactividad==9214
replace d_esparcimiento=1 if ramadeactividad==9219
replace d_esparcimiento=1 if ramadeactividad==9220
replace d_esparcimiento=1 if ramadeactividad==9231
replace d_esparcimiento=1 if ramadeactividad==9232
replace d_esparcimiento=1 if ramadeactividad==9233
replace d_esparcimiento=1 if ramadeactividad==9241
replace d_esparcimiento=1 if ramadeactividad==9242
replace d_esparcimiento=1 if ramadeactividad==9249
g d_otrasact=0
replace d_otrasact=1 if ramadeactividad==9301
replace d_otrasact=1 if ramadeactividad==9302
replace d_otrasact=1 if ramadeactividad==9303
replace d_otrasact=1 if ramadeactividad==9309
g d_acthogpriv=0
replace d_acthogpriv=1 if ramadeactividad==9500
g d_extraterritoriales=0
replace d_extraterritoriales=1 if ramadeactividad==9900


gen agrgansil=0
replace agrgansil=1 if d_agricultura==1
replace agrgansil=1 if d_silvicultura==1

gen pesca=0
replace pesca=1 if d_pesca==1

gen explminas=0
replace explminas=1 if d_carbon==1
replace explminas=1 if d_petroleo==1
replace explminas=1 if d_minmetaliferos==1
replace explminas=1 if d_minnometalicos==1

gen indmanufactura=0
replace indmanufactura=1 if d_prodalimenticios==1
replace indmanufactura=1 if d_prodtabaco==1
replace indmanufactura=1 if d_prodtextiles==1
replace indmanufactura=1 if d_confeccionprendas==1
replace indmanufactura=1 if d_cueros==1
replace indmanufactura=1 if d_madera==1
replace indmanufactura=1 if d_papel==1
replace indmanufactura=1 if d_actedicion==1
replace indmanufactura=1 if d_coquizacion==1
replace indmanufactura=1 if d_quimicos==1
replace indmanufactura=1 if d_cauchoplastico==1
replace indmanufactura=1 if d_prodminnometalicos==1
replace indmanufactura=1 if d_prodmetalurgicos==1
replace indmanufactura=1 if d_prodmetal==1
replace indmanufactura=1 if d_maqyequi==1
replace indmanufactura=1 if d_maqoficina==1
replace indmanufactura=1 if d_maqelectr==1
replace indmanufactura=1 if d_equiporadio==1
replace indmanufactura=1 if d_instrmedicos==1
replace indmanufactura=1 if d_vehiculos==1
replace indmanufactura=1 if d_otroeqtransporte==1
replace indmanufactura=1 if d_muebles==1
replace indmanufactura=1 if d_reciclaje==1

gen suminelecgasagua=0
replace suminelecgasagua=1 if d_suminelectricidad==1
replace suminelecgasagua=1 if d_agua==1

gen construccion=0
replace construccion=1 if d_construccion==1

gen comercio=0
replace comercio=1 if d_comercio==1
replace comercio=1 if d_comerciomayor==1
replace comercio=1 if d_comerciomenor==1

gen hoteles=0
replace hoteles=1 if d_hotelrestaurantebar==1

gen transporte=0
replace transporte=1 if d_transterrestre==1
replace transporte=1 if d_transacuatico==1
replace transporte=1 if d_transaereo==1
replace transporte=1 if d_actcomplementarias==1
replace transporte=1 if d_correo==1

gen interfinan=0
replace interfinan=1 if d_intermediacionfin==1
replace interfinan=1 if d_seguros==1
replace interfinan=1 if d_servaux==1

gen actinmob=0
replace actinmob=1 if d_inmobiliaria==1
replace actinmob=1 if d_alquilermaq==1
replace actinmob=1 if d_informatica==1
replace actinmob=1 if d_investigacion==1
replace actinmob=1 if d_otrasactiv==1

gen admonpub=0
replace admonpub=1 if d_admonpub==1

gen educacion=0
replace educacion=1 if d_educacion==1

gen sssocial=0
replace sssocial=1 if d_servsociales==1

gen otrasact=0
replace otrasact=1 if d_desperdicios==1
replace otrasact=1 if d_asociaciones==1
replace otrasact=1 if d_esparcimiento==1
replace otrasact=1 if d_otrasact==1

gen acthog=0
replace acthog=1 if d_acthogpriv==1

gen extraterritoriales=0
replace extraterritoriales=1 if d_extraterritoriales==1

gen RAMAS=0
replace RAMAS=1 if agrgansil==1
replace RAMAS=2 if pesca==1
replace RAMAS=3 if explminas==1
replace RAMAS=4 if indmanufactura==1
replace RAMAS=5 if suminelecgasagua==1
replace RAMAS=6 if construccion==1
replace RAMAS=7 if comercio==1
replace RAMAS=8 if hoteles==1
replace RAMAS=9 if transporte==1
replace RAMAS=10 if interfinan==1
replace RAMAS=11 if actinmob==1
replace RAMAS=12 if admonpub==1
replace RAMAS=13 if educacion==1
replace RAMAS=14 if sssocial==1
replace RAMAS=15 if otrasact==1
replace RAMAS=16 if acthog==1
replace RAMAS=17 if extraterritoriales==1


gen rama_est1=0
replace rama_est1=1 if RAMAS==1
replace rama_est1=1 if RAMAS==2
replace rama_est1=2 if RAMAS==3
replace rama_est1=2 if RAMAS==4
replace rama_est1=2 if RAMAS==5
replace rama_est1=2 if RAMAS==6
replace rama_est1=3 if RAMAS==7
replace rama_est1=3 if RAMAS==8
replace rama_est1=3 if RAMAS==9
replace rama_est1=3 if RAMAS==10
replace rama_est1=3 if RAMAS==11
replace rama_est1=3 if RAMAS==12
replace rama_est1=3 if RAMAS==13
replace rama_est1=3 if RAMAS==14
replace rama_est1=3 if RAMAS==15
replace rama_est1=3 if RAMAS==16
replace rama_est1=3 if RAMAS==17


*Satisfacción del trabajo
label variable p6422	"Conforme con el tipo de contrato que tiene?"
label variable p7130	"Cambiar el trabajo que tiene actualmente?"
label variable p7140 "Desea cambiar de trabajo o empleo"
label variable p7140s1 "Para mejorar la utilización de sus capacidades o formación?"
label variable p7140s6 "No le gusta su trabajo actual?"
label variable p7140s5 "Problemas en el trabajo?"
label variable p7150 "¿... Hizo diligencias para cambiar de trabajo?"
label variable p7170s1 "¿Está .....satisfecho con su trabajo actual?"
label variable p7170s5 "¿Está ..... satisfecho con los beneficios y prestaciones que recibe?"
label variable p7170s6 "¿Está ..... satisfecho con su jornada laboral actual?"

label variable p7160 "Si le resultara un nuevo trabajo o empleo a ... ¿podría empezar a desempeñarlo antes de un mes?"

*Equidad de género
	*** Tipo de contrato H y M
	*** Posición laboral H y M
	*** Salario H y M
	*** RAMA H y M

*Salud y seguridad en el trabajo
label variable p7140s7 "Su trabajo actual exige mucho esfuerzo físico o mental?"
label variable p7140s8 "Problemas ambientales (aire, olores, frío, ruidos, temperatura, etc.)"
label variable p9450	"afiliado a una caja de compensación familiar?"
label variable p6990	"está afiliado por una empresa o individualmente a una aseguradora de riesgos profesionales (arp) (por accidentes de trabajo, enfermedad profesional etc)?"
label variable p6920	"Cotizando actualmente a un fondo de pensiones?"
label variable p6960	"¿cuántos años lleva afiliado al fondo de pensiones?"
label variable p6915	"enfermedad como cubriría los costos médicos y los medicamentos?"

label variable p6940	"quién paga mensualmente por la afiliación al fondo de pensiones de ..."

*Inclusión y acceso al mercado de trabajo
label variable oci	"Población ocupada"
label variable p7020	"¿... Tuvo otro trabajo?"
label variable p760		"¿cuántos meses estuvo sin empleo o trabajo ... Entre el trabajo actual y el anterior?"
label variable p7026	"¿cuánto tiempo duró en su empleo anterior?"
label variable p6790	"¿cuántos meses trabajó en los últimos 12 meses?"
label variable p7090	"Quiere trabajar más horas?"
label variable RAMA		"Rama de actividad económica"

label variable p7250	"¿durante cuántas semanas ha estado o estuvo ... Buscando trabajo?"
label variable dscy		"Desempleo coyuntural"

*Diálogo Social
label variable p7180	 "¿está afiliado o hace parte de una asociación gremial o sindical?"
label variable p6400	"La empresa o persona que contrato a ..., ¿es la misma empresa donde trabaja o presta sus servicios?"

*Estabilidad Laboral
label variable p514 "¿Considera que su empleo o trabajo actual es estable?"
label variable p6780	"Este trabajo es: ocasional temporal"
label variable p6460	"¿el contrato de trabajo de ... Es a término indefinido o a término fijo?"
label variable p6426	"tiempo lleva ... Trabajando en esta empresa, continuamente"
label variable p6430	"Posición que ocupa"
label variable p6450 	"¿el contrato es verbal o escrito? "

label variable p6440	"¿para realizar este trabajo, tiene usted algún tipo de contrato?"

* Organización de la Jornada Laboral y la vida personal - *Flexibilidad
label variable p515 "¿Su horario de trabajo y sus responsabilidades familiares son compatibles?"
label variable p7140s3 "Desea trabajar menos horas?"
label variable p6800	"¿cuántas horas a la semana trabaja normalmente ... En ese trabajo?"
label variable p7040	"Tenía la semana pasada otro trabajo o negocio?"

label variable p7045	"horas trabajó ... La semana pasada en ese segundo trabajo?"
label variable p6810	"¿cuál es la razón por la que trabaja normalmente menos de 40 horas a la semana?"
label variable p6640s1	"¿cuántas horas extra trabajó la semana pasada?"

*Ingresos 
label variable ingreso_real "Ingresos Laborales"
label variable p7070	"¿cuánto recibio o ganó ... El mes pasado en ese segundo trabajo?"
label variable p6545	"Primas(técnica, de antigüedad, clima, orden público, otras , etc)"
label variable p6424s3	"Derecho de cesantia?"
label variable p6424s1	"Vacaciones con sueldo?"
label variable p6510	"El mes pasado recibió ingresos por concepto de horas extras?"

label variable p7140s2 "Desea mejorar sus ingresos?"
label variable p6424s2	"Prima de navidad?"



*Generando variables binarias de las dimensiones

*Satisfacción = satis_#
gen satis_01=0
label variable satis_01 "Satisfecho con su trabajo"
replace satis_01=1 if p7170s1==1
replace satis_01=. if oci==.

gen satis_02=0
label variable satis_02 "No desea cambiar el trabajo"
replace satis_02=1 if p7130==2
replace satis_02=. if oci==.

gen satis_03=0
label variable satis_03 "Conforme con el contrato"
replace satis_03=1 if p6422==1
replace satis_03=. if oci==.

gen satis_04=0
label variable satis_04 "Satisfecho con beneficios recibe"
replace satis_04=1 if p7170s5==1
replace satis_04=. if oci==.

gen satis_05=0
label variable satis_05 "Satisfecho con la jornada laboral"
replace satis_05=1 if p7170s6==1
replace satis_05=. if oci==.


	*gen satis_06=0
	*label variable satis_06 "Insatisfecho aplicando capacidades"
	*replace satis_06=-1 if p7140s1==1

	*gen satis_07=0
	*label variable satis_07 "no le gusta su trabajo actual"
	*replace satis_07=-1 if p7140s1==1

	*gen satis_08=0
	*label variable satis_08 "problemas en el trabajo"
	*replace satis_08=-1 if p7140s5==1
	
	*gen satis_09=0
	*label variable satis_01 "Diligencias cambiar de trabajo"
	*replace satis_09=-1 if p7150==1

* Equidad de género= genero_#
gen genero_01=0
label variable genero_01 "Contrato Escrito Mujer"
replace genero_01=1 if p6450==2 & d_mujer==1
replace genero_01=. if oci==.
replace genero_01=. if d_mujer==0
*replace genero_01=. if p6450!=2

gen genero_02=0
label variable genero_02 "Contrato Escrito Hombre"
replace genero_02=1 if p6450==2 & d_mujer==0
replace genero_02=. if oci==.
replace genero_02=. if d_mujer==1

gen genero_03=ingreso_real
label variable genero_03 "Salario hombre"
replace genero_03=. if d_mujer==1
replace genero_03=. if oci==.

gen genero_04=ingreso_real
label variable genero_04 "Salario mujer"
replace genero_04=. if d_mujer==0
replace genero_04=. if oci==.

gen genero_05=0
label variable genero_05 "Mujer Sector Primario"
replace genero_05=1 if rama_est1==1 & d_mujer==1
replace genero_05=. if rama_est1!=1
replace genero_05=. if oci==.

gen genero_06=0
label variable genero_06 "Mujer Sector Industrial"
replace genero_06=1 if rama_est1==2 & d_mujer==1
replace genero_06=. if rama_est1!=2
replace genero_06=. if oci==.

gen genero_07=0
label variable genero_07 "Mujer Sector Servicios"
replace genero_07=1 if rama_est1==3 & d_mujer==1
replace genero_07=. if rama_est1!=3
replace genero_07=. if oci==.

gen genero_08=0
label variable genero_08 "Proporción de mujeres ocupadas"
replace genero_08=1 if oci==1 & d_mujer==1 
replace genero_08=. if d_mujer==0

gen genero_09=0
label variable genero_09 "Proporción de hombres ocupados"
replace genero_09=1 if oci==1 & d_mujer==0
replace genero_09=. if d_mujer==1


*gen genero_02=0
*label variable genero_02 "Posición patrón o empleador mujer"
*replace genero_02=0 if p6430==5 & d_mujer==1
*replace genero_02=. if oci==.
*replace genero_02=. if p6430!=5 


*Salud y Seguridad en el trabajo = sayse_#
gen sayse_01=0
label variable sayse_01 "Exige mucho esfuerzo físico y mental"
replace sayse_01=-1 if p7140s7==1
replace sayse_01=. if oci==.

gen sayse_02=0
label variable sayse_02 "Problemas ambientales"
replace sayse_02=-1 if p7140s8==1
replace sayse_02=. if oci==.

gen sayse_03=0
label variable sayse_03 "Caja de compensación familiar"
replace sayse_03=1 if p9450==1
replace sayse_03=. if oci==.

gen sayse_04=0
label variable sayse_04 "Asegurado ARL"
replace sayse_04=1 if p6990==1
replace sayse_04=. if oci==.

gen sayse_05=0
label variable sayse_05 "Cotizando pensiones"
replace sayse_05=1 if p6920==1
replace sayse_05=. if oci==.

gen sayse_06=p6960
label variable sayse_06 "Años cotizando pensiones"
replace sayse_06=0 if sayse_06==.

gen sayse_07=0
label variable sayse_07 "Afiliado EPS"
replace sayse_07=1 if p6915==1
replace sayse_07=. if oci==.

	*gen sayse_08=0
	*label variable sayse_08 "Régimen Subsidiado de Salud"
	*replace sayse_08=1 if p6915==2
	*replace sayse_08=. if oci==.

*Inclusión y acceso al mercado de trabajo= inclu_#
gen inclu_01=0
label variable inclu_01 "Ocupados"
replace inclu_01=1 if oci==1

gen inclu_02=0
label variable inclu_02 "Antes tuvo otro trabajo"
replace inclu_02=1 if p7020==1
replace inclu_02=. if oci==.

gen inclu_03=0
label variable inclu_03 "Años desempleado antes del actual"
replace inclu_03=-p760/12

gen inclu_04=0
label variable inclu_04 "Años empleo anterior"
replace inclu_04=p7026/12

gen inclu_05=0
label variable inclu_05 "Meses que trabajó en el año"
replace inclu_05=p6790

gen inclu_06=0
label variable inclu_06 "Quiere trabajar más horas"
replace inclu_06=-1 if p6915==p7090
replace inclu_06=. if oci==.

gen inclu_07=0
label variable inclu_07 "Sector Industrial"
replace inclu_07=1 if rama_est1==2
replace inclu_07=. if oci==.

gen inclu_08=0
label variable inclu_08 "Sector Servicios"
replace inclu_08=1 if rama_est1==3
replace inclu_08=. if oci==.

gen inclu_09=0
label variable inclu_09 "Sector Primario"
replace inclu_09=1 if rama_est1==1
replace inclu_09=. if oci==.


*Diálogo Social= dialog_#

gen dialog_01=0
label variable dialog_01 "Sindicato"
replace dialog_01=1 if p7180==1
replace dialog_01=. if oci==.
	*replace dialog_01=1 if oci==1

gen dialog_02=0
label variable dialog_02 "Empresa contrata y trabaja ahí"
replace dialog_02=1 if p6400==1
replace dialog_02=. if oci==.

*Estabilidad Laboral= establ_#
gen establ_01=0
label variable establ_01 "Considera trabajo estable"
replace establ_01=1 if p514==1
replace establ_01=. if oci==.

gen establ_02=0
label variable establ_02 "Trabajo permanente"
replace establ_02=1 if p6780==3
replace establ_02=. if oci==.

gen establ_03=0
label variable establ_03 "Contrato indefinido"
replace establ_03=1 if p6460==1
replace establ_03=. if oci==.

gen establ_04=0
label variable establ_04 "Años trabajando"
replace establ_04=p6426/12
replace establ_04=. if oci==.

gen establ_05=0
label variable establ_05 "Contrato escrito"
replace establ_05=1 if p6450==2
replace establ_05=. if oci==.

gen establ_06=0
label variable establ_06 "Cuenta propia" 
replace establ_06=-1 if p6430==4
replace establ_06=. if oci==.

* Jornada Laboral y la vida personal = jorlab_#
gen jorlab_01=0
label variable jorlab_01 "Compatible jornada y vida"
replace jorlab_01=1 if p515==1
replace jorlab_01=. if oci==.

gen jorlab_02=0
label variable jorlab_02 "Desea trabajar menos horas"
replace jorlab_02=-1 if p7140s3==1
replace jorlab_02=. if oci==.

gen jorlab_03=0
label variable jorlab_03 "Segundo trabajo"
replace jorlab_03=1 if p7040==1
replace jorlab_03=. if oci==.

gen jorlab_04=0
label variable jorlab_04 "Trabaja entre 40 y 48 horas semanales"
replace jorlab_04=1 if p6800<=48 & p6800>=40
replace jorlab_03=. if oci==.

gen jorlab_05=0
label variable jorlab_05 "Trabaja menos 40 porque quiere"
replace jorlab_05=1 if p6810==2
replace jorlab_03=. if oci==.


	*gen jorlab_04=p6800
	*label variable jorlab_04 "Horas que trabaja normalmente"
	*Ojo dividir entre - 40-48 horas 
	
* Ingresos y ganancias = Ingreyga_#
gen ingreyga_01=ingreso_real
label variable ingreyga_01 "Ingreso Real"
replace ingreyga_01=0 if oci==.

gen ingreyga_02=p7070/ipc
label variable ingreyga_02 "Ingreso Real segundo trabajo"
replace ingreyga_02=0 if oci==.

gen ingreyga_03=0
label variable ingreyga_03 "Primas"
replace ingreyga_03=1 if p6545==1
replace ingreyga_03=. if oci==.

gen ingreyga_04=0
label variable ingreyga_04 "Cesantías"
replace ingreyga_04=1 if p6424s3==1
replace ingreyga_04=. if oci==.

gen ingreyga_05=0
label variable ingreyga_05 "Vacaciones con sueldo"
replace ingreyga_05=1 if p6424s1==1
replace ingreyga_05=. if oci==.

gen ingreyga_06=0
label variable ingreyga_06 "Horas extra"
replace ingreyga_06=1 if p6510==1
replace ingreyga_06=. if oci==.


**** PLS PM **** Quitando los puntos ****

replace satis_01=0 if satis_01==.
replace satis_02=0 if satis_02==.
replace satis_03=0 if satis_03==.
replace satis_04=0 if satis_04==.
replace satis_05=0 if satis_05==.

replace genero_01=0 if genero_01==.
replace genero_02=0 if genero_02==.
replace genero_03=0 if genero_03==.
replace genero_04=0 if genero_04==.
replace genero_05=0 if genero_05==.
replace genero_06=0 if genero_06==.
replace genero_07=0 if genero_07==.
replace genero_08=0 if genero_08==.
replace genero_09=0 if genero_09==.

replace sayse_01=0 if sayse_01==.
replace sayse_02=0 if sayse_02==.
replace sayse_03=0 if sayse_03==.
replace sayse_04=0 if sayse_04==.
replace sayse_05=0 if sayse_05==.
replace sayse_06=0 if sayse_06==.
replace sayse_07=0 if sayse_07==.

replace inclu_01=0 if inclu_01==.
replace inclu_02=0 if inclu_02==.
replace inclu_03=0 if inclu_03==.
replace inclu_04=0 if inclu_04==.
replace inclu_05=0 if inclu_05==.
replace inclu_06=0 if inclu_06==.
replace inclu_07=0 if inclu_07==.
replace inclu_08=0 if inclu_08==.
replace inclu_09=0 if inclu_09==.

replace dialog_01=0 if dialog_01==.
replace dialog_02=0 if dialog_02==.

replace establ_01=0 if establ_01==.
replace establ_02=0 if establ_02==.
replace establ_03=0 if establ_03==.
replace establ_04=0 if establ_04==.
replace establ_05=0 if establ_05==.
replace establ_06=0 if establ_06==.

replace jorlab_01=0 if jorlab_01==.
replace jorlab_02=0 if jorlab_02==.
replace jorlab_03=0 if jorlab_03==.
replace jorlab_04=0 if jorlab_04==.
replace jorlab_05=0 if jorlab_05==.

replace ingreyga_01=0 if ingreyga_01==.
replace ingreyga_02=0 if ingreyga_02==.
replace ingreyga_03=0 if ingreyga_03==.
replace ingreyga_04=0 if ingreyga_04==.
replace ingreyga_05=0 if ingreyga_05==.
replace ingreyga_06=0 if ingreyga_06==.



* Estadísticas descriptivas

* Summ al promedio nacional
summ  satis_01 satis_02 satis_03 satis_04 satis_05 genero_01 genero_02 genero_03 genero_04 genero_05 genero_06 genero_07 genero_08 genero_09 sayse_01 sayse_02 sayse_03 sayse_04 sayse_05 sayse_06 sayse_07 inclu_01 inclu_02 inclu_03 inclu_04 inclu_05 inclu_06 inclu_07 inclu_08 inclu_09 dialog_01 dialog_02 establ_01 establ_02 establ_03 establ_04 establ_05 establ_06 jorlab_01 jorlab_02 jorlab_03 jorlab_04 jorlab_05 ingreyga_01 ingreyga_02 ingreyga_03 ingreyga_04 ingreyga_05 ingreyga_06 [w= fex_dpto_c]

*Summ a los departamentos en la región urbana
by dpto, sort: summ  satis_01 satis_02 satis_03 satis_04 satis_05 genero_01 genero_02 genero_03 genero_04 genero_05 genero_06 genero_07 genero_08 genero_09 sayse_01 sayse_02 sayse_03 sayse_04 sayse_05 sayse_06 sayse_07 inclu_01 inclu_02 inclu_03 inclu_04 inclu_05 inclu_06 inclu_07 inclu_08 inclu_09 dialog_01 dialog_02 establ_01 establ_02 establ_03 establ_04 establ_05 establ_06 jorlab_01 jorlab_02 jorlab_03 jorlab_04 jorlab_05 ingreyga_01 ingreyga_02 ingreyga_03 ingreyga_04 ingreyga_05 ingreyga_06 [w= fex_dpto_c] if clase==1

*Summ a los departamentos en la región rural
by dpto, sort: summ  satis_01 satis_02 satis_03 satis_04 satis_05 genero_01 genero_02 genero_03 genero_04 genero_05 genero_06 genero_07 genero_08 genero_09 sayse_01 sayse_02 sayse_03 sayse_04 sayse_05 sayse_06 sayse_07 inclu_01 inclu_02 inclu_03 inclu_04 inclu_05 inclu_06 inclu_07 inclu_08 inclu_09 dialog_01 dialog_02 establ_01 establ_02 establ_03 establ_04 establ_05 establ_06 jorlab_01 jorlab_02 jorlab_03 jorlab_04 jorlab_05 ingreyga_01 ingreyga_02 ingreyga_03 ingreyga_04 ingreyga_05 ingreyga_06 [w= fex_dpto_c] if clase==2



* Imputando los valores del índice de CE
gen CE_satisfaccion=0
replace CE_satisfaccion=33.08 if p753s1==5 & p752==1
replace CE_satisfaccion=-1.71 if p753s1==8 & p752==1
replace CE_satisfaccion=-1.71 if p753s1==8 & p752==1
replace CE_satisfaccion=-1.71 if p753s1==8 & p752==1
replace CE_satisfaccion=-1.71 if p753s1==8 & p752==1
replace CE_satisfaccion=-1.71 if p753s1==8 & p752==1
replace CE_satisfaccion=-1.71 if p753s1==8 & p752==1
replace CE_satisfaccion=-1.71 if p753s1==8 & p752==1
replace CE_satisfaccion=-1.71 if p753s1==8 & p752==1
replace CE_satisfaccion=-1.71 if p753s1==8 & p752==1
replace CE_satisfaccion=-1.71 if p753s1==8 & p752==1
replace CE_satisfaccion=-1.71 if p753s1==8 & p752==1
replace CE_satisfaccion=-1.71 if p753s1==8 & p752==1
replace CE_satisfaccion=-1.71 if p753s1==8 & p752==1
replace CE_satisfaccion=-1.71 if p753s1==8 & p752==1
replace CE_satisfaccion=-1.71 if p753s1==8 & p752==1



