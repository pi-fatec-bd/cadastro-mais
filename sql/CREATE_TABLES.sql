-- TABLE PESSOA FISICA
--DROP TABLE PESSOA_FISICA
CREATE TABLE PESSOA_FISICA 
(	
	PF_DOC_CLI VARCHAR2(11) PRIMARY KEY, 
	PF_IDC_SEXO VARCHAR2(1), 
	PF_ANO_DAT_NASCIMENTO NUMBER(4,0), 
	PF_NOM_CIDADE VARCHAR2(255), 
	PF_DES_ESTADO VARCHAR2(255)
);


-- TABLE USUARIO PESSOA FISICA
--DROP TABLE USUARIO_PESSOA_FISICA
CREATE TABLE USUARIO_PESSOA_FISICA
(
	UPF_DOC_CLI VARCHAR(11) PRIMARY KEY,
	UPF_IDC_SEXO VARCHAR(1),
	UPF_ANO_DAT_NASCIMENTO NUMBER(4),
	UPF_NOM_CIDADE VARCHAR(50),
	UPF_DES_ESTADO VARCHAR(20),
	UPF_PF_SENHA VARCHAR(32) NOT NULL
);


--TABLE USUARIO PESSOA JURIDICA
--DROP TABLE USUARIO_PESSOA_JURIDICA
CREATE TABLE USUARIO_PESSOA_JURIDICA
(
	UPJ_DOC_CLI VARCHAR (14) PRIMARY KEY,
    UPJ_EMAIL VARCHAR(255),
	UPJ_CELULAR VARCHAR(11),
	UPJ_NOM_CIDADE VARCHAR(50),
	UPJ_DES_ESTADO VARCHAR(20),
	UPJ_PJ_SENHA VARCHAR (32) NOT NULL
);


--TABLE FONTE
--DROP TABLE FONTE
CREATE TABLE FONTE 
(	
	FON_ID NUMBER(5,0) PRIMARY KEY, 
	FON_NOM_COMERCIAL VARCHAR2(255)
);

--TABLE MODALIDADE
--DROP TABLE MODALIDADE
CREATE TABLE MODALIDADE 
(	
	MOD_COD VARCHAR2(3) PRIMARY KEY, 
	MOD_DES_MODALIDADE VARCHAR2(255)
);


--TABLE OPERACOES
--DROP TABLE OPERACOES
CREATE TABLE OPERACOES 
(	
	OPE_ID NUMBER(4,0) PRIMARY KEY, 
	OPE_DOC_CLI VARCHAR2(11),
	OPE_NUM_UNC NUMBER(30,0), 
	OPE_ID_MDL NUMBER(2,0), 
	OPE_COD_MDL VARCHAR2(3), 
	OPE_QTD_PCL NUMBER(3,0), 
	OPE_DAT_CTRC DATE, 
	OPE_DAT_VCT_ULT_PCL DATE, 
	OPE_DAT_VCT DATE, 
	OPE_VLR_CTRD_FTA NUMBER(10,2), 
	OPE_VLR_CTRD NUMBER(10,2), 
	OPE_SDO_DDR_TFM NUMBER(10,2)
);


--TABLE MOVIMENTOS
--DROP TABLE MOVIMENTOS
CREATE TABLE MOVIMENTOS 
(	
	MOV_ID NUMBER(6,0) PRIMARY KEY, 
	MOV_DOC_CLI VARCHAR2(11),
	MOV_ID_FNT NUMBER(3,0), 
	MOV_NUM_UNC NUMBER(30,0), 
	MOV_DAT_VCT DATE, 
	MOV_QTD_PCL_VNC NUMBER(4,0), 
	MOV_QTD_PCL_PGR NUMBER(4,0), 
	MOV_VLR_TOT_FAT NUMBER(10,2), 
	MOV_VLR_MIN_FAT NUMBER(10,2), 
	MOV_VLR_PCL_TFM NUMBER(10,2), 
	MOV_TIP_MVT VARCHAR2(3), 
	MOV_PRD VARCHAR2(1)
);


--TABLE PAGAMENTOS
--DROP TABLE PAGAMENTOS
CREATE TABLE PAGAMENTOS 
(	
	PGT_ID NUMBER(6,0) PRIMARY KEY, 
	PGT_DOC_CLI VARCHAR2(11),
	PGT_ID_FNT NUMBER(3,0), 
	PGT_NUM_UNC NUMBER(32,0), 
	PGT_DAT_VCT DATE, 
	PGT_DAT_PGT DATE, 
	PGT_VLR_PGT NUMBER(20,2), 
	PGT_COD_MDL VARCHAR2(3)
);