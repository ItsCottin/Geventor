-- Banco de dados gerenciador de eventos

-- host: 172.16.48.10
-- usuario: pluri
-- senha: t@11ta341

-- tabela Usuario
create database GEVENTOR
GO
USE GEVENTOR
GO
create table TBL_USUARIO(
ID_USUA bigint primary key identity,
LOGIN_USUA varchar(50) not null,
FUNCAO_USUA varchar(25),
AVALIACAO_USUA float not null default '0.0',
NOME_USUA varchar(100) not null,
CPF_CNPJ_USUA varchar(14),
EMAIL_USUA varchar(50) not null,
ENDERECO_USUA varchar(150),
SENHA_USUA varchar(800) not null,
TP_PESSOA_USUA varchar(8),
QR_CODE_USUA varchar(200),
TELEFONE_USUA varchar(15),
TP_COLAB_USUA varchar(25)
)

-- Tabela Evento
create table TBL_EVENTO(
ID_EVEN bigint primary key identity,
ID_USUA bigint foreign key references TBL_USUARIO(ID_USUA),
--ID_DEMAN bigint foreign key references TBL_DEMANDA(ID_DEMAN),
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
)

select * from TBL_EVENTO


-- tabela Atividade
create table TBL_ATIVIDADE(
ID_ATIVI bigint primary key identity,
ID_EVEN bigint foreign key references TBL_EVENTO(ID_EVEN),
NOME_ATIVI varchar(100) not null,
DATAINICIO_ATIVI DateTime not null,
DATAFIM_ATIVI DateTime not null,
DETALHES_ATIVI varchar(500) not null,
ORGANIZACAO_ATIVI varchar(100) null,
VAGAS_ATIVI int not null,
PRECO_ATIVI varchar(10) not null
)

CREATE TABLE TBL_USUARIO_ATIVIDADE (
ID_USUA_ATIV bigint(10) primary key auto_increment,
ID_USUA bigint(10) foreign key references TBL_USUARIO(ID_USUA),
ID_ATIVI bigint(10) foreign key references TBL_ATIVIDADE(ID_ATIVI),
STATUS VARCHAR(10) not null default 'PENDENTE'
);

-- Usuario
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
						'www.geventorqrcode.com\?key=hdffoaerfss',
						40028922,
						'REMUNERADO');
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
						'www.geventorqrcode.com\?key=hdffoaerfss',
						40028922,
						'REMUNERADO');

SELECT * FROM TBL_USUARIO


