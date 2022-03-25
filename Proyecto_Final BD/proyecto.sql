mysql -u root -p;

create database taller;

use taller;

crear tabla de trabajadores: lista. 
create table TRAB(
 ID_TRAB varchar(4) PRIMARY KEY UNIQUE NOT NULL,
 NOM varchar(10) NOT NULL,
 AP varchar(10) NOT NULL,
 AM varchar(10),
 SUEL int(4) NOT NULL 
);


crear tabla tipo: lista. 
create table TIPO(
 ID_TIPO int(2) PRIMARY KEY UNIQUE NOT NULL AUTO_INCREMENT,
 NOM varchar(10) NOT NULL
);


crear tabla vehiculos: LISTA.
create table VEH(
 ID_VEH int(10) PRIMARY KEY UNIQUE NOT NULL AUTO_INCREMENT,
 MANT varchar(50) NOT NULL,
 MAR varchar(30) NOT NULL,
 MODELO varchar(20) NOT NULL,
 F_IN date NOT NULL,
 F_ENT date NOT NULL,
 DES varchar(50), 
 ID_TIPO int(2) NOT NULL, FOREIGN KEY VEH(ID_TIPO) REFERENCES TIPO(ID_TIPO)
);


crear tabla trabajadores- vehiculos: LISTA. 
create table TRAB_VEH(
 ID_TRAB varchar(3) NOT NULL, FOREIGN KEY (ID_TRAB) REFERENCES TRAB(ID_TRAB),
 ID_VEH int(10) NOT NULL, FOREIGN KEY (ID_VEH) REFERENCES VEH(ID_VEH)
);


crear tabla direccion: LISTA. 
create table DIR(
 ID_DIR int(4) NOT NULL UNIQUE PRIMARY KEY AUTO_INCREMENT,
 CALLE varchar(10) NOT NULL, 
 NUM int(4) NOT NULL,
 COL varchar(30) NOT NULL,
 CIUD varchar(10) NOT NULL
);


crear tabla cliente: LISTA.  
create table CLIEN(
 ID_CLIEN varchar(4) NOT NULL UNIQUE PRIMARY KEY,
 NOM varchar(30) NOT NULL,
 AM varchar(30) NOT NULL,
 AP varchar(30),
 TEL bigint(20),
 ID_DIR int(4) NOT NULL, FOREIGN KEY (ID_DIR) REFERENCES DIR(ID_DIR),
 ID_VEH int(10) NOT NULL, FOREIGN KEY (ID_VEH) REFERENCES VEH(ID_VEH) 
);


crear tabla factura: FALTA. 
create table FAC(
 FOLIO varchar(7) NOT NULL UNIQUE PRIMARY KEY,
 SUB_TOT double(7,2) NOT NULL,
 IMP double(7,2),
 FE date NOT NULL,
 DESCUENTO double(7,2),
 IVA double(7,2),
 TOT double(7,2) NOT NULL,
 ID_CLIEN varchar(4) NOT NULL, FOREIGN KEY (ID_CLIEN) REFERENCES CLIEN(ID_CLIEN)
);



