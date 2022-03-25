crear registro de trabajadores LISTA.

select * from trab where sal between 1000 and 2000;

insert into trab(ID_TRAB,NOM,AP,AM,SUEL) values ("TR1","CARLOS","AVILA","CAMACHO", 1500);
insert into trab(ID_TRAB,NOM,AP,AM,SUEL) values ("TR2","OSVALDO","HERRERA","RAMIREZ", 2500);	
insert into trab(ID_TRAB,NOM,AP,AM,SUEL) values ("TR3","MARIO","HERRERA","PEREZ", 2500);
insert into trab(ID_TRAB,NOM,AP,AM,SUEL) values ("TR4","CRISTIAN","HERRERA","RAMIREZ", 2500);


crear registro de tipo LISTA.
insert into tipo(ID_TIPO,NOM) values (1,"CARRO");
insert into tipo(ID_TIPO,NOM) values (2,"PIC_KUP");
insert into tipo(ID_TIPO,NOM) values (3,"MINIVAN");

select modelo from veh where id_veh = 1;

crear registro de VEHICULO LISTA.
insert into veh(ID_VEH,MANT,MAR,MODELO,F_IN,F_ENT,DES,ID_TIPO) values (1,"SERVICIO DE AFINACION","VOLKSWAGEN","GOL G5","2020-01-05","2020-01-15","",1);
insert into veh(ID_VEH,MANT,MAR,MODELO,F_IN,F_ENT,DES,ID_TIPO) values (2,"BALATAS","VOLKSWAGEN","SAVEIRO ROBUST","2020-02-03","2020-02-10","INSTALACION DE BALATAS NUEVAS",2);
insert into veh(ID_VEH,MANT,MAR,MODELO,F_IN,F_ENT,DES,ID_TIPO) values (3,"CAMBIO DE ACEITE","DODGE","JOURNEY 2013","2019-09-15","2019-09-19","SE REVISO NIVELES DE ACEITE DEL MOTOR",3);
insert into veh(ID_VEH,MANT,MAR,MODELO,F_IN,F_ENT,DES,ID_TIPO) values (4,"CAMBIO DE FILTRO DE ACEITE","VOLKSWAGEN","JETTA TURBO 2009","2020-01-12","2020-01-18","SE REMPLAZO EL FILTRO DE ACEITE",1);


creacion de registro de direccion. LISTA. 
insert into dir(ID_DIR,CALLE,NUM,COL,CIUD) values (1,"MADERO","407","LAS ROSAS","GOMEZ PALACIO");
insert into dir(ID_DIR,CALLE,NUM,COL,CIUD) values (2,"MARGARITAS","27","SANTA SOFIA","GOMEZ PALACIO");
insert into dir(ID_DIR,CALLE,NUM,COL,CIUD) values (3,"INDEPENDENCIA","205","FILADELFIA","TORREON");
insert into dir(ID_DIR,CALLE,NUM,COL,CIUD) values (4,"DOLORES","506","MARGARITA","TORREON");


creacion de registro de cliente LISTA.  
insert into clien(ID_CLIEN,NOM,AM,AP,TEL,ID_DIR,ID_VEH) values ("CL1","MANUEL","RAMIREZ","GONZALEZ",8711459078,1,1);
insert into clien(ID_CLIEN,NOM,AM,AP,TEL,ID_DIR,ID_VEH) values ("CL2","RICARDO","SILVA","SANCHEZ",8713254595,2,3);
insert into clien(ID_CLIEN,NOM,AM,AP,TEL,ID_DIR,ID_VEH) values ("CL3","SAMANTHA","FERNANDEZ","TORRES",8715182868,3,2);
insert into clien(ID_CLIEN,NOM,AM,AP,TEL,ID_DIR,ID_VEH) values ("CL4","SOFIA","HERNANDEZ","LOPEZ",8714659803,4,4);


crear registro de factura LISTA
insert into fac(FOLIO,SUB_TOT,IMP,FE,DESCUENTO,IVA,TOT,ID_CLIEN) values ("ES-1",47.39,35,"2020-01-06",42.65,5.08,42.47,"CL2");
insert into fac(FOLIO,SUB_TOT,IMP,FE,DESCUENTO,IVA,TOT,ID_CLIEN) values ("ES-2",150,"","2020-02-04",105,"",105,"CL1");
insert into fac(FOLIO,SUB_TOT,IMP,FE,DESCUENTO,IVA,TOT,ID_CLIEN) values ("ES-3",165,"","2019-09-17","",34.65,199.65,"CL4");
insert into fac(FOLIO,SUB_TOT,IMP,FE,DESCUENTO,IVA,TOT,ID_CLIEN) values ("ES-4",100,"","2020-01-15","",21,121,"CL3");


crear registro de trab_veh FALTA.
insert into trab_veh(ID_TRAB,ID_VEH) values ("TR1",1);
insert into trab_veh(ID_TRAB,ID_VEH) values ("TR2",3);
insert into trab_veh(ID_TRAB,ID_VEH) values ("TR4",2);
insert into trab_veh(ID_TRAB,ID_VEH) values ("TR3",4);