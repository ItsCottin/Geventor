-- SQLINES DEMO *** renciador de eventos

-- host: 172.16.48.10
-- usuario: pluri
-- senha: t@11ta341

-- tabela Usuario
create database GEVENTOR
 
USE sql10607033;
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
create table TBL_USUARIO(
ID_USUA bigint(10) primary key auto_increment,
LOGIN_USUA varchar(50) not null,
FUNCAO_USUA varchar(25),
AVALIACAO_USUA float(5) not null default '0.0',
NOME_USUA varchar(100) not null,
CPF_CNPJ_USUA varchar(14),
EMAIL_USUA varchar(50) not null,
ENDERECO_USUA varchar(150),
SENHA_USUA varchar(800) not null,
TP_PESSOA_USUA varchar(8),
QR_CODE_USUA varchar(200),
TELEFONE_USUA varchar(15),
TP_COLAB_USUA varchar(25)
);

-- tabela Demanda
/* SQLINES DEMO *** EMANDA(
ID_DEMAN bigint(10) primary key identity,
CUSTO_PREVISTO_DEMAN float not null,
CUSTO_REALIZADO_DEMAN float default '0.00',
VALOR_INICIAL_DEMAN float default '0.00',
INICIO_DEMAN datetime not null,
FINAL_DEMAN datetime not null
)*/

-- Tabela Evento
-- SQLINES LICENSE FOR EVALUATION USE ONLY
create table TBL_EVENTO(
ID_EVEN bigint(10) primary key auto_increment,
ID_USUA bigint(10),
--  SQLINES DEMO *** reign key references TBL_DEMANDA(ID_DEMAN),
LOCAL_EVEN varchar(300) not null,
CIDADE_EVEN varchar(20) not null,
ESTADO_EVEN varchar(20) not null,
DATAINICIO_EVEN DateTime not null,
DATAFIM_EVEN DateTime not null,
TITULO_EVEN varchar(100) not null,
DESCRICAO_EVEN varchar(500) not null,
VAGAS int not null,
RESPONSAVEL_EVEN varchar(50) null,
TWITTER_EVEN varchar(200),
FACEBOOK_EVEN varchar(200),
SITE_EVEN varchar(50),
EMAIL_EVEN varchar(50) not null,
TELEFONE_EVEN varchar(15) not null,
PRECO_EVEN varchar(100) not null,
SITE_PROPRIO bool default true,
foreign key (ID_USUA) references TBL_USUARIO(ID_USUA)
);

-- SQLINES LICENSE FOR EVALUATION USE ONLY
select * from TBL_EVENTO;

-- SQLINES DEMO *** ão
create table TBL_NOTIFICACAO(
ID_NOTIF bigint(10) primary key auto_increment,
ID_EVEN bigint(10),
--  SQLINES DEMO *** reign key references TBL_DEMANDA(ID_DEMAN),
LINK_NOTIF varchar(1000),
TITULO_NOTIF varchar(50) not null,
DESCRICAO_NOTIF varchar(200) not null,
foreign key (ID_EVEN) references  TBL_EVENTO(ID_EVEN)
); 

-- SQLINES DEMO *** TIFICAÇÂO
-- SQLINES LICENSE FOR EVALUATION USE ONLY
create table TBL_USUARIO_NOTIFICACAO(
ID_USUA_NOTIF bigint(10) primary key auto_increment,
ID_USUA bigint(10),
ID_NOTIF bigint(10),
VISUALIZADO bit default 0,
foreign key (ID_USUA) references  TBL_USUARIO(ID_USUA),
foreign key (ID_NOTIF) references  TBL_NOTIFICACAO(ID_NOTIF)
);

-- Tabela Controle
/* SQLINES DEMO *** ONTROLE(
ID_CONTR bigint(10) primary key identity,
ID_EVEN bigint(10) foreign key references TBL_EVENTO(ID_EVEN),
CRACH_CONTR varchar(300),
CREDE_CONTR varchar(700)
)*/

-- Tabela Visitante
-- SQLINES LICENSE FOR EVALUATION USE ONLY
create table TBL_VISITANTE(
ID_VISIT bigint(10) primary key auto_increment,
NOME_VISIT varchar(100) not null,
EMAIL_VISIT varchar(100) not null,
TELEFONE_VISIT varchar(18),
ENDERECO_RESIDENT_VISIT varchar(500),
ENDERECO_COMERC_VISIT varchar(500),
CARGO_VISIT varchar(20),
EMPRESA_VISIT varchar(20),
DATANASCIMENTO_VISIT date,
CPF_VISIT varchar(20),
CNPJ_VISIT varchar(20)
);

-- SQLINES DEMO *** a EVENTO/VISITANTE
-- SQLINES LICENSE FOR EVALUATION USE ONLY
create table TBL_EVENTO_VISITANTE(
ID_EVEN_VISIT bigint(10) primary key auto_increment,
ID_VISIT bigint(10),
ID_EVEN bigint(10),
PRESENCA_COLAB varchar(10) default 'ACEITO',
foreign key (ID_VISIT) references  TBL_VISITANTE(ID_VISIT),
foreign key (ID_EVEN) references  TBL_EVENTO(ID_EVEN)
);

-- Tabela Medalha
/* SQLINES DEMO *** EDALHA(
ID_RECOM bigint(10) primary key identity,
ID_EVEN bigint(10) foreign key references TBL_EVENTO(ID_EVEN),
NOME_MEDAL varchar(30)
)*/

-- SQLINES DEMO *** a Colaborador e Medalha
/* SQLINES DEMO *** EDALHA_USUARIO(
ID_RECOM bigint(10) foreign key references TBL_MEDALHA(ID_RECOM),
ID_USUA bigint(10) foreign key references TBL_USUARIO(ID_USUA)
)*/

-- tabela Atividade
-- SQLINES LICENSE FOR EVALUATION USE ONLY
create table TBL_ATIVIDADE(
ID_ATIVI bigint(10) primary key auto_increment,
ID_EVEN bigint(10),
NOME_ATIVI varchar(100) not null,
DATAINICIO_ATIVI DateTime not null,
DATAFIM_ATIVI DateTime not null,
DETALHES_ATIVI varchar(500) not null,
ORGANIZACAO_ATIVI varchar(100) null,
VAGAS_ATIVI int not null,
PRECO_ATIVI varchar(10) not null,
foreign key (ID_EVEN) references  TBL_EVENTO(ID_EVEN)
);

-- SQLINES LICENSE FOR EVALUATION USE ONLY
create table TBL_PARTICIPANTE(
ID_PART bigint(10) primary key auto_increment,
TIPO_PART varchar(20) not null
);

-- SQLINES LICENSE FOR EVALUATION USE ONLY
create table TBL_PARTICIPANTE_USUARIO(
ID_USUA bigint(10),
ID_PART bigint(10),
foreign key (ID_USUA) references  TBL_USUARIO(ID_USUA),
foreign key (ID_PART) references  TBL_PARTICIPANTE(ID_PART)
);

-- Demanda
/* SQLINES DEMO *** MANDA(CUSTO_PREVISTO_DEMAN,CUSTO_REALIZADO_DEMAN,VALOR_INICIAL_DEMAN,INICIO_DEMAN,FINAL_DEMAN) VALUES (100.00,100,100,CONVERT(DATETIME,'10/10/2016',103),CONVERT(DATETIME,'09/11/2016',103));
INSERT INTO TBL_DEMANDA(CUSTO_PREVISTO_DEMAN,CUSTO_REALIZADO_DEMAN,VALOR_INICIAL_DEMAN,INICIO_DEMAN,FINAL_DEMAN) VALUES (200,300,100,CONVERT(DATETIME,'10/12/2016',103),CONVERT(DATETIME,'27/12/2016',103));
*/

-- Evento
--  SQLINES DEMO *** ENTO(RECURSOS_DEMAN,LOCAL_DEMAN,DATA_DEMAN,DURACAO_DEMAN,NOME_DEMAN,DESCRICAO_DEMAN,RECOMENSA_DEMAN) VALUES ('TESTE RECURSOS_DEMAN','TESTE LOCAL_DEMAN',CONVERT(DATETIME,'10/10/2016',103),'10','TESTE NOME_DEMAN','TESTE DESAC','RECOMENSA_DEMAN');

CREATE TABLE TBL_USUARIO_ATIVIDADE (
ID_USUA_ATIV bigint(10) primary key auto_increment,
ID_USUA bigint(10),
ID_ATIVI bigint(10),
foreign key (ID_USUA) references  TBL_USUARIO(ID_USUA),
foreign key (ID_ATIVI) references  TBL_ATIVIDADE(ID_ATIVI),
STATUS VARCHAR(10) not null default 'PENDENTE'
);

-- Usuario
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO TBL_USUARIO(LOGIN_USUA,
						FUNCAO_USUA,
						NOME_USUA,
						CPF_CNPJ_USUA,
						EMAIL_USUA,
						ENDERECO_USUA,
						SENHA_USUA,
						TP_PESSOA_USUA,
						QR_CODE_USUA,
						TELEFONE_USUA,
						TP_COLAB_USUA) 
				VALUES ('roger',
						'programador',
						'rodrigo',
						'430.345.122-56',
						'cottingfontes@hotmail.com',
						'pq arariba',
						'e10adc3949ba59abbe56e057f20f883e',
						'FISICA',
						'www.geventorqrcode.com?key=hdffoaerfss',
						40028922,
						'REMUNERADO');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO TBL_USUARIO(LOGIN_USUA,
						FUNCAO_USUA,
						NOME_USUA,
						CPF_CNPJ_USUA,
						EMAIL_USUA,
						ENDERECO_USUA,
						SENHA_USUA,
						TP_PESSOA_USUA,
						QR_CODE_USUA,
						TELEFONE_USUA,
						TP_COLAB_USUA) 
				VALUES ('rfontes',
						'programador',
						'Rodrigo Cotting',
						'430.345.122-56',
						'cottingfontes@hotmail.com',
						'pq vila maria',
						'',
						'FISICA',
						'www.geventorqrcode.com?key=hdffoaerfss',
						40028922,
						'REMUNERADO');

-- SQLINES LICENSE FOR EVALUATION USE ONLY
SELECT * FROM TBL_USUARIO


