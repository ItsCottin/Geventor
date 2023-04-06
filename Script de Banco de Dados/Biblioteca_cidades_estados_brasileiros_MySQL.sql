/* SET ANSI_NULLS ON */
 
/* SET QUOTED_IDENTIFIER ON */
 
/* SET ANSI_PADDING ON */
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY

use sql10607033;

CREATE TABLE `City`(
	`Id` bigint AUTO_INCREMENT NOT NULL,
	`Name` varchar(50) NOT NULL,
	`IdState` bigint NULL,
 CONSTRAINT `PK_City` PRIMARY KEY 
(
	`Id` ASC
) 
);

/* SET ANSI_PADDING OFF */
 
/* SQLINES DEMO *** le `Country`    Script Date: 22/05/2015 19:04:21 ******/
/* SET ANSI_NULLS ON */
 
/* SET QUOTED_IDENTIFIER ON */
 
/* SET ANSI_PADDING ON */
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE `Country`(
	`Id` bigint AUTO_INCREMENT NOT NULL,
	`Name` varchar(50) NULL,
 CONSTRAINT `PK_Country` PRIMARY KEY 
(
	`Id` ASC
) 
);

/* SET ANSI_PADDING OFF */
 
/* SQLINES DEMO *** le `State`    Script Date: 22/05/2015 19:04:21 ******/
/* SET ANSI_NULLS ON */
 
/* SET QUOTED_IDENTIFIER ON */
 
/* SET ANSI_PADDING ON */
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE `State`(
	`Id` bigint AUTO_INCREMENT NOT NULL,
	`IdCountry` bigint NULL,
	`Name` varchar(100) NULL,
	`Acronym` varchar(2) NOT NULL,
 CONSTRAINT `PK_State` PRIMARY KEY 
(
	`Id` ASC
) 
);

INSERT INTO `City` (Id,Name,IdState) VALUES (1100015, N'ALTA FLORESTA D OESTE', 11);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1100023, N'ARIQUEMES', 11);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1100031, N'CABIXI', 11);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1100049, N'CACOAL', 11);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1100056, N'CEREJEIRAS', 11);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1100064, N'COLORADO DO OESTE', 11);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1100072, N'CORUMBIARA', 11);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1100080, N'COSTA MARQUES', 11);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1100098, N'ESPIGÃO D OESTE', 11);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1100106, N'GUAJARÁ-MIRIM', 11);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1100114, N'JARU', 11);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1100122, N'JI-PARANÁ', 11);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1100130, N'MACHADINHO D OESTE', 11);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1100148, N'NOVA BRASILÂNDIA D OESTE', 11);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1100155, N'OURO PRETO DO OESTE', 11);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1100189, N'PIMENTA BUENO', 11);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1100205, N'PORTO VELHO', 11);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1100254, N'PRESIDENTE MÉDICI', 11);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1100262, N'RIO CRESPO', 11);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1100288, N'ROLIM DE MOURA', 11);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1100296, N'SANTA LUZIA D OESTE', 11);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1100304, N'VILHENA', 11);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1100320, N'SÃO MIGUEL DO GUAPORÉ', 11);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1100338, N'NOVA MAMORÉ', 11);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1100346, N'ALVORADA D OESTE', 11);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1100379, N'ALTO ALEGRE DOS PARECIS', 11);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1100403, N'ALTO PARAÍSO', 11);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1100452, N'BURITIS', 11);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1100502, N'NOVO HORIZONTE DO OESTE', 11);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1100601, N'CACAULÂNDIA', 11);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1100700, N'CAMPO NOVO DE RONDÔNIA', 11);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1100809, N'CANDEIAS DO JAMARI', 11);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1100908, N'CASTANHEIRAS', 11);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1100924, N'CHUPINGUAIA', 11);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1100940, N'CUJUBIM', 11);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1101005, N'VERNADOR JORGE TEIXEIRA', 11);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1101104, N'ITAPUÃ DO OESTE', 11);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1101203, N'MINISTRO ANDREAZZA', 11);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1101302, N'MIRANTE DA SERRA', 11);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1101401, N'MONTE NEGRO', 11);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1101435, N'NOVA UNIÃO', 11);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1101450, N'PARECIS', 11);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1101468, N'PIMENTEIRAS DO OESTE', 11);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1101476, N'PRIMAVERA DE RONDÔNIA', 11);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1101484, N'SÃO FELIPE D OESTE', 11);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1101492, N'SÃO FRANCISCO DO GUAPORÉ', 11);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1101500, N'SERINGUEIRAS', 11);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1101559, N'TEIXEIRÓPOLIS', 11);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1101609, N'THEOBROMA', 11);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1101708, N'URUPÁ', 11);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1101757, N'VALE DO ANARI', 11);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1101807, N'VALE DO PARAÍSO', 11);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1200013, N'ACRELÂNDIA', 12);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1200054, N'ASSIS BRASIL', 12);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1200104, N'BRASILÉIA', 12);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1200138, N'BUJARI', 12);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1200179, N'CAPIXABA', 12);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1200203, N'CRUZEIRO DO SUL', 12);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1200252, N'EPITACIOLÂNDIA', 12);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1200302, N'FEIJÓ', 12);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1200328, N'JORDÃO', 12);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1200336, N'MÂNCIO LIMA', 12);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1200344, N'MANOEL URBANO', 12);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1200351, N'MARECHAL THAUMATUR', 12);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1200385, N'PLÁCIDO DE CASTRO', 12);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1200393, N'PORTO WALTER', 12);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1200401, N'RIO BRANCO', 12);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1200427, N'RODRIGUES ALVES', 12);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1200435, N'SANTA ROSA DO PURUS', 12);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1200450, N'SENADOR GUIOMARD', 12);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1200500, N'SENA MADUREIRA', 12);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1200609, N'TARAUACÁ', 12);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1200708, N'XAPURI', 12);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1200807, N'PORTO ACRE', 12);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1300029, N'ALVARÃES', 13);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1300060, N'AMATURÁ', 13);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1300086, N'ANAMÃ', 13);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1300102, N'ANORI', 13);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1300144, N'APUÍ', 13);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1300201, N'ATALAIA DO NORTE', 13);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1300300, N'AUTAZES', 13);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1300409, N'BARCELOS', 13);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1300508, N'BARREIRINHA', 13);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1300607, N'BENJAMIN CONSTANT', 13);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1300631, N'BERURI', 13);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1300680, N'BOA VISTA DO RAMOS', 13);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1300706, N'BOCA DO ACRE', 13);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1300805, N'BORBA', 13);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1300839, N'CAAPIRANGA', 13);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1300904, N'CANUTAMA', 13);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1301001, N'CARAUARI', 13);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1301100, N'CAREIRO', 13);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1301159, N'CAREIRO DA VÁRZEA', 13);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1301209, N'COARI', 13);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1301308, N'CODAJÁS', 13);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1301407, N'EIRUNEPÉ', 13);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1301506, N'ENVIRA', 13);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1301605, N'FONTE BOA', 13);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1301654, N'GUAJARÁ', 13);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1301704, N'HUMAITÁ', 13);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1301803, N'IPIXUNA', 13);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1301852, N'IRANDUBA', 13);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1301902, N'ITACOATIARA', 13);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1301951, N'ITAMARATI', 13);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1302009, N'ITAPIRANGA', 13);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1302108, N'JAPURÁ', 13);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1302207, N'JURUÁ', 13);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1302306, N'JUTAÍ', 13);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1302405, N'LÁBREA', 13);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1302504, N'MANACAPURU', 13);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1302553, N'MANAQUIRI', 13);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1302603, N'MANAUS', 13);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1302702, N'MANICORÉ', 13);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1302801, N'MARAÃ', 13);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1302900, N'MAUÉS', 13);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1303007, N'NHAMUNDÁ', 13);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1303106, N'NOVA OLINDA DO NORTE', 13);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1303205, N'NOVO AIRÃO', 13);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1303304, N'NOVO ARIPUANÃ', 13);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1303403, N'PARINTINS', 13);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1303502, N'PAUINI', 13);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1303536, N'PRESIDENTE FIGUEIREDO', 13);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1303569, N'RIO PRETO DA EVA', 13);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1303601, N'SANTA ISABEL DO RIO NEGRO', 13);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1303700, N'SANTO ANTÔNIO DO IÇÁ', 13);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1303809, N'SÃO GABRIEL DA CACHOEIRA', 13);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1303908, N'SÃO PAULO DE OLIVENÇA', 13);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1303957, N'SÃO SEBASTIÃO DO UATUMÃ', 13);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1304005, N'SILVES', 13);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1304062, N'TABATINGA', 13);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1304104, N'TAPAUÁ', 13);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1304203, N'TEFÉ', 13);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1304237, N'TONANTINS', 13);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1304260, N'UARINI', 13);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1304302, N'URUCARÁ', 13);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1304401, N'URUCURITUBA', 13);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1400027, N'AMAJARI', 14);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1400050, N'ALTO ALEGRE', 14);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1400100, N'BOA VISTA', 14);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1400159, N'BONFIM', 14);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1400175, N'CANTÁ', 14);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1400209, N'CARACARAÍ', 14);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1400233, N'CAROEBE', 14);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1400282, N'IRACEMA', 14);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1400308, N'MUCAJAÍ', 14);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1400407, N'NORMANDIA', 14);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1400456, N'PACARAIMA', 14);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1400472, N'RORAINÓPOLIS', 14);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1400506, N'SÃO JOÃO DA BALIZA', 14);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1400605, N'SÃO LUIZ', 14);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1400704, N'UIRAMUTÃ', 14);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1500107, N'ABAETETUBA', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1500131, N'ABEL FIGUEIREDO', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1500206, N'ACARÁ', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1500305, N'AFUÁ', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1500347, N'ÁGUA AZUL DO NORTE', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1500404, N'ALENQUER', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1500503, N'ALMEIRIM', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1500602, N'ALTAMIRA', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1500701, N'ANAJÁS', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1500800, N'ANANINDEUA', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1500859, N'ANAPU', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1500909, N'AUGUSTO CORRÊA', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1500958, N'AURORA DO PARÁ', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1501006, N'AVEIRO', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1501105, N'BAGRE', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1501204, N'BAIÃO', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1501253, N'BANNACH', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1501303, N'BARCARENA', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1501402, N'BELÉM', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1501451, N'BELTERRA', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1501501, N'BENEVIDES', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1501576, N'BOM JESUS DO TOCANTINS', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1501600, N'BONITO', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1501709, N'BRAGANÇA', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1501725, N'BRASIL NOVO', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1501758, N'BREJO GRANDE DO ARAGUAIA', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1501782, N'BREU BRANCO', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1501808, N'BREVES', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1501907, N'BUJARU', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1501956, N'CACHOEIRA DO PIRIÁ', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1502004, N'CACHOEIRA DO ARARI', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1502103, N'CAMETÁ', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1502152, N'CANAÃ DOS CARAJÁS', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1502202, N'CAPANEMA', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1502301, N'CAPITÃO POÇO', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1502400, N'CASTANHAL', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1502509, N'CHAVES', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1502608, N'COLARES', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1502707, N'CONCEIÇÃO DO ARAGUAIA', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1502756, N'CONCÓRDIA DO PARÁ', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1502764, N'CUMARU DO NORTE', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1502772, N'CURIONÓPOLIS', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1502806, N'CURRALINHO', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1502855, N'CURUÁ', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1502905, N'CURUÇÁ', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1502939, N'DOM ELISEU', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1502954, N'ELDORADO DOS CARAJÁS', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1503002, N'FARO', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1503044, N'FLORESTA DO ARAGUAIA', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1503077, N'GARRAFÃO DO NORTE', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1503093, N'IANÉSIA DO PARÁ', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1503101, N'GURUPÁ', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1503200, N'IGARAPÉ-AÇU', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1503309, N'IGARAPÉ-MIRI', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1503408, N'INHANGAPI', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1503457, N'IPIXUNA DO PARÁ', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1503507, N'IRITUIA', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1503606, N'ITAITUBA', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1503705, N'ITUPIRANGA', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1503754, N'JACAREACANGA', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1503804, N'JACUNDÁ', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1503903, N'JURUTI', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1504000, N'LIMOEIRO DO AJURU', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1504059, N'MÃE DO RIO', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1504109, N'MAGALHÃES BARATA', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1504208, N'MARABÁ', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1504307, N'MARACANÃ', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1504406, N'MARAPANIM', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1504422, N'MARITUBA', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1504455, N'MEDICILÂNDIA', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1504505, N'MELGAÇO', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1504604, N'MOCAJUBA', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1504703, N'MOJU', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1504802, N'MONTE ALEGRE', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1504901, N'MUANÁ', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1504950, N'NOVA ESPERANÇA DO PIRIÁ', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1504976, N'NOVA IPIXUNA', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1505007, N'NOVA TIMBOTEUA', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1505031, N'NOVO PROGRESSO', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1505064, N'NOVO REPARTIMENTO', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1505106, N'ÓBIDOS', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1505205, N'OEIRAS DO PARÁ', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1505304, N'ORIXIMINÁ', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1505403, N'OURÉM', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1505437, N'OURILÂNDIA DO NORTE', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1505486, N'PACAJÁ', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1505494, N'PALESTINA DO PARÁ', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1505502, N'PARAMINAS', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1505536, N'PARAUAPEBAS', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1505551, N'PAU D ARCO', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1505601, N'PEIXE-BOI', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1505635, N'PIÇARRA', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1505650, N'PLACAS', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1505700, N'PONTA DE PEDRAS', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1505809, N'PORTEL', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1505908, N'PORTO DE MOZ', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1506005, N'PRAINHA', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1506104, N'PRIMAVERA', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1506112, N'QUATIPURU', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1506138, N'REDENÇÃO', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1506161, N'RIO MARIA', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1506187, N'RONDON DO PARÁ', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1506195, N'RURÓPOLIS', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1506203, N'SALINÓPOLIS', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1506302, N'SALVATERRA', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1506351, N'SANTA BÁRBARA DO PARÁ', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1506401, N'SANTA CRUZ DO ARARI', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1506500, N'SANTA ISABEL DO PARÁ', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1506559, N'SANTA LUZIA DO PARÁ', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1506583, N'SANTA MARIA DAS BARREIRAS', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1506609, N'SANTA MARIA DO PARÁ', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1506708, N'SANTANA DO ARAGUAIA', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1506807, N'SANTARÉM', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1506906, N'SANTARÉM NOVO', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1507003, N'SANTO ANTÔNIO DO TAUÁ', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1507102, N'SÃO CAETANO DE ODIVELAS', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1507151, N'SÃO DOMINS DO ARAGUAIA', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1507201, N'SÃO DOMINS DO CAPIM', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1507300, N'SÃO FÉLIX DO XINGU', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1507409, N'SÃO FRANCISCO DO PARÁ', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1507458, N'SÃO GERALDO DO ARAGUAIA', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1507466, N'SÃO JOÃO DA PONTA', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1507474, N'SÃO JOÃO DE PIRABAS', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1507508, N'SÃO JOÃO DO ARAGUAIA', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1507607, N'SÃO MIGUEL DO GUAMÁ', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1507706, N'SÃO SEBASTIÃO DA BOA VISTA', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1507755, N'SAPUCAIA', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1507805, N'SENADOR JOSÉ PORFÍRIO', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1507904, N'SOURE', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1507953, N'TAILÂNDIA', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1507961, N'TERRA ALTA', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1507979, N'TERRA SANTA', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1508001, N'TOMÉ-AÇU', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1508035, N'TRACUATEUA', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1508050, N'TRAIRÃO', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1508084, N'TUCUMÃ', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1508100, N'TUCURUÍ', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1508126, N'ULIANÓPOLIS', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1508159, N'URUARÁ', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1508209, N'VIGIA', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1508308, N'VISEU', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1508357, N'VITÓRIA DO XINGU', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1508407, N'XINGUARA', 15);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1600055, N'SERRA DO NAVIO', 16);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1600105, N'AMAPÁ', 16);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1600154, N'PEDRA BRANCA DO AMAPARI', 16);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1600204, N'CALÇOENE', 16);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1600212, N'CUTIAS', 16);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1600238, N'FERREIRA MES', 16);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1600253, N'ITAUBAL', 16);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1600279, N'LARANJAL DO JARI', 16);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1600303, N'MACAPÁ', 16);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1600402, N'MAZAGÃO', 16);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1600501, N'OIAPOQUE', 16);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1600535, N'PORTO GRANDE', 16);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1600550, N'PRACUÚBA', 16);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1600600, N'SANTANA', 16);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1600709, N'TARTARUGALZINHO', 16);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1600808, N'VITÓRIA DO JARI', 16);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1700251, N'ABREULÂNDIA', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1700301, N'AGUIARNÓPOLIS', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1700350, N'ALIANÇA DO TOCANTINS', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1700400, N'ALMAS', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1700707, N'ALVORADA', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1701002, N'ANANÁS', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1701051, N'ANGICO', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1701101, N'APARECIDA DO RIO NEGRO', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1701309, N'ARAMINAS', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1701903, N'ARAGUACEMA', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1702000, N'ARAGUAÇU', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1702109, N'ARAGUAÍNA', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1702158, N'ARAGUANÃ', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1702208, N'ARAGUATINS', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1702307, N'ARAPOEMA', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1702406, N'ARRAIAS', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1702554, N'AUGUSTINÓPOLIS', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1702703, N'AURORA DO TOCANTINS', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1702901, N'AXIXÁ DO TOCANTINS', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1703008, N'BABAÇULÂNDIA', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1703057, N'BANDEIRANTES DO TOCANTINS', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1703073, N'BARRA DO OURO', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1703107, N'BARROLÂNDIA', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1703206, N'BERNARDO SAYÃO', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1703305, N'BOM JESUS DO TOCANTINS', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1703602, N'BRASILÂNDIA DO TOCANTINS', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1703701, N'BREJINHO DE NAZARÉ', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1703800, N'BURITI DO TOCANTINS', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1703826, N'CACHOEIRINHA', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1703842, N'CAMPOS LINDOS', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1703867, N'CARIRI DO TOCANTINS', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1703883, N'CARMOLÂNDIA', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1703891, N'CARRASCO BONITO', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1703909, N'CASEARA', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1704105, N'CENTENÁRIO', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1704600, N'CHAPADA DE AREIA', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1705102, N'CHAPADA DA NATIVIDADE', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1705508, N'COLINAS DO TOCANTINS', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1705557, N'COMBINADO', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1705607, N'CONCEIÇÃO DO TOCANTINS', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1706001, N'COUTO MAGALHÃES', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1706100, N'CRISTALÂNDIA', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1706258, N'CRIXÁS DO TOCANTINS', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1706506, N'DARCINÓPOLIS', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1707009, N'DIANÓPOLIS', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1707108, N'DIVINÓPOLIS DO TOCANTINS', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1707207, N'DOIS IRMÃOS DO TOCANTINS', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1707306, N'DUERÉ', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1707405, N'ESPERANTINA', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1707553, N'FÁTIMA', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1707652, N'FIGUEIRÓPOLIS', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1707702, N'FILADÉLFIA', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1708205, N'FORMOSO DO ARAGUAIA', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1708254, N'FORTALEZA DO TABOCÃO', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1708304, N'IANORTE', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1709005, N'IATINS', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1709302, N'GUARAÍ', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1709500, N'GURUPI', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1709807, N'IPUEIRAS', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1710508, N'ITACAJÁ', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1710706, N'ITAGUATINS', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1710904, N'ITAPIRATINS', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1711100, N'ITAPORÃ DO TOCANTINS', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1711506, N'JAÚ DO TOCANTINS', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1711803, N'JUARINA', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1711902, N'LAA DA CONFUSÃO', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1711951, N'LAA DO TOCANTINS', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1712009, N'LAJEADO', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1712157, N'LAVANDEIRA', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1712405, N'LIZARDA', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1712454, N'LUZINÓPOLIS', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1712504, N'MARIANÓPOLIS DO TOCANTINS', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1712702, N'MATEIROS', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1712801, N'MAURILÂNDIA DO TOCANTINS', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1713205, N'MIRACEMA DO TOCANTINS', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1713304, N'MIRANORTE', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1713601, N'MONTE DO CARMO', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1713700, N'MONTE SANTO DO TOCANTINS', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1713809, N'PALMEIRAS DO TOCANTINS', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1713957, N'MURICILÂNDIA', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1714203, N'NATIVIDADE', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1714302, N'NAZARÉ', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1714880, N'NOVA OLINDA', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1715002, N'NOVA ROSALÂNDIA', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1715101, N'NOVO ACORDO', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1715150, N'NOVO ALEGRE', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1715259, N'NOVO JARDIM', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1715507, N'OLIVEIRA DE FÁTIMA', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1715705, N'PALMEIRANTE', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1715754, N'PALMEIRÓPOLIS', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1716109, N'PARAÍSO DO TOCANTINS', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1716208, N'PARANÃ', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1716307, N'PAU D ARCO', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1716505, N'PEDRO AFONSO', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1716604, N'PEIXE', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1716653, N'PEQUIZEIRO', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1716703, N'COLMÉIA', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1717008, N'PINDORAMA DO TOCANTINS', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1717206, N'PIRAQUÊ', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1717503, N'PIUM', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1717800, N'PONTE ALTA DO BOM JESUS', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1717909, N'PONTE ALTA DO TOCANTINS', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1718006, N'PORTO ALEGRE DO TOCANTINS', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1718204, N'PORTO NACIONAL', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1718303, N'PRAIA NORTE', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1718402, N'PRESIDENTE KENNEDY', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1718451, N'PUGMIL', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1718501, N'RECURSOLÂNDIA', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1718550, N'RIACHINHO', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1718659, N'RIO DA CONCEIÇÃO', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1718709, N'RIO DOS BOIS', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1718758, N'RIO SONO', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1718808, N'SAMPAIO', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1718840, N'SANDOLÂNDIA', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1718865, N'SANTA FÉ DO ARAGUAIA', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1718881, N'SANTA MARIA DO TOCANTINS', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1718899, N'SANTA RITA DO TOCANTINS', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1718907, N'SANTA ROSA DO TOCANTINS', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1719004, N'SANTA TEREZA DO TOCANTINS', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1720002, N'SANTA TEREZINHA DO TOCANTINS', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1720101, N'SÃO BENTO DO TOCANTINS', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1720150, N'SÃO FÉLIX DO TOCANTINS', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1720200, N'SÃO MIGUEL DO TOCANTINS', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1720259, N'SÃO SALVADOR DO TOCANTINS', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1720309, N'SÃO SEBASTIÃO DO TOCANTINS', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1720499, N'SÃO VALÉRIO DA NATIVIDADE', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1720655, N'SILVANÓPOLIS', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1720804, N'SÍTIO NOVO DO TOCANTINS', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1720853, N'SUCUPIRA', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1720903, N'TAGUATINGA', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1720937, N'TAIPAS DO TOCANTINS', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1720978, N'TALISMÃ', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1721000, N'PALMAS', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1721109, N'TOCANTÍNIA', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1721208, N'TOCANTINÓPOLIS', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1721257, N'TUPIRAMA', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1721307, N'TUPIRATINS', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1722081, N'WANDERLÂNDIA', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (1722107, N'XAMBIOÁ', 17);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2100055, N'AÇAILÂNDIA', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2100105, N'AFONSO CUNHA', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2100154, N'ÁGUA DOCE DO MARANHÃO', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2100204, N'ALCÂNTARA', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2100303, N'ALDEIAS ALTAS', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2100402, N'ALTAMIRA DO MARANHÃO', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2100436, N'ALTO ALEGRE DO MARANHÃO', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2100477, N'ALTO ALEGRE DO PINDARÉ', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2100501, N'ALTO PARNAÍBA', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2100550, N'AMAPÁ DO MARANHÃO', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2100600, N'AMARANTE DO MARANHÃO', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2100709, N'ANAJATUBA', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2100808, N'ANAPURUS', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2100832, N'APICUM-AÇU', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2100873, N'ARAGUANÃ', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2100907, N'ARAIOSES', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2100956, N'ARAME', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2101004, N'ARARI', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2101103, N'AXIXÁ', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2101202, N'BACABAL', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2101251, N'BACABEIRA', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2101301, N'BACURI', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2101350, N'BACURITUBA', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2101400, N'BALSAS', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2101509, N'BARÃO DE GRAJAÚ', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2101608, N'BARRA DO CORDA', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2101707, N'BARREIRINHAS', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2101731, N'BELÁGUA', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2101772, N'BELA VISTA DO MARANHÃO', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2101806, N'BENEDITO LEITE', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2101905, N'BEQUIMÃO', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2101939, N'BERNARDO DO MEARIM', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2101970, N'BOA VISTA DO GURUPI', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2102002, N'BOM JARDIM', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2102036, N'BOM JESUS DAS SELVAS', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2102077, N'BOM LUGAR', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2102101, N'BREJO', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2102150, N'BREJO DE AREIA', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2102200, N'BURITI', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2102309, N'BURITI BRAVO', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2102325, N'BURITICUPU', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2102358, N'BURITIRANA', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2102374, N'CACHOEIRA GRANDE', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2102408, N'CAJAPIÓ', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2102507, N'CAJARI', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2102556, N'CAMPESTRE DO MARANHÃO', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2102606, N'CÂNDIDO MENDES', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2102705, N'CANTANHEDE', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2102754, N'CAPINZAL DO NORTE', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2102804, N'CAROLINA', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2102903, N'CARUTAPERA', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2103000, N'CAXIAS', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2103109, N'CEDRAL', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2103125, N'CENTRAL DO MARANHÃO', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2103158, N'CENTRO DO GUILHERME', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2103174, N'CENTRO NOVO DO MARANHÃO', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2103208, N'CHAPADINHA', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2103257, N'CIDELÂNDIA', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2103307, N'CODÓ', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2103406, N'COELHO NETO', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2103505, N'COLINAS', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2103554, N'CONCEIÇÃO DO LA-AÇU', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2103604, N'COROATÁ', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2103703, N'CURURUPU', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2103752, N'DAVINÓPOLIS', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2103802, N'DOM PEDRO', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2103901, N'DUQUE BACELAR', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2104008, N'ESPERANTINÓPOLIS', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2104057, N'ESTREITO', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2104073, N'FEIRA NOVA DO MARANHÃO', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2104081, N'FERNANDO FALCÃO', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2104099, N'FORMOSA DA SERRA NEGRA', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2104107, N'FORTALEZA DOS NOGUEIRAS', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2104206, N'FORTUNA', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2104305, N'DOFREDO VIANA', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2104404, N'NÇALVES DIAS', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2104503, N'VERNADOR ARCHER', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2104552, N'VERNADOR EDISON LOBÃO', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2104602, N'VERNADOR EUGÊNIO BARROS', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2104628, N'VERNADOR LUIZ ROCHA', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2104651, N'VERNADOR NEWTON BELLO', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2104677, N'VERNADOR NUNES FREIRE', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2104701, N'GRAÇA ARANHA', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2104800, N'GRAJAÚ', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2104909, N'GUIMARÃES', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2105005, N'HUMBERTO DE CAMPOS', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2105104, N'ICATU', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2105153, N'IGARAPÉ DO MEIO', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2105203, N'IGARAPÉ GRANDE', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2105302, N'IMPERATRIZ', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2105351, N'ITAIPAVA DO GRAJAÚ', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2105401, N'ITAPECURU MIRIM', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2105427, N'ITINGA DO MARANHÃO', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2105450, N'JATOBÁ', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2105476, N'JENIPAPO DOS VIEIRAS', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2105500, N'JOÃO LISBOA', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2105609, N'JOSELÂNDIA', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2105658, N'JUNCO DO MARANHÃO', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2105708, N'LA DA PEDRA', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2105807, N'LA DO JUNCO', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2105906, N'LA VERDE', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2105922, N'LAA DO MATO', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2105948, N'LA DOS RODRIGUES', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2105963, N'LAA GRANDE DO MARANHÃO', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2105989, N'LAJEADO NOVO', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2106003, N'LIMA CAMPOS', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2106102, N'LORETO', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2106201, N'LUÍS DOMINGUES', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2106300, N'MAGALHÃES DE ALMEIDA', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2106326, N'MARACAÇUMÉ', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2106359, N'MARAJÁ DO SENA', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2106375, N'MARANHÃOZINHO', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2106409, N'MATA ROMA', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2106508, N'MATINHA', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2106607, N'MATÕES', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2106631, N'MATÕES DO NORTE', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2106672, N'MILAGRES DO MARANHÃO', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2106706, N'MIRADOR', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2106755, N'MIRANDA DO NORTE', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2106805, N'MIRINZAL', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2106904, N'MONÇÃO', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2107001, N'MONTES ALTOS', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2107100, N'MORROS', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2107209, N'NINA RODRIGUES', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2107258, N'NOVA COLINAS', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2107308, N'NOVA IORQUE', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2107357, N'NOVA OLINDA DO MARANHÃO', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2107407, N'OLHO D ÁGUA DAS CUNHÃS', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2107456, N'OLINDA NOVA DO MARANHÃO', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2107506, N'PAÇO DO LUMIAR', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2107605, N'PALMEIRÂNDIA', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2107704, N'PARAIBANO', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2107803, N'PARNARAMA', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2107902, N'PASSAGEM FRANCA', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2108009, N'PASTOS BONS', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2108058, N'PAULINO NEVES', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2108108, N'PAULO RAMOS', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2108207, N'PEDREIRAS', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2108256, N'PEDRO DO ROSÁRIO', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2108306, N'PENALVA', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2108405, N'PERI MIRIM', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2108454, N'PERITORÓ', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2108504, N'PINDARÉ-MIRIM', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2108603, N'PINHEIRO', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2108702, N'PIO XII', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2108801, N'PIRAPEMAS', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2108900, N'POÇÃO DE PEDRAS', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2109007, N'PORTO FRANCO', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2109056, N'PORTO RICO DO MARANHÃO', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2109106, N'PRESIDENTE DUTRA', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2109205, N'PRESIDENTE JUSCELINO', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2109239, N'PRESIDENTE MÉDICI', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2109270, N'PRESIDENTE SARNEY', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2109304, N'PRESIDENTE VARGAS', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2109403, N'PRIMEIRA CRUZ', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2109452, N'RAPOSA', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2109502, N'RIACHÃO', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2109551, N'RIBAMAR FIQUENE', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2109601, N'ROSÁRIO', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2109700, N'SAMBAÍBA', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2109759, N'SANTA FILOMENA DO MARANHÃO', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2109809, N'SANTA HELENA', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2109908, N'SANTA INÊS', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2110005, N'SANTA LUZIA', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2110039, N'SANTA LUZIA DO PARUÁ', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2110104, N'SANTA QUITÉRIA DO MARANHÃO', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2110203, N'SANTA RITA', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2110237, N'SANTANA DO MARANHÃO', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2110278, N'SANTO AMARO DO MARANHÃO', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2110302, N'SANTO ANTÔNIO DOS LOPES', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2110401, N'SÃO BENEDITO DO RIO PRETO', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2110500, N'SÃO BENTO', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2110609, N'SÃO BERNARDO', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2110658, N'SÃO DOMINS DO AZEITÃO', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2110708, N'SÃO DOMINS DO MARANHÃO', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2110807, N'SÃO FÉLIX DE BALSAS', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2110856, N'SÃO FRANCISCO DO BREJÃO', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2110906, N'SÃO FRANCISCO DO MARANHÃO', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2111003, N'SÃO JOÃO BATISTA', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2111029, N'SÃO JOÃO DO CARÚ', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2111052, N'SÃO JOÃO DO PARAÍSO', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2111078, N'SÃO JOÃO DO SOTER', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2111102, N'SÃO JOÃO DOS PATOS', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2111201, N'SÃO JOSÉ DE RIBAMAR', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2111250, N'SÃO JOSÉ DOS BASÍLIOS', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2111300, N'SÃO LUÍS', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2111409, N'SÃO LUÍS NZAGA DO MARANHÃO', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2111508, N'SÃO MATEUS DO MARANHÃO', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2111532, N'SÃO PEDRO DA ÁGUA BRANCA', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2111573, N'SÃO PEDRO DOS CRENTES', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2111607, N'SÃO RAIMUNDO DAS MANGABEIRAS', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2111631, N'SÃO RAIMUNDO DO DOCA BEZERRA', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2111672, N'SÃO ROBERTO', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2111706, N'SÃO VICENTE FERRER', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2111722, N'SATUBINHA', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2111748, N'SENADOR ALEXANDRE COSTA', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2111763, N'SENADOR LA ROCQUE', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2111789, N'SERRANO DO MARANHÃO', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2111805, N'SÍTIO NOVO', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2111904, N'SUCUPIRA DO NORTE', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2111953, N'SUCUPIRA DO RIACHÃO', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2112001, N'TASSO FRASO', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2112100, N'TIMBIRAS', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2112209, N'TIMON', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2112233, N'TRIZIDELA DO VALE', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2112274, N'TUFILÂNDIA', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2112308, N'TUNTUM', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2112407, N'TURIAÇU', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2112456, N'TURILÂNDIA', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2112506, N'TUTÓIA', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2112605, N'URBANO SANTOS', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2112704, N'VARGEM GRANDE', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2112803, N'VIANA', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2112852, N'VILA NOVA DOS MARTÍRIOS', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2112902, N'VITÓRIA DO MEARIM', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2113009, N'VITORINO FREIRE', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2114007, N'ZÉ DOCA', 21);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2200053, N'ACAUÃ', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2200103, N'AGRICOLÂNDIA', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2200202, N'ÁGUA BRANCA', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2200251, N'ALAINHA DO PIAUÍ', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2200277, N'ALEGRETE DO PIAUÍ', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2200301, N'ALTO LONGÁ', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2200400, N'ALTOS', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2200459, N'ALVORADA DO GURGUÉIA', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2200509, N'AMARANTE', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2200608, N'ANGICAL DO PIAUÍ', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2200707, N'ANÍSIO DE ABREU', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2200806, N'ANTÔNIO ALMEIDA', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2200905, N'AROAZES', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2200954, N'AROEIRAS DO ITAIM', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2201002, N'ARRAIAL', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2201051, N'ASSUNÇÃO DO PIAUÍ', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2201101, N'AVELINO LOPES', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2201150, N'BAIXA GRANDE DO RIBEIRO', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2201176, N'BARRA D ALCÂNTARA', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2201200, N'BARRAS', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2201309, N'BARREIRAS DO PIAUÍ', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2201408, N'BARRO DURO', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2201507, N'BATALHA', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2201556, N'BELA VISTA DO PIAUÍ', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2201572, N'BELÉM DO PIAUÍ', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2201606, N'BENEDITINOS', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2201705, N'BERTOLÍNIA', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2201739, N'BETÂNIA DO PIAUÍ', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2201770, N'BOA HORA', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2201804, N'BOCAINA', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2201903, N'BOM JESUS', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2201919, N'BOM PRINCÍPIO DO PIAUÍ', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2201929, N'BONFIM DO PIAUÍ', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2201945, N'BOQUEIRÃO DO PIAUÍ', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2201960, N'BRASILEIRA', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2201988, N'BREJO DO PIAUÍ', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2202000, N'BURITI DOS LOPES', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2202026, N'BURITI DOS MONTES', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2202059, N'CABECEIRAS DO PIAUÍ', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2202075, N'CAJAZEIRAS DO PIAUÍ', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2202083, N'CAJUEIRO DA PRAIA', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2202091, N'CALDEIRÃO GRANDE DO PIAUÍ', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2202109, N'CAMPINAS DO PIAUÍ', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2202117, N'CAMPO ALEGRE DO FIDAL', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2202133, N'CAMPO GRANDE DO PIAUÍ', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2202174, N'CAMPO LAR DO PIAUÍ', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2202208, N'CAMPO MAIOR', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2202251, N'CANAVIEIRA', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2202307, N'CANTO DO BURITI', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2202406, N'CAPITÃO DE CAMPOS', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2202455, N'CAPITÃO GERVÁSIO OLIVEIRA', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2202505, N'CARACOL', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2202539, N'CARAÚBAS DO PIAUÍ', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2202554, N'CARIDADE DO PIAUÍ', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2202604, N'CASTELO DO PIAUÍ', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2202653, N'CAXINGÓ', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2202703, N'COCAL', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2202711, N'COCAL DE TELHA', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2202729, N'COCAL DOS ALVES', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2202737, N'COIVARAS', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2202752, N'COLÔNIA DO GURGUÉIA', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2202778, N'COLÔNIA DO PIAUÍ', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2202802, N'CONCEIÇÃO DO CANINDÉ', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2202851, N'CORONEL JOSÉ DIAS', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2202901, N'CORRENTE', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2203008, N'CRISTALÂNDIA DO PIAUÍ', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2203107, N'CRISTINO CASTRO', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2203206, N'CURIMATÁ', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2203230, N'CURRAIS', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2203255, N'CURRALINHOS', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2203271, N'CURRAL NOVO DO PIAUÍ', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2203305, N'DEMERVAL LOBÃO', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2203354, N'DIRCEU ARCOVERDE', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2203404, N'DOM EXPEDITO LOPES', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2203420, N'DOMINS MOURÃO', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2203453, N'DOM INOCÊNCIO', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2203503, N'ELESBÃO VELOSO', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2203602, N'ELISEU MARTINS', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2203701, N'ESPERANTINA', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2203750, N'FARTURA DO PIAUÍ', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2203800, N'FLORES DO PIAUÍ', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2203859, N'FLORESTA DO PIAUÍ', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2203909, N'FLORIANO', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2204006, N'FRANCINÓPOLIS', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2204105, N'FRANCISCO AYRES', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2204154, N'FRANCISCO MACEDO', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2204204, N'FRANCISCO SANTOS', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2204303, N'FRONTEIRAS', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2204352, N'GEMINIANO', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2204402, N'GILBUÉS', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2204501, N'GUADALUPE', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2204550, N'GUARIBAS', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2204600, N'HU NAPOLEÃO', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2204659, N'ILHA GRANDE', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2204709, N'INHUMA', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2204808, N'IPIRANGA DO PIAUÍ', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2204907, N'ISAÍAS COELHO', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2205003, N'ITAINÓPOLIS', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2205102, N'ITAUEIRA', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2205151, N'JACOBINA DO PIAUÍ', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2205201, N'JAICÓS', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2205250, N'JARDIM DO MULATO', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2205276, N'JATOBÁ DO PIAUÍ', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2205300, N'JERUMENHA', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2205359, N'JOÃO COSTA', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2205409, N'JOAQUIM PIRES', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2205458, N'JOCA MARQUES', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2205508, N'JOSÉ DE FREITAS', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2205516, N'JUAZEIRO DO PIAUÍ', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2205524, N'JÚLIO BORGES', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2205532, N'JUREMA', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2205540, N'LAINHA DO PIAUÍ', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2205557, N'LAA ALEGRE', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2205565, N'LAA DO BARRO DO PIAUÍ', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2205573, N'LAA DE SÃO FRANCISCO', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2205581, N'LAA DO PIAUÍ', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2205599, N'LAA DO SÍTIO', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2205607, N'LANDRI SALES', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2205706, N'LUÍS CORREIA', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2205805, N'LUZILÂNDIA', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2205854, N'MADEIRO', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2205904, N'MANOEL EMÍDIO', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2205953, N'MARCOLÂNDIA', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2206001, N'MARCOS PARENTE', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2206050, N'MASSAPÊ DO PIAUÍ', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2206100, N'MATIAS OLÍMPIO', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2206209, N'MIGUEL ALVES', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2206308, N'MIGUEL LEÃO', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2206357, N'MILTON BRANDÃO', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2206407, N'MONSENHOR GIL', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2206506, N'MONSENHOR HIPÓLITO', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2206605, N'MONTE ALEGRE DO PIAUÍ', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2206654, N'MORRO CABEÇA NO TEMPO', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2206670, N'MORRO DO CHAPÉU DO PIAUÍ', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2206696, N'MURICI DOS PORTELAS', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2206704, N'NAZARÉ DO PIAUÍ', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2206753, N'NOSSA SENHORA DE NAZARÉ', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2206803, N'NOSSA SENHORA DOS REMÉDIOS', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2206902, N'NOVO ORIENTE DO PIAUÍ', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2206951, N'NOVO SANTO ANTÔNIO', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2207009, N'OEIRAS', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2207108, N'OLHO D ÁGUA DO PIAUÍ', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2207207, N'PADRE MARCOS', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2207306, N'PAES LANDIM', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2207355, N'PAJEÚ DO PIAUÍ', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2207405, N'PALMEIRA DO PIAUÍ', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2207504, N'PALMEIRAIS', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2207553, N'PAQUETÁ', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2207603, N'PARNAGUÁ', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2207702, N'PARNAÍBA', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2207751, N'PASSAGEM FRANCA DO PIAUÍ', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2207777, N'PATOS DO PIAUÍ', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2207793, N'PAU D ARCO DO PIAUÍ', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2207801, N'PAULISTANA', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2207850, N'PAVUSSU', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2207900, N'PEDRO II', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2207934, N'PEDRO LAURENTINO', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2207959, N'NOVA SANTA RITA', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2208007, N'PICOS', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2208106, N'PIMENTEIRAS', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2208205, N'PIO IX', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2208304, N'PIRACURUCA', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2208403, N'PIRIPIRI', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2208502, N'PORTO', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2208551, N'PORTO ALEGRE DO PIAUÍ', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2208601, N'PRATA DO PIAUÍ', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2208650, N'QUEIMADA NOVA', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2208700, N'REDENÇÃO DO GURGUÉIA', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2208809, N'REGENERAÇÃO', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2208858, N'RIACHO FRIO', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2208874, N'RIBEIRA DO PIAUÍ', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2208908, N'RIBEIRO NÇALVES', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2209005, N'RIO GRANDE DO PIAUÍ', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2209104, N'SANTA CRUZ DO PIAUÍ', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2209153, N'SANTA CRUZ DOS MILAGRES', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2209203, N'SANTA FILOMENA', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2209302, N'SANTA LUZ', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2209351, N'SANTANA DO PIAUÍ', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2209377, N'SANTA ROSA DO PIAUÍ', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2209401, N'SANTO ANTÔNIO DE LISBOA', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2209450, N'SANTO ANTÔNIO DOS MILAGRES', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2209500, N'SANTO INÁCIO DO PIAUÍ', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2209559, N'SÃO BRAZ DO PIAUÍ', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2209609, N'SÃO FÉLIX DO PIAUÍ', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2209658, N'SÃO FRANCISCO DE ASSIS DO PIAUÍ', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2209708, N'SÃO FRANCISCO DO PIAUÍ', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2209757, N'SÃO NÇALO DO GURGUÉIA', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2209807, N'SÃO NÇALO DO PIAUÍ', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2209856, N'SÃO JOÃO DA CANABRAVA', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2209872, N'SÃO JOÃO DA FRONTEIRA', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2209906, N'SÃO JOÃO DA SERRA', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2209955, N'SÃO JOÃO DA VARJOTA', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2209971, N'SÃO JOÃO DO ARRAIAL', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2210003, N'SÃO JOÃO DO PIAUÍ', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2210052, N'SÃO JOSÉ DO DIVINO', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2210102, N'SÃO JOSÉ DO PEIXE', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2210201, N'SÃO JOSÉ DO PIAUÍ', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2210300, N'SÃO JULIÃO', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2210359, N'SÃO LOURENÇO DO PIAUÍ', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2210375, N'SÃO LUIS DO PIAUÍ', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2210383, N'SÃO MIGUEL DA BAIXA GRANDE', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2210391, N'SÃO MIGUEL DO FIDAL', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2210409, N'SÃO MIGUEL DO TAPUIO', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2210508, N'SÃO PEDRO DO PIAUÍ', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2210607, N'SÃO RAIMUNDO NONATO', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2210623, N'SEBASTIÃO BARROS', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2210631, N'SEBASTIÃO LEAL', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2210656, N'SIGEFREDO PACHECO', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2210706, N'SIMÕES', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2210805, N'SIMPLÍCIO MENDES', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2210904, N'SOCORRO DO PIAUÍ', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2210938, N'SUSSUAPARA', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2210953, N'TAMBORIL DO PIAUÍ', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2210979, N'TANQUE DO PIAUÍ', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2211001, N'TERESINA', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2211100, N'UNIÃO', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2211209, N'URUÇUÍ', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2211308, N'VALENÇA DO PIAUÍ', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2211357, N'VÁRZEA BRANCA', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2211407, N'VÁRZEA GRANDE', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2211506, N'VERA MENDES', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2211605, N'VILA NOVA DO PIAUÍ', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2211704, N'WALL FERRAZ', 22);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2300101, N'ABAIARA', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2300150, N'ACARAPE', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2300200, N'ACARAÚ', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2300309, N'ACOPIARA', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2300408, N'AIUABA', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2300507, N'ALCÂNTARAS', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2300606, N'ALTANEIRA', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2300705, N'ALTO SANTO', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2300754, N'AMONTADA', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2300804, N'ANTONINA DO NORTE', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2300903, N'APUIARÉS', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2301000, N'AQUIRAZ', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2301109, N'ARACATI', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2301208, N'ARACOIABA', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2301257, N'ARARENDÁ', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2301307, N'ARARIPE', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2301406, N'ARATUBA', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2301505, N'ARNEIROZ', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2301604, N'ASSARÉ', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2301703, N'AURORA', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2301802, N'BAIXIO', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2301851, N'BANABUIÚ', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2301901, N'BARBALHA', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2301950, N'BARREIRA', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2302008, N'BARRO', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2302057, N'BARROQUINHA', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2302107, N'BATURITÉ', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2302206, N'BEBERIBE', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2302305, N'BELA CRUZ', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2302404, N'BOA VIAGEM', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2302503, N'BREJO SANTO', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2302602, N'CAMOCIM', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2302701, N'CAMPOS SALES', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2302800, N'CANINDÉ', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2302909, N'CAPISTRANO', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2303006, N'CARIDADE', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2303105, N'CARIRÉ', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2303204, N'CARIRIAÇU', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2303303, N'CARIÚS', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2303402, N'CARNAUBAL', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2303501, N'CASCAVEL', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2303600, N'CATARINA', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2303659, N'CATUNDA', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2303709, N'CAUCAIA', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2303808, N'CEDRO', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2303907, N'CHAVAL', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2303931, N'CHORÓ', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2303956, N'CHOROZINHO', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2304004, N'COREAÚ', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2304103, N'CRATEÚS', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2304202, N'CRATO', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2304236, N'CROATÁ', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2304251, N'CRUZ', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2304269, N'DEPUTADO IRAPUAN PINHEIRO', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2304277, N'ERERÊ', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2304285, N'EUSÉBIO', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2304301, N'FARIAS BRITO', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2304350, N'FORQUILHA', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2304400, N'FORTALEZA', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2304459, N'FORTIM', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2304509, N'FRECHEIRINHA', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2304608, N'GENERAL SAMPAIO', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2304657, N'GRAÇA', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2304707, N'GRANJA', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2304806, N'GRANJEIRO', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2304905, N'GROAÍRAS', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2304954, N'GUAIÚBA', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2305001, N'GUARACIABA DO NORTE', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2305100, N'GUARAMIRANGA', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2305209, N'HIDROLÂNDIA', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2305233, N'HORIZONTE', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2305266, N'IBARETAMA', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2305308, N'IBIAPINA', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2305332, N'IBICUITINGA', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2305357, N'ICAPUÍ', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2305407, N'ICÓ', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2305506, N'IGUATU', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2305605, N'INDEPENDÊNCIA', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2305654, N'IPAPORANGA', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2305704, N'IPAUMIRIM', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2305803, N'IPU', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2305902, N'IPUEIRAS', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2306009, N'IRACEMA', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2306108, N'IRAUÇUBA', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2306207, N'ITAIÇABA', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2306256, N'ITAITINGA', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2306306, N'ITAPAGÉ', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2306405, N'ITAPIPOCA', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2306504, N'ITAPIÚNA', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2306553, N'ITAREMA', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2306603, N'ITATIRA', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2306702, N'JAGUARETAMA', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2306801, N'JAGUARIBARA', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2306900, N'JAGUARIBE', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2307007, N'JAGUARUANA', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2307106, N'JARDIM', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2307205, N'JATI', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2307254, N'JIJOCA DE JERICOACOARA', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2307304, N'JUAZEIRO DO NORTE', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2307403, N'JUCÁS', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2307502, N'LAVRAS DA MANGABEIRA', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2307601, N'LIMOEIRO DO NORTE', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2307635, N'MADALENA', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2307650, N'MARACANAÚ', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2307700, N'MARANGUAPE', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2307809, N'MARCO', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2307908, N'MARTINÓPOLE', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2308005, N'MASSAPÊ', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2308104, N'MAURITI', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2308203, N'MERUOCA', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2308302, N'MILAGRES', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2308351, N'MILHÃ', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2308377, N'MIRAÍMA', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2308401, N'MISSÃO VELHA', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2308500, N'MOMBAÇA', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2308609, N'MONSENHOR TABOSA', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2308708, N'MORADA NOVA', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2308807, N'MORAÚJO', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2308906, N'MORRINHOS', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2309003, N'MUCAMBO', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2309102, N'MULUNGU', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2309201, N'NOVA OLINDA', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2309300, N'NOVA RUSSAS', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2309409, N'NOVO ORIENTE', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2309458, N'OCARA', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2309508, N'ORÓS', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2309607, N'PACAJUS', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2309706, N'PACATUBA', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2309805, N'PACOTI', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2309904, N'PACUJÁ', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2310001, N'PALHANO', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2310100, N'PALMÁCIA', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2310209, N'PARACURU', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2310258, N'PARAIPABA', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2310308, N'PARAMBU', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2310407, N'PARAMOTI', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2310506, N'PEDRA BRANCA', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2310605, N'PENAFORTE', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2310704, N'PENTECOSTE', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2310803, N'PEREIRO', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2310852, N'PINDORETAMA', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2310902, N'PIQUET CARNEIRO', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2310951, N'PIRES FERREIRA', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2311009, N'PORANGA', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2311108, N'PORTEIRAS', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2311207, N'POTENGI', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2311231, N'POTIRETAMA', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2311264, N'QUITERIANÓPOLIS', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2311306, N'QUIXADÁ', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2311355, N'QUIXELÔ', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2311405, N'QUIXERAMOBIM', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2311504, N'QUIXERÉ', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2311603, N'REDENÇÃO', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2311702, N'RERIUTABA', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2311801, N'RUSSAS', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2311900, N'SABOEIRO', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2311959, N'SALITRE', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2312007, N'SANTANA DO ACARAÚ', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2312106, N'SANTANA DO CARIRI', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2312205, N'SANTA QUITÉRIA', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2312304, N'SÃO BENEDITO', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2312403, N'SÃO NÇALO DO AMARANTE', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2312502, N'SÃO JOÃO DO JAGUARIBE', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2312601, N'SÃO LUÍS DO CURU', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2312700, N'SENADOR POMPEU', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2312809, N'SENADOR SÁ', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2312908, N'SOBRAL', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2313005, N'SOLONÓPOLE', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2313104, N'TABULEIRO DO NORTE', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2313203, N'TAMBORIL', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2313252, N'TARRAFAS', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2313302, N'TAUÁ', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2313351, N'TEJUÇUOCA', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2313401, N'TIANGUÁ', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2313500, N'TRAIRI', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2313559, N'TURURU', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2313609, N'UBAJARA', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2313708, N'UMARI', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2313757, N'UMIRIM', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2313807, N'URUBURETAMA', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2313906, N'URUOCA', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2313955, N'VARJOTA', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2314003, N'VÁRZEA ALEGRE', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2314102, N'VIÇOSA DO CEARÁ', 23);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2400109, N'ACARI', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2400208, N'AÇU', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2400307, N'AFONSO BEZERRA', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2400406, N'ÁGUA NOVA', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2400505, N'ALEXANDRIA', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2400604, N'ALMINO AFONSO', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2400703, N'ALTO DO RODRIGUES', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2400802, N'ANGICOS', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2400901, N'ANTÔNIO MARTINS', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2401008, N'APODI', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2401107, N'AREIA BRANCA', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2401206, N'ARÊS', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2401305, N'AUGUSTO SEVERO', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2401404, N'BAÍA FORMOSA', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2401453, N'BARAÚNA', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2401503, N'BARCELONA', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2401602, N'BENTO FERNANDES', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2401651, N'BODÓ', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2401701, N'BOM JESUS', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2401800, N'BREJINHO', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2401859, N'CAIÇARA DO NORTE', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2401909, N'CAIÇARA DO RIO DO VENTO', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2402006, N'CAICÓ', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2402105, N'CAMPO REDONDO', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2402204, N'CANGUARETAMA', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2402303, N'CARAÚBAS', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2402402, N'CARNAÚBA DOS DANTAS', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2402501, N'CARNAUBAIS', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2402600, N'CEARÁ-MIRIM', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2402709, N'CERRO CORÁ', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2402808, N'CORONEL EZEQUIEL', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2402907, N'CORONEL JOÃO PESSOA', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2403004, N'CRUZETA', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2403103, N'CURRAIS NOVOS', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2403202, N'DOUTOR SEVERIANO', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2403251, N'PARNAMIRIM', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2403301, N'ENCANTO', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2403400, N'EQUADOR', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2403509, N'ESPÍRITO SANTO', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2403608, N'EXTREMOZ', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2403707, N'FELIPE GUERRA', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2403756, N'FERNANDO PEDROZA', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2403806, N'FLORÂNIA', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2403905, N'FRANCISCO DANTAS', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2404002, N'FRUTUOSO MES', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2404101, N'GALINHOS', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2404200, N'IANINHA', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2404309, N'VERNADOR DIX-SEPT ROSADO', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2404408, N'GROSSOS', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2404507, N'GUAMARÉ', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2404606, N'IELMO MARINHO', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2404705, N'IPANGUAÇU', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2404804, N'IPUEIRA', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2404853, N'ITAJÁ', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2404903, N'ITAÚ', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2405009, N'JAÇANÃ', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2405108, N'JANDAÍRA', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2405207, N'JANDUÍS', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2405306, N'JANUÁRIO CICCO', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2405405, N'JAPI', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2405504, N'JARDIM DE ANGICOS', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2405603, N'JARDIM DE PIRANHAS', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2405702, N'JARDIM DO SERIDÓ', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2405801, N'JOÃO CÂMARA', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2405900, N'JOÃO DIAS', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2406007, N'JOSÉ DA PENHA', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2406106, N'JUCURUTU', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2406155, N'JUNDIÁ', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2406205, N'LAA D ANTA', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2406304, N'LAA DE PEDRAS', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2406403, N'LAA DE VELHOS', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2406502, N'LAA NOVA', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2406601, N'LAA SALGADA', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2406700, N'LAJES', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2406809, N'LAJES PINTADAS', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2406908, N'LUCRÉCIA', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2407005, N'LUÍS MES', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2407104, N'MACAÍBA', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2407203, N'MACAU', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2407252, N'MAJOR SALES', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2407302, N'MARCELINO VIEIRA', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2407401, N'MARTINS', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2407500, N'MAXARANGUAPE', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2407609, N'MESSIAS TARGINO', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2407708, N'MONTANHAS', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2407807, N'MONTE ALEGRE', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2407906, N'MONTE DAS GAMELEIRAS', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2408003, N'MOSSORÓ', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2408102, N'NATAL', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2408201, N'NÍSIA FLORESTA', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2408300, N'NOVA CRUZ', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2408409, N'OLHO-D ÁGUA DO BORGES', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2408508, N'OURO BRANCO', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2408607, N'PARANÁ', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2408706, N'PARAÚ', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2408805, N'PARAZINHO', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2408904, N'PARELHAS', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2408953, N'RIO DO FO', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2409100, N'PASSA E FICA', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2409209, N'PASSAGEM', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2409308, N'PATU', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2409332, N'SANTA MARIA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2409407, N'PAU DOS FERROS', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2409506, N'PEDRA GRANDE', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2409605, N'PEDRA PRETA', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2409704, N'PEDRO AVELINO', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2409803, N'PEDRO VELHO', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2409902, N'PENDÊNCIAS', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2410009, N'PILÕES', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2410108, N'POÇO BRANCO', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2410207, N'PORTALEGRE', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2410256, N'PORTO DO MANGUE', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2410306, N'PRESIDENTE JUSCELINO', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2410405, N'PUREZA', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2410504, N'RAFAEL FERNANDES', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2410603, N'RAFAEL DEIRO', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2410702, N'RIACHO DA CRUZ', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2410801, N'RIACHO DE SANTANA', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2410900, N'RIACHUELO', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2411007, N'RODOLFO FERNANDES', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2411056, N'TIBAU', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2411106, N'RUY BARBOSA', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2411205, N'SANTA CRUZ', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2411403, N'SANTANA DO MATOS', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2411429, N'SANTANA DO SERIDÓ', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2411502, N'SANTO ANTÔNIO', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2411601, N'SÃO BENTO DO NORTE', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2411700, N'SÃO BENTO DO TRAIRÍ', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2411809, N'SÃO FERNANDO', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2411908, N'SÃO FRANCISCO DO OESTE', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2412005, N'SÃO NÇALO DO AMARANTE', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2412104, N'SÃO JOÃO DO SABUGI', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2412203, N'SÃO JOSÉ DE MIPIBU', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2412302, N'SÃO JOSÉ DO CAMPESTRE', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2412401, N'SÃO JOSÉ DO SERIDÓ', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2412500, N'SÃO MIGUEL', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2412559, N'SÃO MIGUEL DO STOSO', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2412609, N'SÃO PAULO DO POTENGI', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2412708, N'SÃO PEDRO', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2412807, N'SÃO RAFAEL', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2412906, N'SÃO TOMÉ', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2413003, N'SÃO VICENTE', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2413102, N'SENADOR ELÓI DE SOUZA', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2413201, N'SENADOR GEORGINO AVELINO', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2413300, N'SERRA DE SÃO BENTO', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2413359, N'SERRA DO MEL', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2413409, N'SERRA NEGRA DO NORTE', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2413508, N'SERRINHA', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2413557, N'SERRINHA DOS PINTOS', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2413607, N'SEVERIANO MELO', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2413706, N'SÍTIO NOVO', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2413805, N'TABOLEIRO GRANDE', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2413904, N'TAIPU', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2414001, N'TANGARÁ', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2414100, N'TENENTE ANANIAS', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2414159, N'TENENTE LAURENTINO CRUZ', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2414209, N'TIBAU DO SUL', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2414308, N'TIMBAÚBA DOS BATISTAS', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2414407, N'TOUROS', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2414456, N'TRIUNFO POTIGUAR', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2414506, N'UMARIZAL', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2414605, N'UPANEMA', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2414704, N'VÁRZEA', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2414753, N'VENHA-VER', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2414803, N'VERA CRUZ', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2414902, N'VIÇOSA', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2415008, N'VILA FLOR', 24);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2500106, N'ÁGUA BRANCA', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2500205, N'AGUIAR', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2500304, N'ALAA GRANDE', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2500403, N'ALAA NOVA', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2500502, N'ALAINHA', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2500536, N'ALCANTIL', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2500577, N'ALDÃO DE JANDAÍRA', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2500601, N'ALHANDRA', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2500700, N'SÃO JOÃO DO RIO DO PEIXE', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2500734, N'AMPARO', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2500775, N'APARECIDA', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2500809, N'ARAÇAGI', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2500908, N'ARARA', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2501005, N'ARARUNA', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2501104, N'AREIA', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2501153, N'AREIA DE BARAÚNAS', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2501203, N'AREIAL', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2501302, N'AROEIRAS', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2501351, N'ASSUNÇÃO', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2501401, N'BAÍA DA TRAIÇÃO', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2501500, N'BANANEIRAS', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2501534, N'BARAÚNA', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2501575, N'BARRA DE SANTANA', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2501609, N'BARRA DE SANTA ROSA', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2501708, N'BARRA DE SÃO MIGUEL', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2501807, N'BAYEUX', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2501906, N'BELÉM', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2502003, N'BELÉM DO BREJO DO CRUZ', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2502052, N'BERNARDINO BATISTA', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2502102, N'BOA VENTURA', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2502151, N'BOA VISTA', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2502201, N'BOM JESUS', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2502300, N'BOM SUCESSO', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2502409, N'BONITO DE SANTA FÉ', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2502508, N'BOQUEIRÃO', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2502607, N'IGARACY', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2502706, N'BORBOREMA', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2502805, N'BREJO DO CRUZ', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2502904, N'BREJO DOS SANTOS', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2503001, N'CAAPORÃ', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2503100, N'CABACEIRAS', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2503209, N'CABEDELO', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2503308, N'CACHOEIRA DOS ÍNDIOS', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2503407, N'CACIMBA DE AREIA', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2503506, N'CACIMBA DE DENTRO', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2503555, N'CACIMBAS', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2503605, N'CAIÇARA', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2503704, N'CAJAZEIRAS', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2503753, N'CAJAZEIRINHAS', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2503803, N'CALDAS BRANDÃO', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2503902, N'CAMALAÚ', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2504009, N'CAMPINA GRANDE', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2504033, N'CAPIM', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2504074, N'CARAÚBAS', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2504108, N'CARRAPATEIRA', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2504157, N'CASSERENGUE', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2504207, N'CATINGUEIRA', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2504306, N'CATOLÉ DO ROCHA', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2504355, N'CATURITÉ', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2504405, N'CONCEIÇÃO', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2504504, N'CONDADO', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2504603, N'CONDE', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2504702, N'CON', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2504801, N'COREMAS', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2504850, N'COXIXOLA', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2504900, N'CRUZ DO ESPÍRITO SANTO', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2505006, N'CUBATI', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2505105, N'CUITÉ', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2505204, N'CUITEGI', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2505238, N'CUITÉ DE MAMANGUAPE', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2505279, N'CURRAL DE CIMA', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2505303, N'CURRAL VELHO', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2505352, N'DAMIÃO', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2505402, N'DESTERRO', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2505501, N'VISTA SERRANA', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2505600, N'DIAMANTE', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2505709, N'DONA INÊS', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2505808, N'DUAS ESTRADAS', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2505907, N'EMAS', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2506004, N'ESPERANÇA', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2506103, N'FAGUNDES', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2506202, N'FREI MARTINHO', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2506251, N'GADO BRAVO', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2506301, N'GUARABIRA', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2506400, N'GURINHÉM', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2506509, N'GURJÃO', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2506608, N'IBIARA', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2506707, N'IMACULADA', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2506806, N'INGÁ', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2506905, N'ITABAIANA', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2507002, N'ITAPORANGA', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2507101, N'ITAPOROROCA', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2507200, N'ITATUBA', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2507309, N'JACARAÚ', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2507408, N'JERICÓ', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2507507, N'JOÃO PESSOA', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2507606, N'JUAREZ TÁVORA', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2507705, N'JUAZEIRINHO', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2507804, N'JUNCO DO SERIDÓ', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2507903, N'JURIPIRANGA', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2508000, N'JURU', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2508109, N'LAA', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2508208, N'LAA DE DENTRO', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2508307, N'LAA SECA', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2508406, N'LASTRO', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2508505, N'LIVRAMENTO', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2508554, N'LOGRADOURO', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2508604, N'LUCENA', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2508703, N'MÃE D ÁGUA', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2508802, N'MALTA', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2508901, N'MAMANGUAPE', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2509008, N'MANAÍRA', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2509057, N'MARCAÇÃO', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2509107, N'MARI', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2509156, N'MARIZÓPOLIS', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2509206, N'MASSARANDUBA', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2509305, N'MATARACA', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2509339, N'MATINHAS', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2509370, N'MATO GROSSO', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2509396, N'MATURÉIA', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2509404, N'MOGEIRO', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2509503, N'MONTADAS', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2509602, N'MONTE HOREBE', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2509701, N'MONTEIRO', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2509800, N'MULUNGU', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2509909, N'NATUBA', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2510006, N'NAZAREZINHO', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2510105, N'NOVA FLORESTA', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2510204, N'NOVA OLINDA', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2510303, N'NOVA PALMEIRA', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2510402, N'OLHO D ÁGUA', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2510501, N'OLIVEDOS', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2510600, N'OURO VELHO', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2510659, N'PARARI', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2510709, N'PASSAGEM', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2510808, N'PATOS', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2510907, N'PAULISTA', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2511004, N'PEDRA BRANCA', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2511103, N'PEDRA LAVRADA', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2511202, N'PEDRAS DE FO', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2511301, N'PIANCÓ', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2511400, N'PICUÍ', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2511509, N'PILAR', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2511608, N'PILÕES', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2511707, N'PILÕEZINHOS', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2511806, N'PIRPIRITUBA', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2511905, N'PITIMBU', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2512002, N'POCINHOS', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2512036, N'POÇO DANTAS', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2512077, N'POÇO DE JOSÉ DE MOURA', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2512101, N'POMBAL', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2512200, N'PRATA', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2512309, N'PRINCESA ISABEL', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2512408, N'PUXINANÃ', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2512507, N'QUEIMADAS', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2512606, N'QUIXABÁ', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2512705, N'REMÍGIO', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2512721, N'PEDRO RÉGIS', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2512747, N'RIACHÃO', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2512754, N'RIACHÃO DO BACAMARTE', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2512762, N'RIACHÃO DO POÇO', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2512788, N'RIACHO DE SANTO ANTÔNIO', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2512804, N'RIACHO DOS CAVALOS', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2512903, N'RIO TINTO', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2513000, N'SALGADINHO', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2513109, N'SALGADO DE SÃO FÉLIX', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2513158, N'SANTA CECÍLIA', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2513208, N'SANTA CRUZ', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2513307, N'SANTA HELENA', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2513356, N'SANTA INÊS', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2513406, N'SANTA LUZIA', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2513505, N'SANTANA DE MANGUEIRA', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2513604, N'SANTANA DOS GARROTES', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2513653, N'SANTARÉM', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2513703, N'SANTA RITA', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2513802, N'SANTA TERESINHA', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2513851, N'SANTO ANDRÉ', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2513901, N'SÃO BENTO', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2513927, N'SÃO BENTINHO', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2513943, N'SÃO DOMINS DO CARIRI', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2513968, N'SÃO DOMINS', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2513984, N'SÃO FRANCISCO', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2514008, N'SÃO JOÃO DO CARIRI', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2514107, N'SÃO JOÃO DO TIGRE', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2514206, N'SÃO JOSÉ DA LAA TAPADA', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2514305, N'SÃO JOSÉ DE CAIANA', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2514404, N'SÃO JOSÉ DE ESPINHARAS', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2514453, N'SÃO JOSÉ DOS RAMOS', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2514503, N'SÃO JOSÉ DE PIRANHAS', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2514552, N'SÃO JOSÉ DE PRINCESA', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2514602, N'SÃO JOSÉ DO BONFIM', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2514651, N'SÃO JOSÉ DO BREJO DO CRUZ', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2514701, N'SÃO JOSÉ DO SABUGI', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2514800, N'SÃO JOSÉ DOS CORDEIROS', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2514909, N'SÃO MAMEDE', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2515005, N'SÃO MIGUEL DE TAIPU', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2515104, N'SÃO SEBASTIÃO DE LAA DE ROÇA', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2515203, N'SÃO SEBASTIÃO DO UMBUZEIRO', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2515302, N'SAPÉ', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2515401, N'SERIDÓ', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2515500, N'SERRA BRANCA', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2515609, N'SERRA DA RAIZ', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2515708, N'SERRA GRANDE', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2515807, N'SERRA REDONDA', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2515906, N'SERRARIA', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2515930, N'SERTÃOZINHO', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2515971, N'SOBRADO', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2516003, N'SOLÂNEA', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2516102, N'SOLEDADE', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2516151, N'SOSSÊ', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2516201, N'SOUSA', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2516300, N'SUMÉ', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2516409, N'CAMPO DE SANTANA', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2516508, N'TAPEROÁ', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2516607, N'TAVARES', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2516706, N'TEIXEIRA', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2516755, N'TENÓRIO', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2516805, N'TRIUNFO', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2516904, N'UIRAÚNA', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2517001, N'UMBUZEIRO', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2517100, N'VÁRZEA', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2517209, N'VIEIRÓPOLIS', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2517407, N'ZABELÊ', 25);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2600054, N'ABREU E LIMA', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2600104, N'AFOGADOS DA INGAZEIRA', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2600203, N'AFRÂNIO', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2600302, N'AGRESTINA', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2600401, N'ÁGUA PRETA', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2600500, N'ÁGUAS BELAS', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2600609, N'ALAINHA', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2600708, N'ALIANÇA', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2600807, N'ALTINHO', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2600906, N'AMARAJI', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2601003, N'ANGELIM', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2601052, N'ARAÇOIABA', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2601102, N'ARARIPINA', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2601201, N'ARCOVERDE', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2601300, N'BARRA DE GUABIRABA', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2601409, N'BARREIROS', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2601508, N'BELÉM DE MARIA', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2601607, N'BELÉM DE SÃO FRANCISCO', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2601706, N'BELO JARDIM', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2601805, N'BETÂNIA', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2601904, N'BEZERROS', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2602001, N'BODOCÓ', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2602100, N'BOM CONSELHO', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2602209, N'BOM JARDIM', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2602308, N'BONITO', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2602407, N'BREJÃO', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2602506, N'BREJINHO', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2602605, N'BREJO DA MADRE DE DEUS', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2602704, N'BUENOS AIRES', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2602803, N'BUÍQUE', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2602902, N'CABO DE SANTO ASTINHO', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2603009, N'CABROBÓ', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2603108, N'CACHOEIRINHA', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2603207, N'CAETÉS', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2603306, N'CALÇADO', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2603405, N'CALUMBI', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2603454, N'CAMARAGIBE', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2603504, N'CAMOCIM DE SÃO FÉLIX', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2603603, N'CAMUTANGA', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2603702, N'CANHOTINHO', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2603801, N'CAPOEIRAS', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2603900, N'CARNAÍBA', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2603926, N'CARNAUBEIRA DA PENHA', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2604007, N'CARPINA', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2604106, N'CARUARU', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2604155, N'CASINHAS', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2604205, N'CATENDE', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2604304, N'CEDRO', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2604403, N'CHÃ DE ALEGRIA', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2604502, N'CHÃ GRANDE', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2604601, N'CONDADO', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2604700, N'CORRENTES', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2604809, N'CORTÊS', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2604908, N'CUMARU', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2605004, N'CUPIRA', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2605103, N'CUSTÓDIA', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2605152, N'DORMENTES', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2605202, N'ESCADA', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2605301, N'EXU', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2605400, N'FEIRA NOVA', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2605459, N'FERNANDO DE NORONHA', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2605509, N'FERREIROS', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2605608, N'FLORES', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2605707, N'FLORESTA', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2605806, N'FREI MIGUELINHO', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2605905, N'GAMELEIRA', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2606002, N'GARANHUNS', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2606101, N'GLÓRIA DO ITÁ', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2606200, N'IANA', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2606309, N'GRANITO', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2606408, N'GRAVATÁ', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2606507, N'IATI', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2606606, N'IBIMIRIM', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2606705, N'IBIRAJUBA', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2606804, N'IGARASSU', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2606903, N'IGUARACI', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2607000, N'INAJÁ', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2607109, N'INGAZEIRA', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2607208, N'IPOJUCA', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2607307, N'IPUBI', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2607406, N'ITACURUBA', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2607505, N'ITAÍBA', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2607604, N'ILHA DE ITAMARACÁ', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2607653, N'ITAMBÉ', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2607703, N'ITAPETIM', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2607752, N'ITAPISSUMA', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2607802, N'ITAQUITINGA', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2607901, N'JABOATÃO DOS GUARARAPES', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2607950, N'JAQUEIRA', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2608008, N'JATAÚBA', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2608057, N'JATOBÁ', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2608107, N'JOÃO ALFREDO', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2608206, N'JOAQUIM NABUCO', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2608255, N'JUCATI', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2608305, N'JUPI', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2608404, N'JUREMA', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2608453, N'LAA DO CARRO', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2608503, N'LAA DO ITAENGA', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2608602, N'LAA DO OURO', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2608701, N'LAA DOS GATOS', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2608750, N'LAA GRANDE', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2608800, N'LAJEDO', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2608909, N'LIMOEIRO', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2609006, N'MACAPARANA', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2609105, N'MACHADOS', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2609154, N'MANARI', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2609204, N'MARAIAL', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2609303, N'MIRANDIBA', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2609402, N'MORENO', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2609501, N'NAZARÉ DA MATA', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2609600, N'OLINDA', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2609709, N'OROBÓ', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2609808, N'OROCÓ', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2609907, N'OURICURI', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2610004, N'PALMARES', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2610103, N'PALMEIRINA', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2610202, N'PANELAS', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2610301, N'PARANATAMA', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2610400, N'PARNAMIRIM', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2610509, N'PASSIRA', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2610608, N'PAUDALHO', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2610707, N'PAULISTA', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2610806, N'PEDRA', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2610905, N'PESQUEIRA', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2611002, N'PETROLÂNDIA', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2611101, N'PETROLINA', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2611200, N'POÇÃO', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2611309, N'POMBOS', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2611408, N'PRIMAVERA', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2611507, N'QUIPAPÁ', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2611533, N'QUIXABA', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2611606, N'RECIFE', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2611705, N'RIACHO DAS ALMAS', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2611804, N'RIBEIRÃO', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2611903, N'RIO FORMOSO', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2612000, N'SAIRÉ', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2612109, N'SALGADINHO', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2612208, N'SALGUEIRO', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2612307, N'SALOÁ', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2612406, N'SANHARÓ', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2612455, N'SANTA CRUZ', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2612471, N'SANTA CRUZ DA BAIXA VERDE', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2612505, N'SANTA CRUZ DO CAPIBARIBE', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2612554, N'SANTA FILOMENA', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2612604, N'SANTA MARIA DA BOA VISTA', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2612703, N'SANTA MARIA DO CAMBUCÁ', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2612802, N'SANTA TEREZINHA', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2612901, N'SÃO BENEDITO DO SUL', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2613008, N'SÃO BENTO DO UNA', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2613107, N'SÃO CAITANO', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2613206, N'SÃO JOÃO', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2613305, N'SÃO JOAQUIM DO MONTE', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2613404, N'SÃO JOSÉ DA COROA GRANDE', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2613503, N'SÃO JOSÉ DO BELMONTE', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2613602, N'SÃO JOSÉ DO EGITO', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2613701, N'SÃO LOURENÇO DA MATA', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2613800, N'SÃO VICENTE FERRER', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2613909, N'SERRA TALHADA', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2614006, N'SERRITA', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2614105, N'SERTÂNIA', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2614204, N'SIRINHAÉM', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2614303, N'MOREILÂNDIA', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2614402, N'SOLIDÃO', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2614501, N'SURUBIM', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2614600, N'TABIRA', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2614709, N'TACAIMBÓ', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2614808, N'TACARATU', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2614857, N'TAMANDARÉ', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2615003, N'TAQUARITINGA DO NORTE', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2615102, N'TEREZINHA', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2615201, N'TERRA NOVA', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2615300, N'TIMBAÚBA', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2615409, N'TORITAMA', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2615508, N'TRACUNHAÉM', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2615607, N'TRINDADE', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2615706, N'TRIUNFO', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2615805, N'TUPANATINGA', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2615904, N'TUPARETAMA', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2616001, N'VENTUROSA', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2616100, N'VERDEJANTE', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2616183, N'VERTENTE DO LÉRIO', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2616209, N'VERTENTES', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2616308, N'VICÊNCIA', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2616407, N'VITÓRIA DE SANTO ANTÃO', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2616506, N'XEXÉU', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2700102, N'ÁGUA BRANCA', 27);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2700201, N'ANADIA', 27);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2700300, N'ARAPIRACA', 27);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2700409, N'ATALAIA', 27);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2700508, N'BARRA DE SANTO ANTÔNIO', 27);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2700607, N'BARRA DE SÃO MIGUEL', 27);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2700706, N'BATALHA', 27);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2700805, N'BELÉM', 27);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2700904, N'BELO MONTE', 27);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2701001, N'BOCA DA MATA', 27);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2701100, N'BRANQUINHA', 27);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2701209, N'CACIMBINHAS', 27);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2701308, N'CAJUEIRO', 27);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2701357, N'CAMPESTRE', 27);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2701407, N'CAMPO ALEGRE', 27);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2701506, N'CAMPO GRANDE', 27);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2701605, N'CANAPI', 27);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2701704, N'CAPELA', 27);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2701803, N'CARNEIROS', 27);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2701902, N'CHÃ PRETA', 27);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2702009, N'COITÉ DO NÓIA', 27);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2702108, N'COLÔNIA LEOPOLDINA', 27);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2702207, N'COQUEIRO SECO', 27);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2702306, N'CORURIPE', 27);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2702355, N'CRAÍBAS', 27);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2702405, N'DELMIRO UVEIA', 27);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2702504, N'DOIS RIACHOS', 27);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2702553, N'ESTRELA DE ALAAS', 27);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2702603, N'FEIRA GRANDE', 27);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2702702, N'FELIZ DESERTO', 27);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2702801, N'FLEXEIRAS', 27);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2702900, N'GIRAU DO PONCIANO', 27);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2703007, N'IBATEGUARA', 27);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2703106, N'IGACI', 27);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2703205, N'IGREJA NOVA', 27);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2703304, N'INHAPI', 27);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2703403, N'JACARÉ DOS HOMENS', 27);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2703502, N'JACUÍPE', 27);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2703601, N'JAPARATINGA', 27);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2703700, N'JARAMATAIA', 27);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2703759, N'JEQUIÁ DA PRAIA', 27);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2703809, N'JOAQUIM MES', 27);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2703908, N'JUNDIÁ', 27);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2704005, N'JUNQUEIRO', 27);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2704104, N'LAA DA CANOA', 27);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2704203, N'LIMOEIRO DE ANADIA', 27);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2704302, N'MACEIÓ', 27);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2704401, N'MAJOR ISIDORO', 27);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2704500, N'MARAGI', 27);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2704609, N'MARAVILHA', 27);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2704708, N'MARECHAL DEODORO', 27);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2704807, N'MARIBONDO', 27);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2704906, N'MAR VERMELHO', 27);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2705002, N'MATA GRANDE', 27);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2705101, N'MATRIZ DE CAMARAGIBE', 27);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2705200, N'MESSIAS', 27);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2705309, N'MINADOR DO NEGRÃO', 27);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2705408, N'MONTEIRÓPOLIS', 27);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2705507, N'MURICI', 27);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2705606, N'NOVO LINO', 27);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2705705, N'OLHO D ÁGUA DAS FLORES', 27);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2705804, N'OLHO D ÁGUA DO CASADO', 27);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2705903, N'OLHO D ÁGUA GRANDE', 27);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2706000, N'OLIVENÇA', 27);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2706109, N'OURO BRANCO', 27);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2706208, N'PALESTINA', 27);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2706307, N'PALMEIRA DOS ÍNDIOS', 27);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2706406, N'PÃO DE AÇÚCAR', 27);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2706422, N'PARICONHA', 27);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2706448, N'PARIPUEIRA', 27);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2706505, N'PASSO DE CAMARAGIBE', 27);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2706604, N'PAULO JACINTO', 27);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2706703, N'PENEDO', 27);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2706802, N'PIAÇABUÇU', 27);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2706901, N'PILAR', 27);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2707008, N'PINDOBA', 27);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2707107, N'PIRANHAS', 27);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2707206, N'POÇO DAS TRINCHEIRAS', 27);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2707305, N'PORTO CALVO', 27);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2707404, N'PORTO DE PEDRAS', 27);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2707503, N'PORTO REAL DO COLÉGIO', 27);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2707602, N'QUEBRANGULO', 27);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2707701, N'RIO LAR', 27);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2707800, N'ROTEIRO', 27);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2707909, N'SANTA LUZIA DO NORTE', 27);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2708006, N'SANTANA DO IPANEMA', 27);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2708105, N'SANTANA DO MUNDAÚ', 27);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2708204, N'SÃO BRÁS', 27);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2708303, N'SÃO JOSÉ DA LAJE', 27);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2708402, N'SÃO JOSÉ DA TAPERA', 27);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2708501, N'SÃO LUÍS DO QUITUNDE', 27);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2708600, N'SÃO MIGUEL DOS CAMPOS', 27);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2708709, N'SÃO MIGUEL DOS MILAGRES', 27);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2708808, N'SÃO SEBASTIÃO', 27);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2708907, N'SATUBA', 27);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2708956, N'SENADOR RUI PALMEIRA', 27);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2709004, N'TANQUE D ARCA', 27);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2709103, N'TAQUARANA', 27);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2709152, N'TEOTÔNIO VILELA', 27);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2709202, N'TRAIPU', 27);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2709301, N'UNIÃO DOS PALMARES', 27);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2709400, N'VIÇOSA', 27);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2800100, N'AMPARO DE SÃO FRANCISCO', 28);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2800209, N'AQUIDABÃ', 28);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2800308, N'ARACAJU', 28);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2800407, N'ARAUÁ', 28);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2800506, N'AREIA BRANCA', 28);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2800605, N'BARRA DOS COQUEIROS', 28);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2800670, N'BOQUIM', 28);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2800704, N'BREJO GRANDE', 28);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2801009, N'CAMPO DO BRITO', 28);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2801108, N'CANHOBA', 28);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2801207, N'CANINDÉ DE SÃO FRANCISCO', 28);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2801306, N'CAPELA', 28);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2801405, N'CARIRA', 28);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2801504, N'CARMÓPOLIS', 28);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2801603, N'CEDRO DE SÃO JOÃO', 28);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2801702, N'CRISTINÁPOLIS', 28);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2801900, N'CUMBE', 28);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2802007, N'DIVINA PASTORA', 28);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2802106, N'ESTÂNCIA', 28);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2802205, N'FEIRA NOVA', 28);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2802304, N'FREI PAULO', 28);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2802403, N'GARARU', 28);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2802502, N'GENERAL MAYNARD', 28);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2802601, N'GRACHO CARDOSO', 28);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2802700, N'ILHA DAS FLORES', 28);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2802809, N'INDIAROBA', 28);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2802908, N'ITABAIANA', 28);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2803005, N'ITABAIANINHA', 28);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2803104, N'ITABI', 28);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2803203, N'ITAPORANGA D AJUDA', 28);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2803302, N'JAPARATUBA', 28);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2803401, N'JAPOATÃ', 28);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2803500, N'LAGARTO', 28);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2803609, N'LARANJEIRAS', 28);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2803708, N'MACAMBIRA', 28);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2803807, N'MALHADA DOS BOIS', 28);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2803906, N'MALHADOR', 28);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2804003, N'MARUIM', 28);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2804102, N'MOITA BONITA', 28);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2804201, N'MONTE ALEGRE DE SERGIPE', 28);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2804300, N'MURIBECA', 28);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2804409, N'NEÓPOLIS', 28);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2804458, N'NOSSA SENHORA APARECIDA', 28);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2804508, N'NOSSA SENHORA DA GLÓRIA', 28);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2804607, N'NOSSA SENHORA DAS DORES', 28);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2804706, N'NOSSA SENHORA DE LOURDES', 28);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2804805, N'NOSSA SENHORA DO SOCORRO', 28);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2804904, N'PACATUBA', 28);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2805000, N'PEDRA MOLE', 28);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2805109, N'PEDRINHAS', 28);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2805208, N'PINHÃO', 28);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2805307, N'PIRAMBU', 28);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2805406, N'POÇO REDONDO', 28);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2805505, N'POÇO VERDE', 28);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2805604, N'PORTO DA FOLHA', 28);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2805703, N'PROPRIÁ', 28);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2805802, N'RIACHÃO DO DANTAS', 28);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2805901, N'RIACHUELO', 28);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2806008, N'RIBEIRÓPOLIS', 28);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2806107, N'ROSÁRIO DO CATETE', 28);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2806206, N'SALGADO', 28);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2806305, N'SANTA LUZIA DO ITANHY', 28);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2806404, N'SANTANA DO SÃO FRANCISCO', 28);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2806503, N'SANTA ROSA DE LIMA', 28);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2806602, N'SANTO AMARO DAS BROTAS', 28);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2806701, N'SÃO CRISTÓVÃO', 28);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2806800, N'SÃO DOMINS', 28);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2806909, N'SÃO FRANCISCO', 28);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2807006, N'SÃO MIGUEL DO ALEIXO', 28);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2807105, N'SIMÃO DIAS', 28);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2807204, N'SIRIRI', 28);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2807303, N'TELHA', 28);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2807402, N'TOBIAS BARRETO', 28);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2807501, N'TOMAR DO GERU', 28);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2807600, N'UMBAÚBA', 28);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2900108, N'ABAÍRA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2900207, N'ABARÉ', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2900306, N'ACAJUTIBA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2900355, N'ADUSTINA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2900405, N'ÁGUA FRIA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2900504, N'ÉRICO CARDOSO', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2900603, N'AIQUARA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2900702, N'ALAINHAS', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2900801, N'ALCOBAÇA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2900900, N'ALMADINA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2901007, N'AMARSA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2901106, N'AMÉLIA RODRIGUES', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2901155, N'AMÉRICA DOURADA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2901205, N'ANAGÉ', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2901304, N'ANDARAÍ', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2901353, N'ANDORINHA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2901403, N'ANGICAL', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2901502, N'ANGUERA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2901601, N'ANTAS', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2901700, N'ANTÔNIO CARDOSO', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2901809, N'ANTÔNIO NÇALVES', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2901908, N'APORÁ', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2901957, N'APUAREMA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2902005, N'ARACATU', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2902054, N'ARAÇAS', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2902104, N'ARACI', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2902203, N'ARAMARI', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2902252, N'ARATACA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2902302, N'ARATUÍPE', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2902401, N'AURELINO LEAL', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2902500, N'BAIANÓPOLIS', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2902609, N'BAIXA GRANDE', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2902658, N'BANZAÊ', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2902708, N'BARRA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2902807, N'BARRA DA ESTIVA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2902906, N'BARRA DO CHOÇA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2903003, N'BARRA DO MENDES', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2903102, N'BARRA DO ROCHA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2903201, N'BARREIRAS', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2903235, N'BARRO ALTO', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2903276, N'BARROCAS', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2903300, N'BARRO PRETO', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2903409, N'BELMONTE', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2903508, N'BELO CAMPO', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2903607, N'BIRITINGA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2903706, N'BOA NOVA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2903805, N'BOA VISTA DO TUPIM', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2903904, N'BOM JESUS DA LAPA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2903953, N'BOM JESUS DA SERRA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2904001, N'BONINAL', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2904050, N'BONITO', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2904100, N'BOQUIRA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2904209, N'BOTUPORÃ', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2904308, N'BREJÕES', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2904407, N'BREJOLÂNDIA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2904506, N'BROTAS DE MACAÚBAS', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2904605, N'BRUMADO', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2904704, N'BUERAREMA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2904753, N'BURITIRAMA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2904803, N'CAATIBA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2904852, N'CABACEIRAS DO PARAGUAÇU', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2904902, N'CACHOEIRA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2905008, N'CACULÉ', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2905107, N'CAÉM', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2905156, N'CAETANOS', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2905206, N'CAETITÉ', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2905305, N'CAFARNAUM', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2905404, N'CAIRU', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2905503, N'CALDEIRÃO GRANDE', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2905602, N'CAMACAN', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2905701, N'CAMAÇARI', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2905800, N'CAMAMU', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2905909, N'CAMPO ALEGRE DE LOURDES', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2906006, N'CAMPO FORMOSO', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2906105, N'CANÁPOLIS', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2906204, N'CANARANA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2906303, N'CANAVIEIRAS', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2906402, N'CANDEAL', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2906501, N'CANDEIAS', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2906600, N'CANDIBA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2906709, N'CÂNDIDO SALES', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2906808, N'CANSANÇÃO', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2906824, N'CANUDOS', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2906857, N'CAPELA DO ALTO ALEGRE', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2906873, N'CAPIM GROSSO', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2906899, N'CARAÍBAS', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2906907, N'CARAVELAS', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2907004, N'CARDEAL DA SILVA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2907103, N'CARINHANHA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2907202, N'CASA NOVA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2907301, N'CASTRO ALVES', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2907400, N'CATOLÂNDIA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2907509, N'CATU', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2907558, N'CATURAMA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2907608, N'CENTRAL', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2907707, N'CHORROCHÓ', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2907806, N'CÍCERO DANTAS', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2907905, N'CIPÓ', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2908002, N'COARACI', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2908101, N'COCOS', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2908200, N'CONCEIÇÃO DA FEIRA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2908309, N'CONCEIÇÃO DO ALMEIDA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2908408, N'CONCEIÇÃO DO COITÉ', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2908507, N'CONCEIÇÃO DO JACUÍPE', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2908606, N'CONDE', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2908705, N'CONDEÚBA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2908804, N'CONTENDAS DO SINCORÁ', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2908903, N'CORAÇÃO DE MARIA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2909000, N'CORDEIROS', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2909109, N'CORIBE', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2909208, N'CORONEL JOÃO SÁ', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2909307, N'CORRENTINA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2909406, N'COTEGIPE', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2909505, N'CRAVOLÂNDIA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2909604, N'CRISÓPOLIS', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2909703, N'CRISTÓPOLIS', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2909802, N'CRUZ DAS ALMAS', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2909901, N'CURAÇÁ', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2910008, N'DÁRIO MEIRA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2910057, N'DIAS D ÁVILA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2910107, N'DOM BASÍLIO', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2910206, N'DOM MACEDO COSTA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2910305, N'ELÍSIO MEDRADO', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2910404, N'ENCRUZILHADA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2910503, N'ENTRE RIOS', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2910602, N'ESPLANADA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2910701, N'EUCLIDES DA CUNHA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2910727, N'EUNÁPOLIS', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2910750, N'FÁTIMA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2910776, N'FEIRA DA MATA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2910800, N'FEIRA DE SANTANA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2910859, N'FILADÉLFIA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2910909, N'FIRMINO ALVES', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2911006, N'FLORESTA AZUL', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2911105, N'FORMOSA DO RIO PRETO', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2911204, N'GANDU', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2911253, N'GAVIÃO', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2911303, N'GENTIO DO OURO', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2911402, N'GLÓRIA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2911501, N'NGI', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2911600, N'VERNADOR MANGABEIRA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2911659, N'GUAJERU', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2911709, N'GUANAMBI', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2911808, N'GUARATINGA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2911857, N'HELIÓPOLIS', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2911907, N'IAÇU', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2912004, N'IBIASSUCÊ', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2912103, N'IBICARAÍ', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2912202, N'IBICOARA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2912301, N'IBICUÍ', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2912400, N'IBIPEBA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2912509, N'IBIPITANGA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2912608, N'IBIQUERA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2912707, N'IBIRAPITANGA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2912806, N'IBIRAPUÃ', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2912905, N'IBIRATAIA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2913002, N'IBITIARA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2913101, N'IBITITÁ', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2913200, N'IBOTIRAMA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2913309, N'ICHU', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2913408, N'IGAPORÃ', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2913457, N'IGRAPIÚNA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2913507, N'IGUAÍ', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2913606, N'ILHÉUS', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2913705, N'INHAMBUPE', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2913804, N'IPECAETÁ', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2913903, N'IPIAÚ', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2914000, N'IPIRÁ', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2914109, N'IPUPIARA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2914208, N'IRAJUBA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2914307, N'IRAMAIA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2914406, N'IRAQUARA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2914505, N'IRARÁ', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2914604, N'IRECÊ', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2914653, N'ITABELA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2914703, N'ITABERABA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2914802, N'ITABUNA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2914901, N'ITACARÉ', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2915007, N'ITAETÉ', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2915106, N'ITAGI', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2915205, N'ITAGIBÁ', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2915304, N'ITAGIMIRIM', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2915353, N'ITAGUAÇU DA BAHIA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2915403, N'ITAJU DO COLÔNIA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2915502, N'ITAJUÍPE', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2915601, N'ITAMARAJU', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2915700, N'ITAMARI', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2915809, N'ITAMBÉ', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2915908, N'ITANAGRA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2916005, N'ITANHÉM', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2916104, N'ITAPARICA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2916203, N'ITAPÉ', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2916302, N'ITAPEBI', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2916401, N'ITAPETINGA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2916500, N'ITAPICURU', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2916609, N'ITAPITANGA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2916708, N'ITAQUARA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2916807, N'ITARANTIM', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2916856, N'ITATIM', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2916906, N'ITIRUÇU', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2917003, N'ITIÚBA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2917102, N'ITORORÓ', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2917201, N'ITUAÇU', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2917300, N'ITUBERÁ', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2917334, N'IUIÚ', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2917359, N'JABORANDI', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2917409, N'JACARACI', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2917508, N'JACOBINA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2917607, N'JAGUAQUARA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2917706, N'JAGUARARI', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2917805, N'JAGUARIPE', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2917904, N'JANDAÍRA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2918001, N'JEQUIÉ', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2918100, N'JEREMOABO', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2918209, N'JIQUIRIÇÁ', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2918308, N'JITAÚNA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2918357, N'JOÃO DOURADO', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2918407, N'JUAZEIRO', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2918456, N'JUCURUÇU', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2918506, N'JUSSARA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2918555, N'JUSSARI', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2918605, N'JUSSIAPE', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2918704, N'LAFAIETE COUTINHO', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2918753, N'LAA REAL', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2918803, N'LAJE', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2918902, N'LAJEDÃO', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2919009, N'LAJEDINHO', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2919058, N'LAJEDO DO TABOCAL', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2919108, N'LAMARÃO', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2919157, N'LAPÃO', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2919207, N'LAURO DE FREITAS', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2919306, N'LENÇÓIS', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2919405, N'LICÍNIO DE ALMEIDA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2919504, N'LIVRAMENTO DE NOSSA SENHORA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2919553, N'LUÍS EDUARDO MAGALHÃES', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2919603, N'MACAJUBA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2919702, N'MACARANI', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2919801, N'MACAÚBAS', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2919900, N'MACURURÉ', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2919926, N'MADRE DE DEUS', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2919959, N'MAETINGA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2920007, N'MAIQUINIQUE', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2920106, N'MAIRI', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2920205, N'MALHADA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2920304, N'MALHADA DE PEDRAS', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2920403, N'MANOEL VITORINO', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2920452, N'MANSIDÃO', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2920502, N'MARACÁS', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2920601, N'MARAGIPE', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2920700, N'MARAÚ', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2920809, N'MARCIONÍLIO SOUZA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2920908, N'MASCOTE', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2921005, N'MATA DE SÃO JOÃO', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2921054, N'MATINA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2921104, N'MEDEIROS NETO', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2921203, N'MIGUEL CALMON', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2921302, N'MILAGRES', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2921401, N'MIRANGABA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2921450, N'MIRANTE', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2921500, N'MONTE SANTO', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2921609, N'MORPARÁ', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2921708, N'MORRO DO CHAPÉU', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2921807, N'MORTUGABA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2921906, N'MUCUGÊ', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2922003, N'MUCURI', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2922052, N'MULUNGU DO MORRO', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2922102, N'MUNDO NOVO', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2922201, N'MUNIZ FERREIRA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2922250, N'MUQUÉM DE SÃO FRANCISCO', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2922300, N'MURITIBA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2922409, N'MUTUÍPE', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2922508, N'NAZARÉ', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2922607, N'NILO PEÇANHA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2922656, N'NORDESTINA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2922706, N'NOVA CANAÃ', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2922730, N'NOVA FÁTIMA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2922755, N'NOVA IBIÁ', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2922805, N'NOVA ITARANA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2922854, N'NOVA REDENÇÃO', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2922904, N'NOVA SOURE', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2923001, N'NOVA VIÇOSA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2923035, N'NOVO HORIZONTE', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2923050, N'NOVO TRIUNFO', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2923100, N'OLINDINA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2923209, N'OLIVEIRA DOS BREJINHOS', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2923308, N'OURIÇANGAS', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2923357, N'OUROLÂNDIA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2923407, N'PALMAS DE MONTE ALTO', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2923506, N'PALMEIRAS', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2923605, N'PARAMIRIM', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2923704, N'PARATINGA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2923803, N'PARIPIRANGA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2923902, N'PAU BRASIL', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2924009, N'PAULO AFONSO', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2924058, N'PÉ DE SERRA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2924108, N'PEDRÃO', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2924207, N'PEDRO ALEXANDRE', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2924306, N'PIATÃ', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2924405, N'PILÃO ARCADO', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2924504, N'PINDAÍ', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2924603, N'PINDOBAÇU', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2924652, N'PINTADAS', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2924678, N'PIRAÍ DO NORTE', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2924702, N'PIRIPÁ', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2924801, N'PIRITIBA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2924900, N'PLANALTINO', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2925006, N'PLANALTO', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2925105, N'POÇÕES', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2925204, N'POJUCA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2925253, N'PONTO NOVO', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2925303, N'PORTO SEGURO', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2925402, N'POTIRAGUÁ', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2925501, N'PRADO', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2925600, N'PRESIDENTE DUTRA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2925709, N'PRESIDENTE JÂNIO QUADROS', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2925758, N'PRESIDENTE TANCREDO NEVES', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2925808, N'QUEIMADAS', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2925907, N'QUIJINGUE', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2925931, N'QUIXABEIRA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2925956, N'RAFAEL JAMBEIRO', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2926004, N'REMANSO', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2926103, N'RETIROLÂNDIA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2926202, N'RIACHÃO DAS NEVES', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2926301, N'RIACHÃO DO JACUÍPE', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2926400, N'RIACHO DE SANTANA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2926509, N'RIBEIRA DO AMPARO', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2926608, N'RIBEIRA DO POMBAL', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2926657, N'RIBEIRÃO DO LAR', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2926707, N'RIO DE CONTAS', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2926806, N'RIO DO ANTÔNIO', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2926905, N'RIO DO PIRES', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2927002, N'RIO REAL', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2927101, N'RODELAS', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2927200, N'RUY BARBOSA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2927309, N'SALINAS DA MARGARIDA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2927408, N'SALVADOR', 26);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2927507, N'SANTA BÁRBARA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2927606, N'SANTA BRÍGIDA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2927705, N'SANTA CRUZ CABRÁLIA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2927804, N'SANTA CRUZ DA VITÓRIA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2927903, N'SANTA INÊS', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2928000, N'SANTALUZ', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2928059, N'SANTA LUZIA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2928109, N'SANTA MARIA DA VITÓRIA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2928208, N'SANTANA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2928307, N'SANTANÓPOLIS', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2928406, N'SANTA RITA DE CÁSSIA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2928505, N'SANTA TERESINHA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2928604, N'SANTO AMARO', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2928703, N'SANTO ANTÔNIO DE JESUS', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2928802, N'SANTO ESTÊVÃO', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2928901, N'SÃO DESIDÉRIO', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2928950, N'SÃO DOMINS', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2929008, N'SÃO FÉLIX', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2929057, N'SÃO FÉLIX DO CORIBE', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2929107, N'SÃO FELIPE', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2929206, N'SÃO FRANCISCO DO CONDE', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2929255, N'SÃO GABRIEL', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2929305, N'SÃO NÇALO DOS CAMPOS', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2929354, N'SÃO JOSÉ DA VITÓRIA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2929370, N'SÃO JOSÉ DO JACUÍPE', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2929404, N'SÃO MIGUEL DAS MATAS', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2929503, N'SÃO SEBASTIÃO DO PASSÉ', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2929602, N'SAPEAÇU', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2929701, N'SÁTIRO DIAS', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2929750, N'SAUBARA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2929800, N'SAÚDE', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2929909, N'SEABRA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2930006, N'SEBASTIÃO LARANJEIRAS', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2930105, N'SENHOR DO BONFIM', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2930154, N'SERRA DO RAMALHO', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2930204, N'SENTO SÉ', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2930303, N'SERRA DOURADA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2930402, N'SERRA PRETA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2930501, N'SERRINHA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2930600, N'SERROLÂNDIA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2930709, N'SIMÕES FILHO', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2930758, N'SÍTIO DO MATO', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2930766, N'SÍTIO DO QUINTO', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2930774, N'SOBRADINHO', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2930808, N'SOUTO SOARES', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2930907, N'TABOCAS DO BREJO VELHO', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2931004, N'TANHAÇU', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2931053, N'TANQUE NOVO', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2931103, N'TANQUINHO', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2931202, N'TAPEROÁ', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2931301, N'TAPIRAMUTÁ', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2931350, N'TEIXEIRA DE FREITAS', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2931400, N'TEODORO SAMPAIO', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2931509, N'TEOFILÂNDIA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2931608, N'TEOLÂNDIA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2931707, N'TERRA NOVA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2931806, N'TREMEDAL', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2931905, N'TUCANO', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2932002, N'UAUÁ', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2932101, N'UBAÍRA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2932200, N'UBAITABA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2932309, N'UBATÃ', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2932408, N'UIBAÍ', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2932457, N'UMBURANAS', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2932507, N'UNA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2932606, N'URANDI', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2932705, N'URUÇUCA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2932804, N'UTINGA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2932903, N'VALENÇA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2933000, N'VALENTE', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2933059, N'VÁRZEA DA ROÇA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2933109, N'VÁRZEA DO POÇO', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2933158, N'VÁRZEA NOVA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2933174, N'VARZEDO', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2933208, N'VERA CRUZ', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2933257, N'VEREDA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2933307, N'VITÓRIA DA CONQUISTA', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2933406, N'WAGNER', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2933455, N'WANDERLEY', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2933505, N'WENCESLAU GUIMARÃES', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (2933604, N'XIQUE-XIQUE', 29);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3100104, N'ABADIA DOS DOURADOS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3100203, N'ABAETÉ', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3100302, N'ABRE CAMPO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3100401, N'ACAIACA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3100500, N'AÇUCENA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3100609, N'ÁGUA BOA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3100708, N'ÁGUA COMPRIDA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3100807, N'AGUANIL', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3100906, N'ÁGUAS FORMOSAS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3101003, N'ÁGUAS VERMELHAS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3101102, N'AIMORÉS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3101201, N'AIURUOCA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3101300, N'ALAA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3101409, N'ALBERTINA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3101508, N'ALÉM PARAÍBA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3101607, N'ALFENAS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3101631, N'ALFREDO VASCONCELOS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3101706, N'ALMENARA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3101805, N'ALPERCATA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3101904, N'ALPINÓPOLIS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3102001, N'ALTEROSA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3102050, N'ALTO CAPARAÓ', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3102100, N'ALTO RIO DOCE', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3102209, N'ALVARENGA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3102308, N'ALVINÓPOLIS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3102407, N'ALVORADA DE MINAS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3102506, N'AMPARO DO SERRA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3102605, N'ANDRADAS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3102704, N'CACHOEIRA DE PAJEÚ', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3102803, N'ANDRELÂNDIA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3102852, N'ANGELÂNDIA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3102902, N'ANTÔNIO CARLOS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3103009, N'ANTÔNIO DIAS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3103108, N'ANTÔNIO PRADO DE MINAS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3103207, N'ARAÇAÍ', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3103306, N'ARACITABA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3103405, N'ARAÇUAÍ', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3103504, N'ARAGUARI', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3103603, N'ARANTINA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3103702, N'ARAPONGA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3103751, N'ARAPORÃ', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3103801, N'ARAPUÁ', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3103900, N'ARAÚJOS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3104007, N'ARAXÁ', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3104106, N'ARCEBUR', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3104205, N'ARCOS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3104304, N'AREADO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3104403, N'ARGIRITA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3104452, N'ARICANDUVA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3104502, N'ARINOS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3104601, N'ASTOLFO DUTRA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3104700, N'ATALÉIA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3104809, N'AUGUSTO DE LIMA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3104908, N'BAEPENDI', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3105004, N'BALDIM', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3105103, N'BAMBUÍ', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3105202, N'BANDEIRA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3105301, N'BANDEIRA DO SUL', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3105400, N'BARÃO DE COCAIS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3105509, N'BARÃO DE MONTE ALTO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3105608, N'BARBACENA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3105707, N'BARRA LONGA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3105905, N'BARROSO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3106002, N'BELA VISTA DE MINAS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3106101, N'BELMIRO BRAGA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3106200, N'BELO HORIZONTE', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3106309, N'BELO ORIENTE', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3106408, N'BELO VALE', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3106507, N'BERILO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3106606, N'BERTÓPOLIS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3106655, N'BERIZAL', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3106705, N'BETIM', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3106804, N'BIAS FORTES', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3106903, N'BICAS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3107000, N'BIQUINHAS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3107109, N'BOA ESPERANÇA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3107208, N'BOCAINA DE MINAS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3107307, N'BOCAIÚVA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3107406, N'BOM DESPACHO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3107505, N'BOM JARDIM DE MINAS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3107604, N'BOM JESUS DA PENHA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3107703, N'BOM JESUS DO AMPARO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3107802, N'BOM JESUS DO GALHO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3107901, N'BOM REPOUSO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3108008, N'BOM SUCESSO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3108107, N'BONFIM', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3108206, N'BONFINÓPOLIS DE MINAS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3108255, N'BONITO DE MINAS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3108305, N'BORDA DA MATA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3108404, N'BOTELHOS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3108503, N'BOTUMIRIM', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3108552, N'BRASILÂNDIA DE MINAS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3108602, N'BRASÍLIA DE MINAS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3108701, N'BRÁS PIRES', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3108800, N'BRAÚNAS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3108909, N'BRASÓPOLIS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3109006, N'BRUMADINHO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3109105, N'BUENO BRANDÃO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3109204, N'BUENÓPOLIS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3109253, N'BUGRE', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3109303, N'BURITIS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3109402, N'BURITIZEIRO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3109451, N'CABECEIRA GRANDE', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3109501, N'CABO VERDE', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3109600, N'CACHOEIRA DA PRATA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3109709, N'CACHOEIRA DE MINAS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3109808, N'CACHOEIRA DOURADA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3109907, N'CAETANÓPOLIS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3110004, N'CAETÉ', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3110103, N'CAIANA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3110202, N'CAJURI', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3110301, N'CALDAS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3110400, N'CAMACHO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3110509, N'CAMANDUCAIA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3110608, N'CAMBUÍ', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3110707, N'CAMBUQUIRA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3110806, N'CAMPANÁRIO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3110905, N'CAMPANHA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3111002, N'CAMPESTRE', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3111101, N'CAMPINA VERDE', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3111150, N'CAMPO AZUL', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3111200, N'CAMPO BELO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3111309, N'CAMPO DO MEIO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3111408, N'CAMPO FLORIDO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3111507, N'CAMPOS ALTOS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3111606, N'CAMPOS GERAIS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3111705, N'CANAÃ', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3111804, N'CANÁPOLIS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3111903, N'CANA VERDE', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3112000, N'CANDEIAS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3112059, N'CANTAGALO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3112109, N'CAPARAÓ', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3112208, N'CAPELA NOVA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3112307, N'CAPELINHA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3112406, N'CAPETINGA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3112505, N'CAPIM BRANCO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3112604, N'CAPINÓPOLIS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3112653, N'CAPITÃO ANDRADE', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3112703, N'CAPITÃO ENÉAS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3112802, N'CAPITÓLIO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3112901, N'CAPUTIRA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3113008, N'CARAÍ', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3113107, N'CARANAÍBA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3113206, N'CARANDAÍ', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3113305, N'CARANLA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3113404, N'CARATINGA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3113503, N'CARBONITA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3113602, N'CAREAÇU', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3113701, N'CARLOS CHAGAS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3113800, N'CARMÉSIA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3113909, N'CARMO DA CACHOEIRA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3114006, N'CARMO DA MATA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3114105, N'CARMO DE MINAS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3114204, N'CARMO DO CAJURU', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3114303, N'CARMO DO PARANAÍBA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3114402, N'CARMO DO RIO CLARO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3114501, N'CARMÓPOLIS DE MINAS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3114550, N'CARNEIRINHO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3114600, N'CARRANCAS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3114709, N'CARVALHÓPOLIS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3114808, N'CARVALHOS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3114907, N'CASA GRANDE', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3115003, N'CASCALHO RICO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3115102, N'CÁSSIA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3115201, N'CONCEIÇÃO DA BARRA DE MINAS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3115300, N'CATAGUASES', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3115359, N'CATAS ALTAS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3115409, N'CATAS ALTAS DA NORUEGA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3115458, N'CATUJI', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3115474, N'CATUTI', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3115508, N'CAXAMBU', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3115607, N'CEDRO DO ABAETÉ', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3115706, N'CENTRAL DE MINAS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3115805, N'CENTRALINA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3115904, N'CHÁCARA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3116001, N'CHALÉ', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3116100, N'CHAPADA DO NORTE', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3116159, N'CHAPADA GAÚCHA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3116209, N'CHIADOR', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3116308, N'CIPOTÂNEA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3116407, N'CLARAVAL', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3116506, N'CLARO DOS POÇÕES', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3116605, N'CLÁUDIO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3116704, N'COIMBRA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3116803, N'COLUNA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3116902, N'COMENDADOR MES', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3117009, N'COMERCINHO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3117108, N'CONCEIÇÃO DA APARECIDA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3117207, N'CONCEIÇÃO DAS PEDRAS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3117306, N'CONCEIÇÃO DAS ALAAS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3117405, N'CONCEIÇÃO DE IPANEMA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3117504, N'CONCEIÇÃO DO MATO DENTRO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3117603, N'CONCEIÇÃO DO PARÁ', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3117702, N'CONCEIÇÃO DO RIO VERDE', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3117801, N'CONCEIÇÃO DOS OUROS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3117836, N'CÔNE MARINHO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3117876, N'CONFINS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3117900, N'CONNHAL', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3118007, N'CONNHAS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3118106, N'CONNHAS DO NORTE', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3118205, N'CONQUISTA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3118304, N'CONSELHEIRO LAFAIETE', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3118403, N'CONSELHEIRO PENA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3118502, N'CONSOLAÇÃO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3118601, N'CONTAGEM', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3118700, N'COQUEIRAL', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3118809, N'CORAÇÃO DE JESUS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3118908, N'CORDISBUR', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3119005, N'CORDISLÂNDIA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3119104, N'CORINTO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3119203, N'COROACI', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3119302, N'COROMANDEL', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3119401, N'CORONEL FABRICIANO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3119500, N'CORONEL MURTA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3119609, N'CORONEL PACHECO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3119708, N'CORONEL XAVIER CHAVES', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3119807, N'CÓRRE DANTA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3119906, N'CÓRRE DO BOM JESUS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3119955, N'CÓRRE FUNDO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3120003, N'CÓRRE NOVO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3120102, N'COUTO DE MAGALHÃES DE MINAS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3120151, N'CRISÓLITA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3120201, N'CRISTAIS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3120300, N'CRISTÁLIA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3120409, N'CRISTIANO OTONI', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3120508, N'CRISTINA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3120607, N'CRUCILÂNDIA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3120706, N'CRUZEIRO DA FORTALEZA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3120805, N'CRUZÍLIA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3120839, N'CUPARAQUE', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3120870, N'CURRAL DE DENTRO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3120904, N'CURVELO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3121001, N'DATAS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3121100, N'DELFIM MOREIRA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3121209, N'DELFINÓPOLIS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3121258, N'DELTA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3121308, N'DESCOBERTO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3121407, N'DESTERRO DE ENTRE RIOS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3121506, N'DESTERRO DO MELO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3121605, N'DIAMANTINA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3121704, N'DIO DE VASCONCELOS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3121803, N'DIONÍSIO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3121902, N'DIVINÉSIA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3122009, N'DIVINO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3122108, N'DIVINO DAS LARANJEIRAS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3122207, N'DIVINOLÂNDIA DE MINAS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3122306, N'DIVINÓPOLIS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3122355, N'DIVISA ALEGRE', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3122405, N'DIVISA NOVA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3122454, N'DIVISÓPOLIS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3122470, N'DOM BOSCO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3122504, N'DOM CAVATI', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3122603, N'DOM JOAQUIM', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3122702, N'DOM SILVÉRIO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3122801, N'DOM VIÇOSO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3122900, N'DONA EUSÉBIA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3123007, N'DORES DE CAMPOS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3123106, N'DORES DE GUANHÃES', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3123205, N'DORES DO INDAIÁ', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3123304, N'DORES DO TURVO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3123403, N'DORESÓPOLIS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3123502, N'DOURADOQUARA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3123528, N'DURANDÉ', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3123601, N'ELÓI MENDES', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3123700, N'ENGENHEIRO CALDAS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3123809, N'ENGENHEIRO NAVARRO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3123858, N'ENTRE FOLHAS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3123908, N'ENTRE RIOS DE MINAS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3124005, N'ERVÁLIA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3124104, N'ESMERALDAS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3124203, N'ESPERA FELIZ', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3124302, N'ESPINOSA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3124401, N'ESPÍRITO SANTO DO DOURADO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3124500, N'ESTIVA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3124609, N'ESTRELA DALVA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3124708, N'ESTRELA DO INDAIÁ', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3124807, N'ESTRELA DO SUL', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3124906, N'EUGENÓPOLIS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3125002, N'EWBANK DA CÂMARA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3125101, N'EXTREMA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3125200, N'FAMA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3125309, N'FARIA LEMOS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3125408, N'FELÍCIO DOS SANTOS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3125507, N'SÃO NÇALO DO RIO PRETO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3125606, N'FELISBUR', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3125705, N'FELIXLÂNDIA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3125804, N'FERNANDES TOURINHO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3125903, N'FERROS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3125952, N'FERVEDOURO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3126000, N'FLORESTAL', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3126109, N'FORMIGA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3126208, N'FORMOSO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3126307, N'FORTALEZA DE MINAS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3126406, N'FORTUNA DE MINAS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3126505, N'FRANCISCO BADARÓ', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3126604, N'FRANCISCO DUMONT', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3126703, N'FRANCISCO SÁ', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3126752, N'FRANCISCÓPOLIS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3126802, N'FREI GASPAR', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3126901, N'FREI INOCÊNCIO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3126950, N'FREI LANEGRO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3127008, N'FRONTEIRA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3127057, N'FRONTEIRA DOS VALES', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3127073, N'FRUTA DE LEITE', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3127107, N'FRUTAL', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3127206, N'FUNILÂNDIA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3127305, N'GALILÉIA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3127339, N'GAMELEIRAS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3127354, N'GLAUCILÂNDIA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3127370, N'IABEIRA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3127388, N'IANÁ', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3127404, N'NÇALVES', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3127503, N'NZAGA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3127602, N'UVEIA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3127701, N'VERNADOR VALADARES', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3127800, N'GRÃO MOL', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3127909, N'GRUPIARA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3128006, N'GUANHÃES', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3128105, N'GUAPÉ', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3128204, N'GUARACIABA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3128253, N'GUARACIAMA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3128303, N'GUARANÉSIA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3128402, N'GUARANI', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3128501, N'GUARARÁ', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3128600, N'GUARDA-MOR', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3128709, N'GUAXUPÉ', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3128808, N'GUIDOVAL', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3128907, N'GUIMARÂNIA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3129004, N'GUIRICEMA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3129103, N'GURINHATÃ', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3129202, N'HELIODORA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3129301, N'IAPU', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3129400, N'IBERTIOGA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3129509, N'IBIÁ', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3129608, N'IBIAÍ', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3129657, N'IBIRACATU', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3129707, N'IBIRACI', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3129806, N'IBIRITÉ', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3129905, N'IBITIÚRA DE MINAS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3130002, N'IBITURUNA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3130051, N'ICARAÍ DE MINAS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3130101, N'IGARAPÉ', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3130200, N'IGARATINGA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3130309, N'IGUATAMA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3130408, N'IJACI', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3130507, N'ILICÍNEA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3130556, N'IMBÉ DE MINAS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3130606, N'INCONFIDENTES', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3130655, N'INDAIABIRA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3130705, N'INDIANÓPOLIS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3130804, N'INGAÍ', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3130903, N'INHAPIM', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3131000, N'INHAÚMA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3131109, N'INIMUTABA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3131158, N'IPABA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3131208, N'IPANEMA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3131307, N'IPATINGA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3131406, N'IPIAÇU', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3131505, N'IPUIÚNA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3131604, N'IRAÍ DE MINAS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3131703, N'ITABIRA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3131802, N'ITABIRINHA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3131901, N'ITABIRITO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3132008, N'ITACAMBIRA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3132107, N'ITACARAMBI', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3132206, N'ITAGUARA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3132305, N'ITAIPÉ', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3132404, N'ITAJUBÁ', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3132503, N'ITAMARANDIBA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3132602, N'ITAMARATI DE MINAS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3132701, N'ITAMBACURI', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3132800, N'ITAMBÉ DO MATO DENTRO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3132909, N'ITAMOGI', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3133006, N'ITAMONTE', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3133105, N'ITANHANDU', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3133204, N'ITANHOMI', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3133303, N'ITAOBIM', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3133402, N'ITAPAGIPE', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3133501, N'ITAPECERICA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3133600, N'ITAPEVA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3133709, N'ITATIAIUÇU', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3133758, N'ITAÚ DE MINAS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3133808, N'ITAÚNA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3133907, N'ITAVERAVA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3134004, N'ITINGA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3134103, N'ITUETA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3134202, N'ITUIUTABA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3134301, N'ITUMIRIM', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3134400, N'ITURAMA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3134509, N'ITUTINGA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3134608, N'JABOTICATUBAS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3134707, N'JACINTO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3134806, N'JACUÍ', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3134905, N'JACUTINGA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3135001, N'JAGUARAÇU', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3135050, N'JAÍBA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3135076, N'JAMPRUCA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3135100, N'JANAÚBA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3135209, N'JANUÁRIA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3135308, N'JAPARAÍBA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3135357, N'JAPONVAR', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3135407, N'JECEABA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3135456, N'JENIPAPO DE MINAS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3135506, N'JEQUERI', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3135605, N'JEQUITAÍ', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3135704, N'JEQUITIBÁ', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3135803, N'JEQUITINHONHA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3135902, N'JESUÂNIA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3136009, N'JOAÍMA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3136108, N'JOANÉSIA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3136207, N'JOÃO MONLEVADE', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3136306, N'JOÃO PINHEIRO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3136405, N'JOAQUIM FELÍCIO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3136504, N'JORDÂNIA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3136520, N'JOSÉ NÇALVES DE MINAS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3136553, N'JOSÉ RAYDAN', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3136579, N'JOSENÓPOLIS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3136603, N'NOVA UNIÃO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3136652, N'JUATUBA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3136702, N'JUIZ DE FORA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3136801, N'JURAMENTO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3136900, N'JURUAIA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3136959, N'JUVENÍLIA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3137007, N'LADAINHA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3137106, N'LAGAMAR', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3137205, N'LAA DA PRATA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3137304, N'LAA DOS PATOS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3137403, N'LAA DOURADA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3137502, N'LAA FORMOSA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3137536, N'LAA GRANDE', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3137601, N'LAA SANTA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3137700, N'LAJINHA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3137809, N'LAMBARI', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3137908, N'LAMIM', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3138005, N'LARANJAL', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3138104, N'LASSANCE', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3138203, N'LAVRAS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3138302, N'LEANDRO FERREIRA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3138351, N'LEME DO PRADO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3138401, N'LEOPOLDINA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3138500, N'LIBERDADE', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3138609, N'LIMA DUARTE', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3138625, N'LIMEIRA DO OESTE', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3138658, N'LONTRA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3138674, N'LUISBUR', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3138682, N'LUISLÂNDIA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3138708, N'LUMINÁRIAS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3138807, N'LUZ', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3138906, N'MACHACALIS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3139003, N'MACHADO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3139102, N'MADRE DE DEUS DE MINAS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3139201, N'MALACACHETA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3139250, N'MAMONAS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3139300, N'MANGA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3139409, N'MANHUAÇU', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3139508, N'MANHUMIRIM', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3139607, N'MANTENA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3139706, N'MARAVILHAS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3139805, N'MAR DE ESPANHA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3139904, N'MARIA DA FÉ', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3140001, N'MARIANA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3140100, N'MARILAC', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3140159, N'MÁRIO CAMPOS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3140209, N'MARIPÁ DE MINAS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3140308, N'MARLIÉRIA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3140407, N'MARMELÓPOLIS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3140506, N'MARTINHO CAMPOS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3140530, N'MARTINS SOARES', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3140555, N'MATA VERDE', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3140605, N'MATERLÂNDIA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3140704, N'MATEUS LEME', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3140803, N'MATIAS BARBOSA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3140852, N'MATIAS CARDOSO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3140902, N'MATIPÓ', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3141009, N'MATO VERDE', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3141108, N'MATOZINHOS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3141207, N'MATUTINA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3141306, N'MEDEIROS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3141405, N'MEDINA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3141504, N'MENDES PIMENTEL', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3141603, N'MERCÊS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3141702, N'MESQUITA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3141801, N'MINAS NOVAS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3141900, N'MINDURI', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3142007, N'MIRABELA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3142106, N'MIRADOURO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3142205, N'MIRAÍ', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3142254, N'MIRAVÂNIA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3142304, N'MOEDA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3142403, N'MOEMA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3142502, N'MONJOLOS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3142601, N'MONSENHOR PAULO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3142700, N'MONTALVÂNIA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3142809, N'MONTE ALEGRE DE MINAS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3142908, N'MONTE AZUL', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3143005, N'MONTE BELO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3143104, N'MONTE CARMELO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3143153, N'MONTE FORMOSO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3143203, N'MONTE SANTO DE MINAS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3143302, N'MONTES CLAROS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3143401, N'MONTE SIÃO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3143450, N'MONTEZUMA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3143500, N'MORADA NOVA DE MINAS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3143609, N'MORRO DA GARÇA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3143708, N'MORRO DO PILAR', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3143807, N'MUNHOZ', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3143906, N'MURIAÉ', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3144003, N'MUTUM', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3144102, N'MUZAMBINHO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3144201, N'NACIP RAYDAN', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3144300, N'NANUQUE', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3144359, N'NAQUE', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3144375, N'NATALÂNDIA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3144409, N'NATÉRCIA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3144508, N'NAZARENO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3144607, N'NEPOMUCENO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3144656, N'NINHEIRA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3144672, N'NOVA BELÉM', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3144706, N'NOVA ERA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3144805, N'NOVA LIMA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3144904, N'NOVA MÓDICA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3145000, N'NOVA PONTE', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3145059, N'NOVA PORTEIRINHA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3145109, N'NOVA RESENDE', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3145208, N'NOVA SERRANA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3145307, N'NOVO CRUZEIRO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3145356, N'NOVO ORIENTE DE MINAS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3145372, N'NOVORIZONTE', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3145406, N'OLARIA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3145455, N'OLHOS-D ÁGUA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3145505, N'OLÍMPIO NORONHA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3145604, N'OLIVEIRA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3145703, N'OLIVEIRA FORTES', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3145802, N'ONÇA DE PITANGUI', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3145851, N'ORATÓRIOS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3145877, N'ORIZÂNIA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3145901, N'OURO BRANCO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3146008, N'OURO FINO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3146107, N'OURO PRETO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3146206, N'OURO VERDE DE MINAS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3146255, N'PADRE CARVALHO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3146305, N'PADRE PARAÍSO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3146404, N'PAINEIRAS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3146503, N'PAINS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3146552, N'PAI PEDRO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3146602, N'PAIVA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3146701, N'PALMA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3146750, N'PALMÓPOLIS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3146909, N'PAPAGAIOS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3147006, N'PARACATU', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3147105, N'PARÁ DE MINAS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3147204, N'PARAGUAÇU', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3147303, N'PARAISÓPOLIS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3147402, N'PARAOPEBA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3147501, N'PASSABÉM', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3147600, N'PASSA QUATRO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3147709, N'PASSA TEMPO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3147808, N'PASSA-VINTE', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3147907, N'PASSOS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3147956, N'PATIS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3148004, N'PATOS DE MINAS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3148103, N'PATROCÍNIO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3148202, N'PATROCÍNIO DO MURIAÉ', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3148301, N'PAULA CÂNDIDO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3148400, N'PAULISTAS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3148509, N'PAVÃO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3148608, N'PEÇANHA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3148707, N'PEDRA AZUL', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3148756, N'PEDRA BONITA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3148806, N'PEDRA DO ANTA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3148905, N'PEDRA DO INDAIÁ', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3149002, N'PEDRA DOURADA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3149101, N'PEDRALVA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3149150, N'PEDRAS DE MARIA DA CRUZ', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3149200, N'PEDRINÓPOLIS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3149309, N'PEDRO LEOPOLDO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3149408, N'PEDRO TEIXEIRA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3149507, N'PEQUERI', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3149606, N'PEQUI', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3149705, N'PERDIGÃO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3149804, N'PERDIZES', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3149903, N'PERDÕES', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3149952, N'PERIQUITO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3150000, N'PESCADOR', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3150109, N'PIAU', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3150158, N'PIEDADE DE CARATINGA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3150208, N'PIEDADE DE PONTE NOVA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3150307, N'PIEDADE DO RIO GRANDE', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3150406, N'PIEDADE DOS GERAIS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3150505, N'PIMENTA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3150539, N'PIN-D ÁGUA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3150570, N'PINTÓPOLIS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3150604, N'PIRACEMA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3150703, N'PIRAJUBA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3150802, N'PIRANGA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3150901, N'PIRANGUÇU', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3151008, N'PIRANGUINHO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3151107, N'PIRAPETINGA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3151206, N'PIRAPORA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3151305, N'PIRAÚBA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3151404, N'PITANGUI', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3151503, N'PIUMHI', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3151602, N'PLANURA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3151701, N'POÇO FUNDO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3151800, N'POÇOS DE CALDAS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3151909, N'POCRANE', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3152006, N'POMPÉU', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3152105, N'PONTE NOVA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3152131, N'PONTO CHIQUE', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3152170, N'PONTO DOS VOLANTES', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3152204, N'PORTEIRINHA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3152303, N'PORTO FIRME', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3152402, N'POTÉ', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3152501, N'POUSO ALEGRE', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3152600, N'POUSO ALTO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3152709, N'PRADOS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3152808, N'PRATA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3152907, N'PRATÁPOLIS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3153004, N'PRATINHA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3153103, N'PRESIDENTE BERNARDES', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3153202, N'PRESIDENTE JUSCELINO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3153301, N'PRESIDENTE KUBITSCHEK', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3153400, N'PRESIDENTE OLEGÁRIO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3153608, N'PRUDENTE DE MORAIS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3153707, N'QUARTEL GERAL', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3153806, N'QUELUZITO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3153905, N'RAPOSOS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3154002, N'RAUL SOARES', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3154101, N'RECREIO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3154150, N'REDUTO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3154200, N'RESENDE COSTA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3154309, N'RESPLENDOR', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3154408, N'RESSAQUINHA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3154457, N'RIACHINHO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3154507, N'RIACHO DOS MACHADOS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3154606, N'RIBEIRÃO DAS NEVES', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3154705, N'RIBEIRÃO VERMELHO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3154804, N'RIO ACIMA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3154903, N'RIO CASCA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3155009, N'RIO DOCE', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3155108, N'RIO DO PRADO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3155207, N'RIO ESPERA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3155306, N'RIO MANSO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3155405, N'RIO NOVO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3155504, N'RIO PARANAÍBA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3155603, N'RIO PARDO DE MINAS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3155702, N'RIO PIRACICABA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3155801, N'RIO POMBA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3155900, N'RIO PRETO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3156007, N'RIO VERMELHO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3156106, N'RITÁPOLIS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3156205, N'ROCHEDO DE MINAS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3156304, N'RODEIRO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3156403, N'ROMARIA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3156452, N'ROSÁRIO DA LIMEIRA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3156502, N'RUBELITA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3156601, N'RUBIM', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3156700, N'SABARÁ', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3156809, N'SABINÓPOLIS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3156908, N'SACRAMENTO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3157005, N'SALINAS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3157104, N'SALTO DA DIVISA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3157203, N'SANTA BÁRBARA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3157252, N'SANTA BÁRBARA DO LESTE', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3157278, N'SANTA BÁRBARA DO MONTE VERDE', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3157302, N'SANTA BÁRBARA DO TUGÚRIO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3157336, N'SANTA CRUZ DE MINAS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3157377, N'SANTA CRUZ DE SALINAS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3157401, N'SANTA CRUZ DO ESCALVADO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3157500, N'SANTA EFIGÊNIA DE MINAS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3157609, N'SANTA FÉ DE MINAS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3157658, N'SANTA HELENA DE MINAS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3157708, N'SANTA JULIANA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3157807, N'SANTA LUZIA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3157906, N'SANTA MARGARIDA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3158003, N'SANTA MARIA DE ITABIRA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3158102, N'SANTA MARIA DO SALTO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3158201, N'SANTA MARIA DO SUAÇUÍ', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3158300, N'SANTANA DA VARGEM', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3158409, N'SANTANA DE CATAGUASES', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3158508, N'SANTANA DE PIRAPAMA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3158607, N'SANTANA DO DESERTO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3158706, N'SANTANA DO GARAMBÉU', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3158805, N'SANTANA DO JACARÉ', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3158904, N'SANTANA DO MANHUAÇU', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3158953, N'SANTANA DO PARAÍSO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3159001, N'SANTANA DO RIACHO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3159100, N'SANTANA DOS MONTES', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3159209, N'SANTA RITA DE CALDAS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3159308, N'SANTA RITA DE JACUTINGA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3159357, N'SANTA RITA DE MINAS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3159407, N'SANTA RITA DE IBITIPOCA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3159506, N'SANTA RITA DO ITUETO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3159605, N'SANTA RITA DO SAPUCAÍ', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3159704, N'SANTA ROSA DA SERRA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3159803, N'SANTA VITÓRIA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3159902, N'SANTO ANTÔNIO DO AMPARO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3160009, N'SANTO ANTÔNIO DO AVENTUREIRO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3160108, N'SANTO ANTÔNIO DO GRAMA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3160207, N'SANTO ANTÔNIO DO ITAMBÉ', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3160306, N'SANTO ANTÔNIO DO JACINTO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3160405, N'SANTO ANTÔNIO DO MONTE', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3160454, N'SANTO ANTÔNIO DO RETIRO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3160504, N'SANTO ANTÔNIO DO RIO ABAIXO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3160603, N'SANTO HIPÓLITO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3160702, N'SANTOS DUMONT', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3160801, N'SÃO BENTO ABADE', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3160900, N'SÃO BRÁS DO SUAÇUÍ', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3160959, N'SÃO DOMINS DAS DORES', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3161007, N'SÃO DOMINS DO PRATA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3161056, N'SÃO FÉLIX DE MINAS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3161106, N'SÃO FRANCISCO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3161205, N'SÃO FRANCISCO DE PAULA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3161304, N'SÃO FRANCISCO DE SALES', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3161403, N'SÃO FRANCISCO DO GLÓRIA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3161502, N'SÃO GERALDO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3161601, N'SÃO GERALDO DA PIEDADE', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3161650, N'SÃO GERALDO DO BAIXIO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3161700, N'SÃO NÇALO DO ABAETÉ', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3161809, N'SÃO NÇALO DO PARÁ', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3161908, N'SÃO NÇALO DO RIO ABAIXO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3162005, N'SÃO NÇALO DO SAPUCAÍ', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3162104, N'SÃO TARDO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3162203, N'SÃO JOÃO BATISTA DO GLÓRIA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3162252, N'SÃO JOÃO DA LAA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3162302, N'SÃO JOÃO DA MATA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3162401, N'SÃO JOÃO DA PONTE', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3162450, N'SÃO JOÃO DAS MISSÕES', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3162500, N'SÃO JOÃO DEL REI', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3162559, N'SÃO JOÃO DO MANHUAÇU', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3162575, N'SÃO JOÃO DO MANTENINHA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3162609, N'SÃO JOÃO DO ORIENTE', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3162658, N'SÃO JOÃO DO PACUÍ', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3162708, N'SÃO JOÃO DO PARAÍSO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3162807, N'SÃO JOÃO EVANGELISTA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3162906, N'SÃO JOÃO NEPOMUCENO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3162922, N'SÃO JOAQUIM DE BICAS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3162948, N'SÃO JOSÉ DA BARRA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3162955, N'SÃO JOSÉ DA LAPA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3163003, N'SÃO JOSÉ DA SAFIRA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3163102, N'SÃO JOSÉ DA VARGINHA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3163201, N'SÃO JOSÉ DO ALEGRE', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3163300, N'SÃO JOSÉ DO DIVINO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3163409, N'SÃO JOSÉ DO IABAL', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3163508, N'SÃO JOSÉ DO JACURI', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3163607, N'SÃO JOSÉ DO MANTIMENTO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3163706, N'SÃO LOURENÇO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3163805, N'SÃO MIGUEL DO ANTA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3163904, N'SÃO PEDRO DA UNIÃO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3164001, N'SÃO PEDRO DOS FERROS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3164100, N'SÃO PEDRO DO SUAÇUÍ', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3164209, N'SÃO ROMÃO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3164308, N'SÃO ROQUE DE MINAS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3164407, N'SÃO SEBASTIÃO DA BELA VISTA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3164431, N'SÃO SEBASTIÃO DA VARGEM ALEGRE', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3164472, N'SÃO SEBASTIÃO DO ANTA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3164506, N'SÃO SEBASTIÃO DO MARANHÃO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3164605, N'SÃO SEBASTIÃO DO OESTE', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3164704, N'SÃO SEBASTIÃO DO PARAÍSO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3164803, N'SÃO SEBASTIÃO DO RIO PRETO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3164902, N'SÃO SEBASTIÃO DO RIO VERDE', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3165008, N'SÃO TIA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3165107, N'SÃO TOMÁS DE AQUINO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3165206, N'SÃO THOMÉ DAS LETRAS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3165305, N'SÃO VICENTE DE MINAS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3165404, N'SAPUCAÍ-MIRIM', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3165503, N'SARDOÁ', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3165537, N'SARZEDO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3165552, N'SETUBINHA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3165560, N'SEM-PEIXE', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3165578, N'SENADOR AMARAL', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3165602, N'SENADOR CORTES', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3165701, N'SENADOR FIRMINO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3165800, N'SENADOR JOSÉ BENTO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3165909, N'SENADOR MODESTINO NÇALVES', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3166006, N'SENHORA DE OLIVEIRA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3166105, N'SENHORA DO PORTO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3166204, N'SENHORA DOS REMÉDIOS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3166303, N'SERICITA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3166402, N'SERITINGA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3166501, N'SERRA AZUL DE MINAS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3166600, N'SERRA DA SAUDADE', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3166709, N'SERRA DOS AIMORÉS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3166808, N'SERRA DO SALITRE', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3166907, N'SERRANIA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3166956, N'SERRANÓPOLIS DE MINAS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3167004, N'SERRANOS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3167103, N'SERRO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3167202, N'SETE LAAS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3167301, N'SILVEIRÂNIA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3167400, N'SILVIANÓPOLIS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3167509, N'SIMÃO PEREIRA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3167608, N'SIMONÉSIA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3167707, N'SOBRÁLIA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3167806, N'SOLEDADE DE MINAS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3167905, N'TABULEIRO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3168002, N'TAIOBEIRAS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3168051, N'TAPARUBA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3168101, N'TAPIRA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3168200, N'TAPIRAÍ', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3168309, N'TAQUARAÇU DE MINAS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3168408, N'TARUMIRIM', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3168507, N'TEIXEIRAS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3168606, N'TEÓFILO OTONI', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3168705, N'TIMÓTEO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3168804, N'TIRADENTES', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3168903, N'TIROS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3169000, N'TOCANTINS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3169059, N'TOCOS DO MOJI', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3169109, N'TOLEDO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3169208, N'TOMBOS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3169307, N'TRÊS CORAÇÕES', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3169356, N'TRÊS MARIAS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3169406, N'TRÊS PONTAS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3169505, N'TUMIRITINGA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3169604, N'TUPACIGUARA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3169703, N'TURMALINA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3169802, N'TURVOLÂNDIA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3169901, N'UBÁ', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3170008, N'UBAÍ', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3170057, N'UBAPORANGA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3170107, N'UBERABA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3170206, N'UBERLÂNDIA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3170305, N'UMBURATIBA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3170404, N'UNAÍ', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3170438, N'UNIÃO DE MINAS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3170479, N'URUANA DE MINAS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3170503, N'URUCÂNIA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3170529, N'URUCUIA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3170578, N'VARGEM ALEGRE', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3170602, N'VARGEM BONITA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3170651, N'VARGEM GRANDE DO RIO PARDO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3170701, N'VARGINHA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3170750, N'VARJÃO DE MINAS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3170800, N'VÁRZEA DA PALMA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3170909, N'VARZELÂNDIA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3171006, N'VAZANTE', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3171030, N'VERDELÂNDIA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3171071, N'VEREDINHA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3171105, N'VERÍSSIMO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3171154, N'VERMELHO NOVO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3171204, N'VESPASIANO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3171303, N'VIÇOSA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3171402, N'VIEIRAS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3171501, N'MATHIAS LOBATO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3171600, N'VIRGEM DA LAPA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3171709, N'VIRGÍNIA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3171808, N'VIRGINÓPOLIS', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3171907, N'VIRLÂNDIA', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3172004, N'VISCONDE DO RIO BRANCO', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3172103, N'VOLTA GRANDE', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3172202, N'WENCESLAU BRAZ', 31);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3200102, N'AFONSO CLÁUDIO', 32);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3200136, N'ÁGUIA BRANCA', 32);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3200169, N'ÁGUA DOCE DO NORTE', 32);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3200201, N'ALEGRE', 32);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3200300, N'ALFREDO CHAVES', 32);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3200359, N'ALTO RIO NOVO', 32);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3200409, N'ANCHIETA', 32);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3200508, N'APIACÁ', 32);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3200607, N'ARACRUZ', 32);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3200706, N'ATILIO VIVACQUA', 32);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3200805, N'BAIXO GUANDU', 32);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3200904, N'BARRA DE SÃO FRANCISCO', 32);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3201001, N'BOA ESPERANÇA', 32);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3201100, N'BOM JESUS DO NORTE', 32);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3201159, N'BREJETUBA', 32);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3201209, N'CACHOEIRO DE ITAPEMIRIM', 32);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3201308, N'CARIACICA', 32);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3201407, N'CASTELO', 32);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3201506, N'COLATINA', 32);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3201605, N'CONCEIÇÃO DA BARRA', 32);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3201704, N'CONCEIÇÃO DO CASTELO', 32);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3201803, N'DIVINO DE SÃO LOURENÇO', 32);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3201902, N'DOMINS MARTINS', 32);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3202009, N'DORES DO RIO PRETO', 32);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3202108, N'ECOPORANGA', 32);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3202207, N'FUNDÃO', 32);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3202256, N'VERNADOR LINDENBERG', 32);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3202306, N'GUAÇUÍ', 32);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3202405, N'GUARAPARI', 32);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3202454, N'IBATIBA', 32);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3202504, N'IBIRAÇU', 32);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3202553, N'IBITIRAMA', 32);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3202603, N'ICONHA', 32);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3202652, N'IRUPI', 32);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3202702, N'ITAGUAÇU', 32);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3202801, N'ITAPEMIRIM', 32);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3202900, N'ITARANA', 32);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3203007, N'IÚNA', 32);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3203056, N'JAGUARÉ', 32);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3203106, N'JERÔNIMO MONTEIRO', 32);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3203130, N'JOÃO NEIVA', 32);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3203163, N'LARANJA DA TERRA', 32);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3203205, N'LINHARES', 32);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3203304, N'MANTENÓPOLIS', 32);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3203320, N'MARATAÍZES', 32);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3203346, N'MARECHAL FLORIANO', 32);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3203353, N'MARILÂNDIA', 32);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3203403, N'MIMOSO DO SUL', 32);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3203502, N'MONTANHA', 32);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3203601, N'MUCURICI', 32);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3203700, N'MUNIZ FREIRE', 32);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3203809, N'MUQUI', 32);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3203908, N'NOVA VENÉCIA', 32);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3204005, N'PANCAS', 32);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3204054, N'PEDRO CANÁRIO', 32);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3204104, N'PINHEIROS', 32);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3204203, N'PIÚMA', 32);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3204252, N'PONTO BELO', 32);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3204302, N'PRESIDENTE KENNEDY', 32);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3204351, N'RIO BANANAL', 32);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3204401, N'RIO NOVO DO SUL', 32);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3204500, N'SANTA LEOPOLDINA', 32);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3204559, N'SANTA MARIA DE JETIBÁ', 32);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3204609, N'SANTA TERESA', 32);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3204658, N'SÃO DOMINS DO NORTE', 32);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3204708, N'SÃO GABRIEL DA PALHA', 32);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3204807, N'SÃO JOSÉ DO CALÇADO', 32);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3204906, N'SÃO MATEUS', 32);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3204955, N'SÃO ROQUE DO CANAÃ', 32);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3205002, N'SERRA', 32);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3205010, N'SOORETAMA', 32);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3205036, N'VARGEM ALTA', 32);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3205069, N'VENDA NOVA DO IMIGRANTE', 32);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3205101, N'VIANA', 32);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3205150, N'VILA PAVÃO', 32);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3205176, N'VILA VALÉRIO', 32);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3205200, N'VILA VELHA', 32);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3205309, N'VITÓRIA', 32);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3300100, N'ANGRA DOS REIS', 33);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3300159, N'APERIBÉ', 33);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3300209, N'ARARUAMA', 33);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3300225, N'AREAL', 33);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3300233, N'ARMAÇÃO DOS BÚZIOS', 33);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3300258, N'ARRAIAL DO CABO', 33);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3300308, N'BARRA DO PIRAÍ', 33);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3300407, N'BARRA MANSA', 33);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3300456, N'BELFORD ROXO', 33);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3300506, N'BOM JARDIM', 33);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3300605, N'BOM JESUS DO ITABAPOANA', 33);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3300704, N'CABO FRIO', 33);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3300803, N'CACHOEIRAS DE MACACU', 33);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3300902, N'CAMBUCI', 33);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3300936, N'CARAPEBUS', 33);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3300951, N'COMENDADOR LEVY GASPARIAN', 33);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3301009, N'CAMPOS DOS YTACAZES', 33);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3301108, N'CANTAGALO', 33);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3301157, N'CARDOSO MOREIRA', 33);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3301207, N'CARMO', 33);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3301306, N'CASIMIRO DE ABREU', 33);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3301405, N'CONCEIÇÃO DE MACABU', 33);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3301504, N'CORDEIRO', 33);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3301603, N'DUAS BARRAS', 33);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3301702, N'DUQUE DE CAXIAS', 33);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3301801, N'ENGENHEIRO PAULO DE FRONTIN', 33);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3301850, N'GUAPIMIRIM', 33);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3301876, N'IGUABA GRANDE', 33);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3301900, N'ITABORAÍ', 33);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3302007, N'ITAGUAÍ', 33);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3302056, N'ITALVA', 33);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3302106, N'ITAOCARA', 33);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3302205, N'ITAPERUNA', 33);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3302254, N'ITATIAIA', 33);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3302270, N'JAPERI', 33);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3302304, N'LAJE DO MURIAÉ', 33);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3302403, N'MACAÉ', 33);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3302452, N'MACUCO', 33);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3302502, N'MAGÉ', 33);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3302601, N'MANGARATIBA', 33);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3302700, N'MARICÁ', 33);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3302809, N'MENDES', 33);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3302858, N'MESQUITA', 33);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3302908, N'MIGUEL PEREIRA', 33);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3303005, N'MIRACEMA', 33);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3303104, N'NATIVIDADE', 33);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3303203, N'NILÓPOLIS', 33);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3303302, N'NITERÓI', 33);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3303401, N'NOVA FRIBUR', 33);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3303500, N'NOVA IGUAÇU', 33);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3303609, N'PARACAMBI', 33);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3303708, N'PARAÍBA DO SUL', 33);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3303807, N'PARATI', 33);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3303856, N'PATY DO ALFERES', 33);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3303906, N'PETRÓPOLIS', 33);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3303955, N'PINHEIRAL', 33);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3304003, N'PIRAÍ', 33);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3304102, N'PORCIÚNCULA', 33);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3304110, N'PORTO REAL', 33);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3304128, N'QUATIS', 33);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3304144, N'QUEIMADOS', 33);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3304151, N'QUISSAMÃ', 33);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3304201, N'RESENDE', 33);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3304300, N'RIO BONITO', 33);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3304409, N'RIO CLARO', 33);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3304508, N'RIO DAS FLORES', 33);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3304524, N'RIO DAS OSTRAS', 33);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3304557, N'RIO DE JANEIRO', 33);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3304607, N'SANTA MARIA MADALENA', 33);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3304706, N'SANTO ANTÔNIO DE PÁDUA', 33);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3304755, N'SÃO FRANCISCO DE ITABAPOANA', 33);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3304805, N'SÃO FIDÉLIS', 33);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3304904, N'SÃO NÇALO', 33);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3305000, N'SÃO JOÃO DA BARRA', 33);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3305109, N'SÃO JOÃO DE MERITI', 33);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3305133, N'SÃO JOSÉ DE UBÁ', 33);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3305158, N'SÃO JOSÉ DO VALE DO RIO PRETO', 33);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3305208, N'SÃO PEDRO DA ALDEIA', 33);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3305307, N'SÃO SEBASTIÃO DO ALTO', 33);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3305406, N'SAPUCAIA', 33);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3305505, N'SAQUAREMA', 33);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3305554, N'SEROPÉDICA', 33);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3305604, N'SILVA JARDIM', 33);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3305703, N'SUMIDOURO', 33);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3305752, N'TANGUÁ', 33);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3305802, N'TERESÓPOLIS', 33);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3305901, N'TRAJANO DE MORAIS', 33);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3306008, N'TRÊS RIOS', 33);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3306107, N'VALENÇA', 33);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3306156, N'VARRE-SAI', 33);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3306206, N'VASSOURAS', 33);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3306305, N'VOLTA REDONDA', 33);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3500105, N'ADAMANTINA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3500204, N'ADOLFO', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3500303, N'AGUAÍ', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3500402, N'ÁGUAS DA PRATA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3500501, N'ÁGUAS DE LINDÓIA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3500550, N'ÁGUAS DE SANTA BÁRBARA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3500600, N'ÁGUAS DE SÃO PEDRO', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3500709, N'AGUDOS', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3500758, N'ALAMBARI', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3500808, N'ALFREDO MARCONDES', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3500907, N'ALTAIR', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3501004, N'ALTINÓPOLIS', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3501103, N'ALTO ALEGRE', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3501152, N'ALUMÍNIO', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3501202, N'ÁLVARES FLORENCE', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3501301, N'ÁLVARES MACHADO', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3501400, N'ÁLVARO DE CARVALHO', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3501509, N'ALVINLÂNDIA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3501608, N'AMERICANA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3501707, N'AMÉRICO BRASILIENSE', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3501806, N'AMÉRICO DE CAMPOS', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3501905, N'AMPARO', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3502002, N'ANALÂNDIA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3502101, N'ANDRADINA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3502200, N'ANGATUBA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3502309, N'ANHEMBI', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3502408, N'ANHUMAS', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3502507, N'APARECIDA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3502606, N'APARECIDA D OESTE', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3502705, N'APIAÍ', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3502754, N'ARAÇARIGUAMA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3502804, N'ARAÇATUBA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3502903, N'ARAÇOIABA DA SERRA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3503000, N'ARAMINA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3503109, N'ARANDU', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3503158, N'ARAPEÍ', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3503208, N'ARARAQUARA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3503307, N'ARARAS', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3503356, N'ARCO-ÍRIS', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3503406, N'AREALVA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3503505, N'AREIAS', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3503604, N'AREIÓPOLIS', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3503703, N'ARIRANHA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3503802, N'ARTUR NOGUEIRA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3503901, N'ARUJÁ', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3503950, N'ASPÁSIA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3504008, N'ASSIS', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3504107, N'ATIBAIA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3504206, N'AURIFLAMA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3504305, N'AVAÍ', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3504404, N'AVANHANDAVA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3504503, N'AVARÉ', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3504602, N'BADY BASSITT', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3504701, N'BALBINOS', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3504800, N'BÁLSAMO', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3504909, N'BANANAL', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3505005, N'BARÃO DE ANTONINA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3505104, N'BARBOSA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3505203, N'BARIRI', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3505302, N'BARRA BONITA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3505351, N'BARRA DO CHAPÉU', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3505401, N'BARRA DO TURVO', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3505500, N'BARRETOS', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3505609, N'BARRINHA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3505708, N'BARUERI', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3505807, N'BASTOS', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3505906, N'BATATAIS', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3506003, N'BAURU', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3506102, N'BEBEDOURO', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3506201, N'BENTO DE ABREU', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3506300, N'BERNARDINO DE CAMPOS', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3506359, N'BERTIOGA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3506409, N'BILAC', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3506508, N'BIRIGUI', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3506607, N'BIRITIBA-MIRIM', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3506706, N'BOA ESPERANÇA DO SUL', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3506805, N'BOCAINA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3506904, N'BOFETE', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3507001, N'BOITUVA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3507100, N'BOM JESUS DOS PERDÕES', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3507159, N'BOM SUCESSO DE ITARARÉ', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3507209, N'BORÁ', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3507308, N'BORACÉIA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3507407, N'BORBOREMA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3507456, N'BOREBI', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3507506, N'BOTUCATU', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3507605, N'BRAGANÇA PAULISTA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3507704, N'BRAÚNA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3507753, N'BREJO ALEGRE', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3507803, N'BRODOWSKI', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3507902, N'BROTAS', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3508009, N'BURI', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3508108, N'BURITAMA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3508207, N'BURITIZAL', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3508306, N'CABRÁLIA PAULISTA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3508405, N'CABREÚVA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3508504, N'CAÇAPAVA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3508603, N'CACHOEIRA PAULISTA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3508702, N'CACONDE', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3508801, N'CAFELÂNDIA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3508900, N'CAIABU', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3509007, N'CAIEIRAS', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3509106, N'CAIUÁ', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3509205, N'CAJAMAR', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3509254, N'CAJATI', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3509304, N'CAJOBI', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3509403, N'CAJURU', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3509452, N'CAMPINA DO MONTE ALEGRE', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3509502, N'CAMPINAS', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3509601, N'CAMPO LIMPO PAULISTA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3509700, N'CAMPOS DO JORDÃO', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3509809, N'CAMPOS NOVOS PAULISTA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3509908, N'CANANÉIA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3509957, N'CANAS', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3510005, N'CÂNDIDO MOTA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3510104, N'CÂNDIDO RODRIGUES', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3510153, N'CANITAR', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3510203, N'CAPÃO BONITO', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3510302, N'CAPELA DO ALTO', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3510401, N'CAPIVARI', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3510500, N'CARAGUATATUBA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3510609, N'CARAPICUÍBA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3510708, N'CARDOSO', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3510807, N'CASA BRANCA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3510906, N'CÁSSIA DOS COQUEIROS', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3511003, N'CASTILHO', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3511102, N'CATANDUVA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3511201, N'CATIGUÁ', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3511300, N'CEDRAL', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3511409, N'CERQUEIRA CÉSAR', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3511508, N'CERQUILHO', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3511607, N'CESÁRIO LANGE', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3511706, N'CHARQUEADA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3511904, N'CLEMENTINA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3512001, N'COLINA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3512100, N'COLÔMBIA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3512209, N'CONCHAL', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3512308, N'CONCHAS', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3512407, N'CORDEIRÓPOLIS', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3512506, N'COROADOS', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3512605, N'CORONEL MACEDO', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3512704, N'CORUMBATAÍ', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3512803, N'COSMÓPOLIS', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3512902, N'COSMORAMA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3513009, N'COTIA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3513108, N'CRAVINHOS', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3513207, N'CRISTAIS PAULISTA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3513306, N'CRUZÁLIA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3513405, N'CRUZEIRO', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3513504, N'CUBATÃO', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3513603, N'CUNHA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3513702, N'DESCALVADO', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3513801, N'DIADEMA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3513850, N'DIRCE REIS', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3513900, N'DIVINOLÂNDIA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3514007, N'DOBRADA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3514106, N'DOIS CÓRRES', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3514205, N'DOLCINÓPOLIS', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3514304, N'DOURADO', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3514403, N'DRACENA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3514502, N'DUARTINA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3514601, N'DUMONT', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3514700, N'ECHAPORÃ', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3514809, N'ELDORADO', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3514908, N'ELIAS FAUSTO', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3514924, N'ELISIÁRIO', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3514957, N'EMBAÚBA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3515004, N'EMBU', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3515103, N'EMBU-GUAÇU', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3515129, N'EMILIANÓPOLIS', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3515152, N'ENGENHEIRO COELHO', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3515186, N'ESPÍRITO SANTO DO PINHAL', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3515194, N'ESPÍRITO SANTO DO TURVO', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3515202, N'ESTRELA D OESTE', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3515301, N'ESTRELA DO NORTE', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3515350, N'EUCLIDES DA CUNHA PAULISTA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3515400, N'FARTURA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3515509, N'FERNANDÓPOLIS', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3515608, N'FERNANDO PRESTES', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3515657, N'FERNÃO', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3515707, N'FERRAZ DE VASCONCELOS', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3515806, N'FLORA RICA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3515905, N'FLOREAL', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3516002, N'FLÓRIDA PAULISTA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3516101, N'FLORÍNIA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3516200, N'FRANCA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3516309, N'FRANCISCO MORATO', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3516408, N'FRANCO DA ROCHA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3516507, N'GABRIEL MONTEIRO', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3516606, N'GÁLIA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3516705, N'GARÇA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3516804, N'GASTÃO VIDIGAL', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3516853, N'GAVIÃO PEIXOTO', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3516903, N'GENERAL SALGADO', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3517000, N'GETULINA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3517109, N'GLICÉRIO', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3517208, N'GUAIÇARA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3517307, N'GUAIMBÊ', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3517406, N'GUAÍRA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3517505, N'GUAPIAÇU', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3517604, N'GUAPIARA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3517703, N'GUARÁ', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3517802, N'GUARAÇAÍ', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3517901, N'GUARACI', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3518008, N'GUARANI D OESTE', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3518107, N'GUARANTÃ', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3518206, N'GUARARAPES', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3518305, N'GUARAREMA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3518404, N'GUARATINGUETÁ', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3518503, N'GUAREÍ', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3518602, N'GUARIBA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3518701, N'GUARUJÁ', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3518800, N'GUARULHOS', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3518859, N'GUATAPARÁ', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3518909, N'GUZOLÂNDIA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3519006, N'HERCULÂNDIA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3519055, N'HOLAMBRA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3519071, N'HORTOLÂNDIA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3519105, N'IACANGA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3519204, N'IACRI', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3519253, N'IARAS', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3519303, N'IBATÉ', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3519402, N'IBIRÁ', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3519501, N'IBIRAREMA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3519600, N'IBITINGA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3519709, N'IBIÚNA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3519808, N'ICÉM', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3519907, N'IEPÊ', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3520004, N'IGARAÇU DO TIETÊ', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3520103, N'IGARAPAVA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3520202, N'IGARATÁ', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3520301, N'IGUAPE', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3520400, N'ILHABELA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3520426, N'ILHA COMPRIDA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3520442, N'ILHA SOLTEIRA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3520509, N'INDAIATUBA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3520608, N'INDIANA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3520707, N'INDIAPORÃ', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3520806, N'INÚBIA PAULISTA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3520905, N'IPAUSSU', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3521002, N'IPERÓ', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3521101, N'IPEÚNA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3521150, N'IPIGUÁ', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3521200, N'IPORANGA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3521309, N'IPUÃ', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3521408, N'IRACEMÁPOLIS', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3521507, N'IRAPUÃ', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3521606, N'IRAPURU', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3521705, N'ITABERÁ', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3521804, N'ITAÍ', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3521903, N'ITAJOBI', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3522000, N'ITAJU', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3522109, N'ITANHAÉM', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3522158, N'ITAÓCA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3522208, N'ITAPECERICA DA SERRA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3522307, N'ITAPETININGA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3522406, N'ITAPEVA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3522505, N'ITAPEVI', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3522604, N'ITAPIRA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3522653, N'ITAPIRAPUÃ PAULISTA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3522703, N'ITÁPOLIS', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3522802, N'ITAPORANGA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3522901, N'ITAPUÍ', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3523008, N'ITAPURA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3523107, N'ITAQUAQUECETUBA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3523206, N'ITARARÉ', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3523305, N'ITARIRI', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3523404, N'ITATIBA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3523503, N'ITATINGA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3523602, N'ITIRAPINA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3523701, N'ITIRAPUÃ', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3523800, N'ITOBI', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3523909, N'ITU', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3524006, N'ITUPEVA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3524105, N'ITUVERAVA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3524204, N'JABORANDI', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3524303, N'JABOTICABAL', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3524402, N'JACAREÍ', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3524501, N'JACI', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3524600, N'JACUPIRANGA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3524709, N'JAGUARIÚNA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3524808, N'JALES', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3524907, N'JAMBEIRO', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3525003, N'JANDIRA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3525102, N'JARDINÓPOLIS', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3525201, N'JARINU', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3525300, N'JAÚ', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3525409, N'JERIQUARA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3525508, N'JOANÓPOLIS', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3525607, N'JOÃO RAMALHO', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3525706, N'JOSÉ BONIFÁCIO', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3525805, N'JÚLIO MESQUITA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3525854, N'JUMIRIM', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3525904, N'JUNDIAÍ', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3526001, N'JUNQUEIRÓPOLIS', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3526100, N'JUQUIÁ', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3526209, N'JUQUITIBA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3526308, N'LAINHA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3526407, N'LARANJAL PAULISTA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3526506, N'LAVÍNIA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3526605, N'LAVRINHAS', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3526704, N'LEME', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3526803, N'LENÇÓIS PAULISTA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3526902, N'LIMEIRA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3527009, N'LINDÓIA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3527108, N'LINS', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3527207, N'LORENA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3527256, N'LOURDES', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3527306, N'LOUVEIRA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3527405, N'LUCÉLIA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3527504, N'LUCIANÓPOLIS', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3527603, N'LUÍS ANTÔNIO', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3527702, N'LUIZIÂNIA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3527801, N'LUPÉRCIO', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3527900, N'LUTÉCIA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3528007, N'MACATUBA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3528106, N'MACAUBAL', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3528205, N'MACEDÔNIA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3528304, N'MAGDA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3528403, N'MAIRINQUE', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3528502, N'MAIRIPORÃ', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3528601, N'MANDURI', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3528700, N'MARABÁ PAULISTA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3528809, N'MARACAÍ', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3528858, N'MARAPOAMA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3528908, N'MARIÁPOLIS', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3529005, N'MARÍLIA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3529104, N'MARINÓPOLIS', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3529203, N'MARTINÓPOLIS', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3529302, N'MATÃO', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3529401, N'MAUÁ', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3529500, N'MENDONÇA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3529609, N'MERIDIANO', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3529658, N'MESÓPOLIS', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3529708, N'MIGUELÓPOLIS', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3529807, N'MINEIROS DO TIETÊ', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3529906, N'MIRACATU', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3530003, N'MIRA ESTRELA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3530102, N'MIRANDÓPOLIS', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3530201, N'MIRANTE DO PARANAPANEMA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3530300, N'MIRASSOL', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3530409, N'MIRASSOLÂNDIA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3530508, N'MOCOCA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3530607, N'MOGI DAS CRUZES', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3530706, N'MOGI GUAÇU', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3530805, N'MOJI MIRIM', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3530904, N'MOMBUCA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3531001, N'MONÇÕES', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3531100, N'MONGAGUÁ', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3531209, N'MONTE ALEGRE DO SUL', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3531308, N'MONTE ALTO', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3531407, N'MONTE APRAZÍVEL', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3531506, N'MONTE AZUL PAULISTA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3531605, N'MONTE CASTELO', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3531704, N'MONTEIRO LOBATO', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3531803, N'MONTE MOR', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3531902, N'MORRO AGUDO', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3532009, N'MORUNGABA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3532058, N'MOTUCA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3532108, N'MURUTINGA DO SUL', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3532157, N'NANTES', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3532207, N'NARANDIBA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3532306, N'NATIVIDADE DA SERRA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3532405, N'NAZARÉ PAULISTA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3532504, N'NEVES PAULISTA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3532603, N'NHANDEARA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3532702, N'NIPOÃ', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3532801, N'NOVA ALIANÇA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3532827, N'NOVA CAMPINA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3532843, N'NOVA CANAÃ PAULISTA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3532868, N'NOVA CASTILHO', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3532900, N'NOVA EUROPA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3533007, N'NOVA GRANADA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3533106, N'NOVA GUATAPORANGA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3533205, N'NOVA INDEPENDÊNCIA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3533254, N'NOVAIS', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3533304, N'NOVA LUZITÂNIA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3533403, N'NOVA ODESSA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3533502, N'NOVO HORIZONTE', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3533601, N'NUPORANGA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3533700, N'OCAUÇU', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3533809, N'ÓLEO', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3533908, N'OLÍMPIA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3534005, N'ONDA VERDE', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3534104, N'ORIENTE', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3534203, N'ORINDIÚVA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3534302, N'ORLÂNDIA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3534401, N'OSASCO', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3534500, N'OSCAR BRESSANE', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3534609, N'OSVALDO CRUZ', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3534708, N'OURINHOS', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3534757, N'OUROESTE', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3534807, N'OURO VERDE', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3534906, N'PACAEMBU', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3535002, N'PALESTINA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3535101, N'PALMARES PAULISTA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3535200, N'PALMEIRA D OESTE', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3535309, N'PALMITAL', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3535408, N'PANORAMA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3535507, N'PARAGUAÇU PAULISTA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3535606, N'PARAIBUNA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3535705, N'PARAÍSO', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3535804, N'PARANAPANEMA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3535903, N'PARANAPUÃ', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3536000, N'PARAPUÃ', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3536109, N'PARDINHO', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3536208, N'PARIQUERA-AÇU', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3536257, N'PARISI', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3536307, N'PATROCÍNIO PAULISTA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3536406, N'PAULICÉIA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3536505, N'PAULÍNIA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3536570, N'PAULISTÂNIA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3536604, N'PAULO DE FARIA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3536703, N'PEDERNEIRAS', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3536802, N'PEDRA BELA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3536901, N'PEDRANÓPOLIS', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3537008, N'PEDREGULHO', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3537107, N'PEDREIRA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3537156, N'PEDRINHAS PAULISTA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3537206, N'PEDRO DE TOLEDO', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3537305, N'PENÁPOLIS', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3537404, N'PEREIRA BARRETO', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3537503, N'PEREIRAS', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3537602, N'PERUÍBE', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3537701, N'PIACATU', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3537800, N'PIEDADE', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3537909, N'PILAR DO SUL', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3538006, N'PINDAMONHANGABA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3538105, N'PINDORAMA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3538204, N'PINHALZINHO', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3538303, N'PIQUEROBI', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3538501, N'PIQUETE', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3538600, N'PIRACAIA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3538709, N'PIRACICABA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3538808, N'PIRAJU', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3538907, N'PIRAJUÍ', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3539004, N'PIRANGI', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3539103, N'PIRAPORA DO BOM JESUS', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3539202, N'PIRAPOZINHO', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3539301, N'PIRASSUNUNGA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3539400, N'PIRATININGA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3539509, N'PITANGUEIRAS', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3539608, N'PLANALTO', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3539707, N'PLATINA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3539806, N'POÁ', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3539905, N'POLONI', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3540002, N'POMPÉIA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3540101, N'PONGAÍ', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3540200, N'PONTAL', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3540259, N'PONTALINDA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3540309, N'PONTES GESTAL', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3540408, N'POPULINA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3540507, N'PORANGABA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3540606, N'PORTO FELIZ', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3540705, N'PORTO FERREIRA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3540754, N'POTIM', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3540804, N'POTIRENDABA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3540853, N'PRACINHA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3540903, N'PRADÓPOLIS', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3541000, N'PRAIA GRANDE', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3541059, N'PRATÂNIA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3541109, N'PRESIDENTE ALVES', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3541208, N'PRESIDENTE BERNARDES', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3541307, N'PRESIDENTE EPITÁCIO', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3541406, N'PRESIDENTE PRUDENTE', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3541505, N'PRESIDENTE VENCESLAU', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3541604, N'PROMISSÃO', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3541653, N'QUADRA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3541703, N'QUATÁ', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3541802, N'QUEIROZ', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3541901, N'QUELUZ', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3542008, N'QUINTANA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3542107, N'RAFARD', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3542206, N'RANCHARIA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3542305, N'REDENÇÃO DA SERRA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3542404, N'REGENTE FEIJÓ', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3542503, N'REGINÓPOLIS', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3542602, N'REGISTRO', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3542701, N'RESTINGA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3542800, N'RIBEIRA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3542909, N'RIBEIRÃO BONITO', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3543006, N'RIBEIRÃO BRANCO', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3543105, N'RIBEIRÃO CORRENTE', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3543204, N'RIBEIRÃO DO SUL', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3543238, N'RIBEIRÃO DOS ÍNDIOS', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3543253, N'RIBEIRÃO GRANDE', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3543303, N'RIBEIRÃO PIRES', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3543402, N'RIBEIRÃO PRETO', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3543501, N'RIVERSUL', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3543600, N'RIFAINA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3543709, N'RINCÃO', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3543808, N'RINÓPOLIS', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3543907, N'RIO CLARO', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3544004, N'RIO DAS PEDRAS', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3544103, N'RIO GRANDE DA SERRA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3544202, N'RIOLÂNDIA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3544251, N'ROSANA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3544301, N'ROSEIRA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3544400, N'RUBIÁCEA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3544509, N'RUBINÉIA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3544608, N'SABINO', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3544707, N'SAGRES', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3544806, N'SALES', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3544905, N'SALES OLIVEIRA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3545001, N'SALESÓPOLIS', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3545100, N'SALMOURÃO', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3545159, N'SALTINHO', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3545209, N'SALTO', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3545308, N'SALTO DE PIRAPORA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3545407, N'SALTO GRANDE', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3545506, N'SANDOVALINA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3545605, N'SANTA ADÉLIA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3545704, N'SANTA ALBERTINA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3545803, N'SANTA BÁRBARA D OESTE', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3546009, N'SANTA BRANCA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3546108, N'SANTA CLARA D OESTE', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3546207, N'SANTA CRUZ DA CONCEIÇÃO', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3546256, N'SANTA CRUZ DA ESPERANÇA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3546306, N'SANTA CRUZ DAS PALMEIRAS', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3546405, N'SANTA CRUZ DO RIO PARDO', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3546504, N'SANTA ERNESTINA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3546603, N'SANTA FÉ DO SUL', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3546702, N'SANTA GERTRUDES', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3546801, N'SANTA ISABEL', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3546900, N'SANTA LÚCIA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3547007, N'SANTA MARIA DA SERRA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3547106, N'SANTA MERCEDES', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3547205, N'SANTANA DA PONTE PENSA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3547304, N'SANTANA DE PARNAÍBA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3547403, N'SANTA RITA D OESTE', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3547502, N'SANTA RITA DO PASSA QUATRO', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3547601, N'SANTA ROSA DE VITERBO', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3547650, N'SANTA SALETE', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3547700, N'SANTO ANASTÁCIO', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3547809, N'SANTO ANDRÉ', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3547908, N'SANTO ANTÔNIO DA ALEGRIA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3548005, N'SANTO ANTÔNIO DE POSSE', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3548054, N'SANTO ANTÔNIO DO ARACANGUÁ', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3548104, N'SANTO ANTÔNIO DO JARDIM', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3548203, N'SANTO ANTÔNIO DO PINHAL', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3548302, N'SANTO EXPEDITO', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3548401, N'SANTÓPOLIS DO AGUAPEÍ', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3548500, N'SANTOS', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3548609, N'SÃO BENTO DO SAPUCAÍ', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3548708, N'SÃO BERNARDO DO CAMPO', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3548807, N'SÃO CAETANO DO SUL', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3548906, N'SÃO CARLOS', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3549003, N'SÃO FRANCISCO', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3549102, N'SÃO JOÃO DA BOA VISTA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3549201, N'SÃO JOÃO DAS DUAS PONTES', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3549250, N'SÃO JOÃO DE IRACEMA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3549300, N'SÃO JOÃO DO PAU D ALHO', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3549409, N'SÃO JOAQUIM DA BARRA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3549508, N'SÃO JOSÉ DA BELA VISTA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3549607, N'SÃO JOSÉ DO BARREIRO', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3549706, N'SÃO JOSÉ DO RIO PARDO', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3549805, N'SÃO JOSÉ DO RIO PRETO', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3549904, N'SÃO JOSÉ DOS CAMPOS', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3549953, N'SÃO LOURENÇO DA SERRA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3550001, N'SÃO LUÍS DO PARAITINGA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3550100, N'SÃO MANUEL', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3550209, N'SÃO MIGUEL ARCANJO', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3550308, N'SÃO PAULO', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3550407, N'SÃO PEDRO', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3550506, N'SÃO PEDRO DO TURVO', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3550605, N'SÃO ROQUE', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3550704, N'SÃO SEBASTIÃO', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3550803, N'SÃO SEBASTIÃO DA GRAMA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3550902, N'SÃO SIMÃO', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3551009, N'SÃO VICENTE', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3551108, N'SARAPUÍ', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3551207, N'SARUTAIÁ', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3551306, N'SEBASTIANÓPOLIS DO SUL', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3551405, N'SERRA AZUL', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3551504, N'SERRANA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3551603, N'SERRA NEGRA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3551702, N'SERTÃOZINHO', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3551801, N'SETE BARRAS', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3551900, N'SEVERÍNIA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3552007, N'SILVEIRAS', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3552106, N'SOCORRO', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3552205, N'SOROCABA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3552304, N'SUD MENNUCCI', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3552403, N'SUMARÉ', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3552502, N'SUZANO', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3552551, N'SUZANÁPOLIS', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3552601, N'TABAPUÃ', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3552700, N'TABATINGA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3552809, N'TABOÃO DA SERRA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3552908, N'TACIBA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3553005, N'TAGUAÍ', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3553104, N'TAIAÇU', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3553203, N'TAIÚVA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3553302, N'TAMBAÚ', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3553401, N'TANABI', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3553500, N'TAPIRAÍ', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3553609, N'TAPIRATIBA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3553658, N'TAQUARAL', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3553708, N'TAQUARITINGA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3553807, N'TAQUARITUBA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3553856, N'TAQUARIVAÍ', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3553906, N'TARABAI', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3553955, N'TARUMÃ', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3554003, N'TATUÍ', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3554102, N'TAUBATÉ', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3554201, N'TEJUPÁ', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3554300, N'TEODORO SAMPAIO', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3554409, N'TERRA ROXA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3554508, N'TIETÊ', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3554607, N'TIMBURI', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3554656, N'TORRE DE PEDRA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3554706, N'TORRINHA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3554755, N'TRABIJU', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3554805, N'TREMEMBÉ', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3554904, N'TRÊS FRONTEIRAS', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3554953, N'TUIUTI', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3555000, N'TUPÃ', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3555109, N'TUPI PAULISTA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3555208, N'TURIÚBA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3555307, N'TURMALINA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3555356, N'UBARANA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3555406, N'UBATUBA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3555505, N'UBIRAJARA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3555604, N'UCHOA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3555703, N'UNIÃO PAULISTA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3555802, N'URÂNIA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3555901, N'URU', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3556008, N'URUPÊS', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3556107, N'VALENTIM GENTIL', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3556206, N'VALINHOS', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3556305, N'VALPARAÍSO', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3556354, N'VARGEM', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3556404, N'VARGEM GRANDE DO SUL', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3556453, N'VARGEM GRANDE PAULISTA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3556503, N'VÁRZEA PAULISTA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3556602, N'VERA CRUZ', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3556701, N'VINHEDO', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3556800, N'VIRADOURO', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3556909, N'VISTA ALEGRE DO ALTO', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3556958, N'VITÓRIA BRASIL', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3557006, N'VOTORANTIM', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3557105, N'VOTUPORANGA', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3557154, N'ZACARIAS', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3557204, N'CHAVANTES', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (3557303, N'ESTIVA GERBI', 35);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4100103, N'ABATIÁ', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4100202, N'ADRIANÓPOLIS', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4100301, N'AGUDOS DO SUL', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4100400, N'ALMIRANTE TAMANDARÉ', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4100459, N'ALTAMIRA DO PARANÁ', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4100509, N'ALTÔNIA', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4100608, N'ALTO PARANÁ', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4100707, N'ALTO PIQUIRI', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4100806, N'ALVORADA DO SUL', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4100905, N'AMAPORÃ', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4101002, N'AMPÉRE', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4101051, N'ANAHY', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4101101, N'ANDIRÁ', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4101150, N'ÂNGULO', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4101200, N'ANTONINA', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4101309, N'ANTÔNIO OLINTO', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4101408, N'APUCARANA', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4101507, N'ARAPONGAS', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4101606, N'ARAPOTI', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4101655, N'ARAPUÃ', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4101705, N'ARARUNA', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4101804, N'ARAUCÁRIA', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4101853, N'ARIRANHA DO IVAÍ', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4101903, N'ASSAÍ', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4102000, N'ASSIS CHATEAUBRIAND', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4102109, N'ASTORGA', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4102208, N'ATALAIA', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4102307, N'BALSA NOVA', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4102406, N'BANDEIRANTES', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4102505, N'BARBOSA FERRAZ', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4102604, N'BARRACÃO', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4102703, N'BARRA DO JACARÉ', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4102752, N'BELA VISTA DA CAROBA', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4102802, N'BELA VISTA DO PARAÍSO', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4102901, N'BITURUNA', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4103008, N'BOA ESPERANÇA', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4103024, N'BOA ESPERANÇA DO IGUAÇU', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4103040, N'BOA VENTURA DE SÃO ROQUE', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4103057, N'BOA VISTA DA APARECIDA', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4103107, N'BOCAIÚVA DO SUL', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4103156, N'BOM JESUS DO SUL', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4103206, N'BOM SUCESSO', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4103222, N'BOM SUCESSO DO SUL', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4103305, N'BORRAZÓPOLIS', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4103354, N'BRAGANEY', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4103370, N'BRASILÂNDIA DO SUL', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4103404, N'CAFEARA', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4103453, N'CAFELÂNDIA', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4103479, N'CAFEZAL DO SUL', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4103503, N'CALIFÓRNIA', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4103602, N'CAMBARÁ', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4103701, N'CAMBÉ', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4103800, N'CAMBIRA', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4103909, N'CAMPINA DA LAA', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4103958, N'CAMPINA DO SIMÃO', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4104006, N'CAMPINA GRANDE DO SUL', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4104055, N'CAMPO BONITO', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4104105, N'CAMPO DO TENENTE', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4104204, N'CAMPO LAR', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4104253, N'CAMPO MAGRO', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4104303, N'CAMPO MOURÃO', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4104402, N'CÂNDIDO DE ABREU', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4104428, N'CANDÓI', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4104451, N'CANTAGALO', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4104501, N'CAPANEMA', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4104600, N'CAPITÃO LEÔNIDAS MARQUES', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4104659, N'CARAMBEÍ', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4104709, N'CARLÓPOLIS', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4104808, N'CASCAVEL', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4104907, N'CASTRO', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4105003, N'CATANDUVAS', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4105102, N'CENTENÁRIO DO SUL', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4105201, N'CERRO AZUL', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4105300, N'CÉU AZUL', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4105409, N'CHOPINZINHO', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4105508, N'CIANORTE', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4105607, N'CIDADE GAÚCHA', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4105706, N'CLEVELÂNDIA', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4105805, N'COLOMBO', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4105904, N'COLORADO', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4106001, N'CONNHINHAS', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4106100, N'CONSELHEIRO MAIRINCK', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4106209, N'CONTENDA', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4106308, N'CORBÉLIA', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4106407, N'CORNÉLIO PROCÓPIO', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4106456, N'CORONEL DOMINS SOARES', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4106506, N'CORONEL VIVIDA', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4106555, N'CORUMBATAÍ DO SUL', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4106571, N'CRUZEIRO DO IGUAÇU', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4106605, N'CRUZEIRO DO OESTE', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4106704, N'CRUZEIRO DO SUL', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4106803, N'CRUZ MACHADO', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4106852, N'CRUZMALTINA', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4106902, N'CURITIBA', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4107009, N'CURIÚVA', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4107108, N'DIAMANTE DO NORTE', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4107124, N'DIAMANTE DO SUL', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4107157, N'DIAMANTE D OESTE', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4107207, N'DOIS VIZINHOS', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4107256, N'DOURADINA', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4107306, N'DOUTOR CAMAR', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4107405, N'ENÉAS MARQUES', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4107504, N'ENGENHEIRO BELTRÃO', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4107520, N'ESPERANÇA NOVA', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4107538, N'ENTRE RIOS DO OESTE', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4107546, N'ESPIGÃO ALTO DO IGUAÇU', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4107553, N'FAROL', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4107603, N'FAXINAL', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4107652, N'FAZENDA RIO GRANDE', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4107702, N'FÊNIX', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4107736, N'FERNANDES PINHEIRO', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4107751, N'FIGUEIRA', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4107801, N'FLORAÍ', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4107850, N'FLOR DA SERRA DO SUL', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4107900, N'FLORESTA', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4108007, N'FLORESTÓPOLIS', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4108106, N'FLÓRIDA', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4108205, N'FORMOSA DO OESTE', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4108304, N'FOZ DO IGUAÇU', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4108320, N'FRANCISCO ALVES', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4108403, N'FRANCISCO BELTRÃO', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4108452, N'FOZ DO JORDÃO', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4108502, N'GENERAL CARNEIRO', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4108551, N'DOY MOREIRA', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4108601, N'IOERÊ', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4108650, N'IOXIM', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4108700, N'GRANDES RIOS', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4108809, N'GUAÍRA', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4108908, N'GUAIRAÇÁ', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4108957, N'GUAMIRANGA', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4109005, N'GUAPIRAMA', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4109104, N'GUAPOREMA', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4109203, N'GUARACI', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4109302, N'GUARANIAÇU', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4109401, N'GUARAPUAVA', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4109500, N'GUARAQUEÇABA', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4109609, N'GUARATUBA', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4109658, N'HONÓRIO SERPA', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4109708, N'IBAITI', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4109757, N'IBEMA', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4109807, N'IBIPORÃ', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4109906, N'ICARAÍMA', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4110003, N'IGUARAÇU', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4110052, N'IGUATU', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4110078, N'IMBAÚ', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4110102, N'IMBITUVA', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4110201, N'INÁCIO MARTINS', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4110300, N'INAJÁ', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4110409, N'INDIANÓPOLIS', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4110508, N'IPIRANGA', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4110607, N'IPORÃ', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4110656, N'IRACEMA DO OESTE', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4110706, N'IRATI', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4110805, N'IRETAMA', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4110904, N'ITAGUAJÉ', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4110953, N'ITAIPULÂNDIA', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4111001, N'ITAMBARACÁ', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4111100, N'ITAMBÉ', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4111209, N'ITAPEJARA D OESTE', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4111258, N'ITAPERUÇU', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4111308, N'ITAÚNA DO SUL', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4111407, N'IVAÍ', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4111506, N'IVAIPORÃ', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4111555, N'IVATÉ', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4111605, N'IVATUBA', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4111704, N'JABOTI', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4111803, N'JACAREZINHO', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4111902, N'JAGUAPITÃ', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4112009, N'JAGUARIAÍVA', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4112108, N'JANDAIA DO SUL', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4112207, N'JANIÓPOLIS', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4112306, N'JAPIRA', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4112405, N'JAPURÁ', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4112504, N'JARDIM ALEGRE', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4112603, N'JARDIM OLINDA', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4112702, N'JATAIZINHO', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4112751, N'JESUÍTAS', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4112801, N'JOAQUIM TÁVORA', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4112900, N'JUNDIAÍ DO SUL', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4112959, N'JURANDA', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4113007, N'JUSSARA', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4113106, N'KALORÉ', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4113205, N'LAPA', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4113254, N'LARANJAL', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4113304, N'LARANJEIRAS DO SUL', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4113403, N'LEÓPOLIS', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4113429, N'LIDIANÓPOLIS', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4113452, N'LINDOESTE', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4113502, N'LOANDA', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4113601, N'LOBATO', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4113700, N'LONDRINA', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4113734, N'LUIZIANA', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4113759, N'LUNARDELLI', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4113809, N'LUPIONÓPOLIS', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4113908, N'MALLET', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4114005, N'MAMBORÊ', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4114104, N'MANDAGUAÇU', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4114203, N'MANDAGUARI', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4114302, N'MANDIRITUBA', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4114351, N'MANFRINÓPOLIS', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4114401, N'MANGUEIRINHA', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4114500, N'MANOEL RIBAS', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4114609, N'MARECHAL CÂNDIDO RONDON', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4114708, N'MARIA HELENA', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4114807, N'MARIALVA', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4114906, N'MARILÂNDIA DO SUL', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4115002, N'MARILENA', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4115101, N'MARILUZ', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4115200, N'MARINGÁ', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4115309, N'MARIÓPOLIS', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4115358, N'MARIPÁ', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4115408, N'MARMELEIRO', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4115457, N'MARQUINHO', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4115507, N'MARUMBI', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4115606, N'MATELÂNDIA', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4115705, N'MATINHOS', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4115739, N'MATO RICO', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4115754, N'MAUÁ DA SERRA', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4115804, N'MEDIANEIRA', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4115853, N'MERCEDES', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4115903, N'MIRADOR', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4116000, N'MIRASELVA', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4116059, N'MISSAL', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4116109, N'MOREIRA SALES', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4116208, N'MORRETES', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4116307, N'MUNHOZ DE MELO', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4116406, N'NOSSA SENHORA DAS GRAÇAS', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4116505, N'NOVA ALIANÇA DO IVAÍ', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4116604, N'NOVA AMÉRICA DA COLINA', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4116703, N'NOVA AURORA', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4116802, N'NOVA CANTU', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4116901, N'NOVA ESPERANÇA', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4116950, N'NOVA ESPERANÇA DO SUDOESTE', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4117008, N'NOVA FÁTIMA', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4117057, N'NOVA LARANJEIRAS', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4117107, N'NOVA LONDRINA', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4117206, N'NOVA OLÍMPIA', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4117214, N'NOVA SANTA BÁRBARA', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4117222, N'NOVA SANTA ROSA', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4117255, N'NOVA PRATA DO IGUAÇU', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4117271, N'NOVA TEBAS', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4117297, N'NOVO ITACOLOMI', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4117305, N'ORTIGUEIRA', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4117404, N'OURIZONA', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4117453, N'OURO VERDE DO OESTE', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4117503, N'PAIÇANDU', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4117602, N'PALMAS', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4117701, N'PALMEIRA', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4117800, N'PALMITAL', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4117909, N'PALOTINA', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4118006, N'PARAÍSO DO NORTE', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4118105, N'PARANACITY', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4118204, N'PARANAGUÁ', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4118303, N'PARANAPOEMA', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4118402, N'PARANAVAÍ', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4118451, N'PATO BRAGADO', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4118501, N'PATO BRANCO', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4118600, N'PAULA FREITAS', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4118709, N'PAULO FRONTIN', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4118808, N'PEABIRU', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4118857, N'PEROBAL', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4118907, N'PÉROLA', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4119004, N'PÉROLA D OESTE', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4119103, N'PIÊN', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4119152, N'PINHAIS', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4119202, N'PINHALÃO', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4119251, N'PINHAL DE SÃO BENTO', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4119301, N'PINHÃO', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4119400, N'PIRAÍ DO SUL', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4119509, N'PIRAQUARA', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4119608, N'PITANGA', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4119657, N'PITANGUEIRAS', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4119707, N'PLANALTINA DO PARANÁ', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4119806, N'PLANALTO', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4119905, N'PONTA GROSSA', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4119954, N'PONTAL DO PARANÁ', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4120002, N'PORECATU', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4120101, N'PORTO AMAZONAS', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4120150, N'PORTO BARREIRO', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4120200, N'PORTO RICO', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4120309, N'PORTO VITÓRIA', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4120333, N'PRADO FERREIRA', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4120358, N'PRANCHITA', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4120408, N'PRESIDENTE CASTELO BRANCO', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4120507, N'PRIMEIRO DE MAIO', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4120606, N'PRUDENTÓPOLIS', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4120655, N'QUARTO CENTENÁRIO', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4120705, N'QUATIGUÁ', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4120804, N'QUATRO BARRAS', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4120853, N'QUATRO PONTES', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4120903, N'QUEDAS DO IGUAÇU', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4121000, N'QUERÊNCIA DO NORTE', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4121109, N'QUINTA DO SOL', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4121208, N'QUITANDINHA', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4121257, N'RAMILÂNDIA', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4121307, N'RANCHO ALEGRE', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4121356, N'RANCHO ALEGRE D OESTE', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4121406, N'REALEZA', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4121505, N'REBOUÇAS', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4121604, N'RENASCENÇA', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4121703, N'RESERVA', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4121752, N'RESERVA DO IGUAÇU', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4121802, N'RIBEIRÃO CLARO', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4121901, N'RIBEIRÃO DO PINHAL', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4122008, N'RIO AZUL', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4122107, N'RIO BOM', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4122156, N'RIO BONITO DO IGUAÇU', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4122172, N'RIO BRANCO DO IVAÍ', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4122206, N'RIO BRANCO DO SUL', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4122305, N'RIO NEGRO', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4122404, N'ROLÂNDIA', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4122503, N'RONCADOR', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4122602, N'RONDON', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4122651, N'ROSÁRIO DO IVAÍ', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4122701, N'SABÁUDIA', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4122800, N'SALGADO FILHO', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4122909, N'SALTO DO ITARARÉ', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4123006, N'SALTO DO LONTRA', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4123105, N'SANTA AMÉLIA', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4123204, N'SANTA CECÍLIA DO PAVÃO', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4123303, N'SANTA CRUZ DE MONTE CASTELO', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4123402, N'SANTA FÉ', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4123501, N'SANTA HELENA', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4123600, N'SANTA INÊS', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4123709, N'SANTA ISABEL DO IVAÍ', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4123808, N'SANTA IZABEL DO OESTE', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4123824, N'SANTA LÚCIA', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4123857, N'SANTA MARIA DO OESTE', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4123907, N'SANTA MARIANA', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4123956, N'SANTA MÔNICA', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4124004, N'SANTANA DO ITARARÉ', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4124020, N'SANTA TEREZA DO OESTE', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4124053, N'SANTA TEREZINHA DE ITAIPU', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4124103, N'SANTO ANTÔNIO DA PLATINA', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4124202, N'SANTO ANTÔNIO DO CAIUÁ', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4124301, N'SANTO ANTÔNIO DO PARAÍSO', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4124400, N'SANTO ANTÔNIO DO SUDOESTE', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4124509, N'SANTO INÁCIO', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4124608, N'SÃO CARLOS DO IVAÍ', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4124707, N'SÃO JERÔNIMO DA SERRA', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4124806, N'SÃO JOÃO', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4124905, N'SÃO JOÃO DO CAIUÁ', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4125001, N'SÃO JOÃO DO IVAÍ', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4125100, N'SÃO JOÃO DO TRIUNFO', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4125209, N'SÃO JORGE D OESTE', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4125308, N'SÃO JORGE DO IVAÍ', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4125357, N'SÃO JORGE DO PATROCÍNIO', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4125407, N'SÃO JOSÉ DA BOA VISTA', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4125456, N'SÃO JOSÉ DAS PALMEIRAS', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4125506, N'SÃO JOSÉ DOS PINHAIS', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4125555, N'SÃO MANOEL DO PARANÁ', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4125605, N'SÃO MATEUS DO SUL', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4125704, N'SÃO MIGUEL DO IGUAÇU', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4125753, N'SÃO PEDRO DO IGUAÇU', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4125803, N'SÃO PEDRO DO IVAÍ', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4125902, N'SÃO PEDRO DO PARANÁ', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4126009, N'SÃO SEBASTIÃO DA AMOREIRA', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4126108, N'SÃO TOMÉ', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4126207, N'SAPOPEMA', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4126256, N'SARANDI', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4126272, N'SAUDADE DO IGUAÇU', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4126306, N'SENGÉS', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4126355, N'SERRANÓPOLIS DO IGUAÇU', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4126405, N'SERTANEJA', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4126504, N'SERTANÓPOLIS', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4126603, N'SIQUEIRA CAMPOS', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4126652, N'SULINA', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4126678, N'TAMARANA', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4126702, N'TAMBOARA', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4126801, N'TAPEJARA', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4126900, N'TAPIRA', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4127007, N'TEIXEIRA SOARES', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4127106, N'TELÊMACO BORBA', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4127205, N'TERRA BOA', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4127304, N'TERRA RICA', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4127403, N'TERRA ROXA', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4127502, N'TIBAGI', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4127601, N'TIJUCAS DO SUL', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4127700, N'TOLEDO', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4127809, N'TOMAZINA', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4127858, N'TRÊS BARRAS DO PARANÁ', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4127882, N'TUNAS DO PARANÁ', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4127908, N'TUNEIRAS DO OESTE', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4127957, N'TUPÃSSI', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4127965, N'TURVO', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4128005, N'UBIRATÃ', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4128104, N'UMUARAMA', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4128203, N'UNIÃO DA VITÓRIA', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4128302, N'UNIFLOR', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4128401, N'URAÍ', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4128500, N'WENCESLAU BRAZ', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4128534, N'VENTANIA', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4128559, N'VERA CRUZ DO OESTE', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4128609, N'VERÊ', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4128625, N'ALTO PARAÍSO', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4128633, N'DOUTOR ULYSSES', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4128658, N'VIRMOND', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4128708, N'VITORINO', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4128807, N'XAMBRÊ', 41);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4200051, N'ABDON BATISTA', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4200101, N'ABELARDO LUZ', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4200200, N'AGROLÂNDIA', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4200309, N'AGRONÔMICA', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4200408, N'ÁGUA DOCE', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4200507, N'ÁGUAS DE CHAPECÓ', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4200556, N'ÁGUAS FRIAS', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4200606, N'ÁGUAS MORNAS', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4200705, N'ALFREDO WAGNER', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4200754, N'ALTO BELA VISTA', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4200804, N'ANCHIETA', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4200903, N'ANGELINA', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4201000, N'ANITA GARIBALDI', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4201109, N'ANITÁPOLIS', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4201208, N'ANTÔNIO CARLOS', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4201257, N'APIÚNA', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4201273, N'ARABUTÃ', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4201307, N'ARAQUARI', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4201406, N'ARARANGUÁ', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4201505, N'ARMAZÉM', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4201604, N'ARROIO TRINTA', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4201653, N'ARVOREDO', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4201703, N'ASCURRA', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4201802, N'ATALANTA', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4201901, N'AURORA', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4201950, N'BALNEÁRIO ARROIO DO SILVA', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4202008, N'BALNEÁRIO CAMBORIÚ', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4202057, N'BALNEÁRIO BARRA DO SUL', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4202073, N'BALNEÁRIO GAIVOTA', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4202081, N'BANDEIRANTE', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4202099, N'BARRA BONITA', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4202107, N'BARRA VELHA', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4202131, N'BELA VISTA DO TOLDO', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4202156, N'BELMONTE', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4202206, N'BENEDITO NOVO', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4202305, N'BIGUAÇU', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4202404, N'BLUMENAU', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4202438, N'BOCAINA DO SUL', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4202453, N'BOMBINHAS', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4202503, N'BOM JARDIM DA SERRA', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4202537, N'BOM JESUS', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4202578, N'BOM JESUS DO OESTE', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4202602, N'BOM RETIRO', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4202701, N'BOTUVERÁ', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4202800, N'BRAÇO DO NORTE', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4202859, N'BRAÇO DO TROMBUDO', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4202875, N'BRUNÓPOLIS', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4202909, N'BRUSQUE', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4203006, N'CAÇADOR', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4203105, N'CAIBI', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4203154, N'CALMON', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4203204, N'CAMBORIÚ', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4203253, N'CAPÃO ALTO', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4203303, N'CAMPO ALEGRE', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4203402, N'CAMPO BELO DO SUL', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4203501, N'CAMPO ERÊ', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4203600, N'CAMPOS NOVOS', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4203709, N'CANELINHA', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4203808, N'CANOINHAS', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4203907, N'CAPINZAL', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4203956, N'CAPIVARI DE BAIXO', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4204004, N'CATANDUVAS', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4204103, N'CAXAMBU DO SUL', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4204152, N'CELSO RAMOS', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4204178, N'CERRO NEGRO', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4204194, N'CHAPADÃO DO LAGEADO', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4204202, N'CHAPECÓ', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4204251, N'COCAL DO SUL', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4204301, N'CONCÓRDIA', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4204350, N'CORDILHEIRA ALTA', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4204400, N'CORONEL FREITAS', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4204459, N'CORONEL MARTINS', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4204509, N'CORUPÁ', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4204558, N'CORREIA PINTO', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4204608, N'CRICIÚMA', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4204707, N'CUNHA PORÃ', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4204756, N'CUNHATAÍ', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4204806, N'CURITIBANOS', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4204905, N'DESCANSO', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4205001, N'DIONÍSIO CERQUEIRA', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4205100, N'DONA EMMA', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4205159, N'DOUTOR PEDRINHO', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4205175, N'ENTRE RIOS', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4205191, N'ERMO', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4205209, N'ERVAL VELHO', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4205308, N'FAXINAL DOS GUEDES', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4205357, N'FLOR DO SERTÃO', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4205407, N'FLORIANÓPOLIS', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4205431, N'FORMOSA DO SUL', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4205456, N'FORQUILHINHA', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4205506, N'FRAIBUR', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4205555, N'FREI ROGÉRIO', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4205605, N'GALVÃO', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4205704, N'GAROPABA', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4205803, N'GARUVA', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4205902, N'GASPAR', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4206009, N'VERNADOR CELSO RAMOS', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4206108, N'GRÃO PARÁ', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4206207, N'GRAVATAL', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4206306, N'GUABIRUBA', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4206405, N'GUARACIABA', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4206504, N'GUARAMIRIM', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4206603, N'GUARUJÁ DO SUL', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4206652, N'GUATAMBÚ', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4206702, N'HERVAL D OESTE', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4206751, N'IBIAM', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4206801, N'IBICARÉ', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4206900, N'IBIRAMA', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4207007, N'IÇARA', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4207106, N'ILHOTA', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4207205, N'IMARUÍ', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4207304, N'IMBITUBA', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4207403, N'IMBUIA', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4207502, N'INDAIAL', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4207577, N'IOMERÊ', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4207601, N'IPIRA', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4207650, N'IPORÃ DO OESTE', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4207684, N'IPUAÇU', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4207700, N'IPUMIRIM', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4207759, N'IRACEMINHA', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4207809, N'IRANI', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4207858, N'IRATI', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4207908, N'IRINEÓPOLIS', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4208005, N'ITÁ', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4208104, N'ITAIÓPOLIS', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4208203, N'ITAJAÍ', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4208302, N'ITAPEMA', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4208401, N'ITAPIRANGA', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4208450, N'ITAPOÁ', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4208500, N'ITUPORANGA', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4208609, N'JABORÁ', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4208708, N'JACINTO MACHADO', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4208807, N'JAGUARUNA', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4208906, N'JARAGUÁ DO SUL', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4208955, N'JARDINÓPOLIS', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4209003, N'JOAÇABA', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4209102, N'JOINVILLE', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4209151, N'JOSÉ BOITEUX', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4209177, N'JUPIÁ', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4209201, N'LACERDÓPOLIS', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4209300, N'LAGES', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4209409, N'LAGUNA', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4209458, N'LAJEADO GRANDE', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4209508, N'LAURENTINO', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4209607, N'LAURO MULLER', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4209706, N'LEBON RÉGIS', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4209805, N'LEOBERTO LEAL', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4209854, N'LINDÓIA DO SUL', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4209904, N'LONTRAS', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4210001, N'LUIZ ALVES', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4210035, N'LUZERNA', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4210050, N'MACIEIRA', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4210100, N'MAFRA', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4210209, N'MAJOR GERCINO', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4210308, N'MAJOR VIEIRA', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4210407, N'MARACAJÁ', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4210506, N'MARAVILHA', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4210555, N'MAREMA', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4210605, N'MASSARANDUBA', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4210704, N'MATOS COSTA', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4210803, N'MELEIRO', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4210852, N'MIRIM DOCE', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4210902, N'MODELO', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4211009, N'MONDAÍ', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4211058, N'MONTE CARLO', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4211108, N'MONTE CASTELO', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4211207, N'MORRO DA FUMAÇA', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4211256, N'MORRO GRANDE', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4211306, N'NAVEGANTES', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4211405, N'NOVA ERECHIM', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4211454, N'NOVA ITABERABA', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4211504, N'NOVA TRENTO', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4211603, N'NOVA VENEZA', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4211652, N'NOVO HORIZONTE', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4211702, N'ORLEANS', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4211751, N'OTACÍLIO COSTA', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4211801, N'OURO', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4211850, N'OURO VERDE', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4211876, N'PAIAL', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4211892, N'PAINEL', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4211900, N'PALHOÇA', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4212007, N'PALMA SOLA', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4212056, N'PALMEIRA', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4212106, N'PALMITOS', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4212205, N'PAPANDUVA', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4212239, N'PARAÍSO', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4212254, N'PASSO DE TORRES', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4212270, N'PASSOS MAIA', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4212304, N'PAULO LOPES', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4212403, N'PEDRAS GRANDES', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4212502, N'PENHA', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4212601, N'PERITIBA', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4212700, N'PETROLÂNDIA', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4212809, N'BALNEÁRIO PIÇARRAS', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4212908, N'PINHALZINHO', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4213005, N'PINHEIRO PRETO', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4213104, N'PIRATUBA', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4213153, N'PLANALTO ALEGRE', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4213203, N'POMERODE', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4213302, N'PONTE ALTA', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4213351, N'PONTE ALTA DO NORTE', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4213401, N'PONTE SERRADA', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4213500, N'PORTO BELO', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4213609, N'PORTO UNIÃO', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4213708, N'POUSO REDONDO', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4213807, N'PRAIA GRANDE', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4213906, N'PRESIDENTE CASTELLO BRANCO', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4214003, N'PRESIDENTE GETÚLIO', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4214102, N'PRESIDENTE NEREU', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4214151, N'PRINCESA', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4214201, N'QUILOMBO', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4214300, N'RANCHO QUEIMADO', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4214409, N'RIO DAS ANTAS', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4214508, N'RIO DO CAMPO', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4214607, N'RIO DO OESTE', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4214706, N'RIO DOS CEDROS', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4214805, N'RIO DO SUL', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4214904, N'RIO FORTUNA', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4215000, N'RIO NEGRINHO', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4215059, N'RIO RUFINO', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4215075, N'RIQUEZA', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4215109, N'RODEIO', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4215208, N'ROMELÂNDIA', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4215307, N'SALETE', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4215356, N'SALTINHO', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4215406, N'SALTO VELOSO', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4215455, N'SANGÃO', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4215505, N'SANTA CECÍLIA', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4215554, N'SANTA HELENA', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4215604, N'SANTA ROSA DE LIMA', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4215653, N'SANTA ROSA DO SUL', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4215679, N'SANTA TEREZINHA', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4215687, N'SANTA TEREZINHA DO PROGRESSO', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4215695, N'SANTIA DO SUL', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4215703, N'SANTO AMARO DA IMPERATRIZ', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4215752, N'SÃO BERNARDINO', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4215802, N'SÃO BENTO DO SUL', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4215901, N'SÃO BONIFÁCIO', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4216008, N'SÃO CARLOS', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4216057, N'SÃO CRISTOVÃO DO SUL', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4216107, N'SÃO DOMINS', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4216206, N'SÃO FRANCISCO DO SUL', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4216255, N'SÃO JOÃO DO OESTE', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4216305, N'SÃO JOÃO BATISTA', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4216354, N'SÃO JOÃO DO ITAPERIÚ', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4216404, N'SÃO JOÃO DO SUL', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4216503, N'SÃO JOAQUIM', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4216602, N'SÃO JOSÉ', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4216701, N'SÃO JOSÉ DO CEDRO', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4216800, N'SÃO JOSÉ DO CERRITO', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4216909, N'SÃO LOURENÇO DO OESTE', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4217006, N'SÃO LUDGERO', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4217105, N'SÃO MARTINHO', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4217154, N'SÃO MIGUEL DA BOA VISTA', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4217204, N'SÃO MIGUEL DO OESTE', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4217253, N'SÃO PEDRO DE ALCÂNTARA', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4217303, N'SAUDADES', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4217402, N'SCHROEDER', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4217501, N'SEARA', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4217550, N'SERRA ALTA', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4217600, N'SIDERÓPOLIS', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4217709, N'SOMBRIO', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4217758, N'SUL BRASIL', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4217808, N'TAIÓ', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4217907, N'TANGARÁ', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4217956, N'TIGRINHOS', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4218004, N'TIJUCAS', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4218103, N'TIMBÉ DO SUL', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4218202, N'TIMBÓ', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4218251, N'TIMBÓ GRANDE', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4218301, N'TRÊS BARRAS', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4218350, N'TREVISO', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4218400, N'TREZE DE MAIO', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4218509, N'TREZE TÍLIAS', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4218608, N'TROMBUDO CENTRAL', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4218707, N'TUBARÃO', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4218756, N'TUNÁPOLIS', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4218806, N'TURVO', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4218855, N'UNIÃO DO OESTE', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4218905, N'URUBICI', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4218954, N'URUPEMA', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4219002, N'URUSSANGA', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4219101, N'VARGEÃO', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4219150, N'VARGEM', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4219176, N'VARGEM BONITA', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4219200, N'VIDAL RAMOS', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4219309, N'VIDEIRA', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4219358, N'VITOR MEIRELES', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4219408, N'WITMARSUM', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4219507, N'XANXERÊ', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4219606, N'XAVANTINA', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4219705, N'XAXIM', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4219853, N'ZORTÉA', 42);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4300034, N'ACEGUÁ', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4300059, N'ÁGUA SANTA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4300109, N'AGUDO', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4300208, N'AJURICABA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4300307, N'ALECRIM', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4300406, N'ALEGRETE', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4300455, N'ALEGRIA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4300471, N'ALMIRANTE TAMANDARÉ DO SUL', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4300505, N'ALPESTRE', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4300554, N'ALTO ALEGRE', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4300570, N'ALTO FELIZ', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4300604, N'ALVORADA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4300638, N'AMARAL FERRADOR', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4300646, N'AMETISTA DO SUL', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4300661, N'ANDRÉ DA ROCHA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4300703, N'ANTA RDA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4300802, N'ANTÔNIO PRADO', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4300851, N'ARAMBARÉ', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4300877, N'ARARICÁ', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4300901, N'ARATIBA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4301008, N'ARROIO DO MEIO', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4301057, N'ARROIO DO SAL', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4301073, N'ARROIO DO PADRE', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4301107, N'ARROIO DOS RATOS', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4301206, N'ARROIO DO TIGRE', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4301305, N'ARROIO GRANDE', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4301404, N'ARVOREZINHA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4301503, N'AUGUSTO PESTANA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4301552, N'ÁUREA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4301602, N'BAGÉ', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4301636, N'BALNEÁRIO PINHAL', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4301651, N'BARÃO', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4301701, N'BARÃO DE COTEGIPE', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4301750, N'BARÃO DO TRIUNFO', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4301800, N'BARRACÃO', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4301859, N'BARRA DO GUARITA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4301875, N'BARRA DO QUARAÍ', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4301909, N'BARRA DO RIBEIRO', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4301925, N'BARRA DO RIO AZUL', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4301958, N'BARRA FUNDA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4302006, N'BARROS CASSAL', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4302055, N'BENJAMIN CONSTANT DO SUL', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4302105, N'BENTO NÇALVES', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4302154, N'BOA VISTA DAS MISSÕES', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4302204, N'BOA VISTA DO BURICÁ', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4302220, N'BOA VISTA DO CADEADO', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4302238, N'BOA VISTA DO INCRA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4302253, N'BOA VISTA DO SUL', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4302303, N'BOM JESUS', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4302352, N'BOM PRINCÍPIO', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4302378, N'BOM PROGRESSO', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4302402, N'BOM RETIRO DO SUL', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4302451, N'BOQUEIRÃO DO LEÃO', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4302501, N'BOSSOROCA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4302584, N'BOZANO', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4302600, N'BRAGA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4302659, N'BROCHIER', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4302709, N'BUTIÁ', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4302808, N'CAÇAPAVA DO SUL', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4302907, N'CACEQUI', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4303004, N'CACHOEIRA DO SUL', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4303103, N'CACHOEIRINHA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4303202, N'CACIQUE DOBLE', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4303301, N'CAIBATÉ', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4303400, N'CAIÇARA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4303509, N'CAMAQUÃ', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4303558, N'CAMAR', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4303608, N'CAMBARÁ DO SUL', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4303673, N'CAMPESTRE DA SERRA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4303707, N'CAMPINA DAS MISSÕES', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4303806, N'CAMPINAS DO SUL', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4303905, N'CAMPO BOM', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4304002, N'CAMPO NOVO', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4304101, N'CAMPOS BORGES', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4304200, N'CANDELÁRIA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4304309, N'CÂNDIDO DÓI', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4304358, N'CANDIOTA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4304408, N'CANELA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4304507, N'CANGUÇU', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4304606, N'CANOAS', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4304614, N'CANUDOS DO VALE', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4304622, N'CAPÃO BONITO DO SUL', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4304630, N'CAPÃO DA CANOA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4304655, N'CAPÃO DO CIPÓ', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4304663, N'CAPÃO DO LEÃO', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4304671, N'CAPIVARI DO SUL', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4304689, N'CAPELA DE SANTANA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4304697, N'CAPITÃO', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4304705, N'CARAZINHO', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4304713, N'CARAÁ', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4304804, N'CARLOS BARBOSA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4304853, N'CARLOS MES', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4304903, N'CASCA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4304952, N'CASEIROS', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4305009, N'CATUÍPE', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4305108, N'CAXIAS DO SUL', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4305116, N'CENTENÁRIO', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4305124, N'CERRITO', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4305132, N'CERRO BRANCO', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4305157, N'CERRO GRANDE', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4305173, N'CERRO GRANDE DO SUL', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4305207, N'CERRO LAR', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4305306, N'CHAPADA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4305355, N'CHARQUEADAS', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4305371, N'CHARRUA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4305405, N'CHIAPETTA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4305439, N'CHUÍ', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4305447, N'CHUVISCA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4305454, N'CIDREIRA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4305504, N'CIRÍACO', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4305587, N'COLINAS', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4305603, N'COLORADO', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4305702, N'CONDOR', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4305801, N'CONSTANTINA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4305835, N'COQUEIRO BAIXO', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4305850, N'COQUEIROS DO SUL', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4305871, N'CORONEL BARROS', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4305900, N'CORONEL BICACO', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4305934, N'CORONEL PILAR', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4305959, N'COTIPORÃ', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4305975, N'COXILHA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4306007, N'CRISSIUMAL', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4306056, N'CRISTAL', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4306072, N'CRISTAL DO SUL', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4306106, N'CRUZ ALTA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4306130, N'CRUZALTENSE', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4306205, N'CRUZEIRO DO SUL', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4306304, N'DAVID CANABARRO', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4306320, N'DERRUBADAS', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4306353, N'DEZESSEIS DE NOVEMBRO', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4306379, N'DILERMANDO DE AGUIAR', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4306403, N'DOIS IRMÃOS', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4306429, N'DOIS IRMÃOS DAS MISSÕES', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4306452, N'DOIS LAJEADOS', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4306502, N'DOM FELICIANO', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4306551, N'DOM PEDRO DE ALCÂNTARA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4306601, N'DOM PEDRITO', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4306700, N'DONA FRANCISCA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4306734, N'DOUTOR MAURÍCIO CARDOSO', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4306759, N'DOUTOR RICARDO', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4306767, N'ELDORADO DO SUL', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4306809, N'ENCANTADO', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4306908, N'ENCRUZILHADA DO SUL', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4306924, N'ENGENHO VELHO', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4306932, N'ENTRE-IJUÍS', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4306957, N'ENTRE RIOS DO SUL', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4306973, N'EREBAN', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4307005, N'ERECHIM', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4307054, N'ERNESTINA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4307104, N'HERVAL', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4307203, N'ERVAL GRANDE', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4307302, N'ERVAL SECO', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4307401, N'ESMERALDA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4307450, N'ESPERANÇA DO SUL', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4307500, N'ESPUMOSO', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4307559, N'ESTAÇÃO', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4307609, N'ESTÂNCIA VELHA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4307708, N'ESTEIO', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4307807, N'ESTRELA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4307815, N'ESTRELA VELHA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4307831, N'EUGÊNIO DE CASTRO', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4307864, N'FAGUNDES VARELA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4307906, N'FARROUPILHA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4308003, N'FAXINAL DO SOTURNO', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4308052, N'FAXINALZINHO', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4308078, N'FAZENDA VILANOVA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4308102, N'FELIZ', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4308201, N'FLORES DA CUNHA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4308250, N'FLORIANO PEIXOTO', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4308300, N'FONTOURA XAVIER', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4308409, N'FORMIGUEIRO', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4308433, N'FORQUETINHA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4308458, N'FORTALEZA DOS VALOS', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4308508, N'FREDERICO WESTPHALEN', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4308607, N'GARIBALDI', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4308656, N'GARRUCHOS', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4308706, N'GAURAMA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4308805, N'GENERAL CÂMARA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4308854, N'GENTIL', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4308904, N'GETÚLIO VARGAS', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4309001, N'GIRUÁ', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4309050, N'GLORINHA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4309100, N'GRAMADO', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4309126, N'GRAMADO DOS LOUREIROS', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4309159, N'GRAMADO XAVIER', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4309209, N'GRAVATAÍ', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4309258, N'GUABIJU', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4309308, N'GUAÍBA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4309407, N'GUAPORÉ', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4309506, N'GUARANI DAS MISSÕES', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4309555, N'HARMONIA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4309571, N'HERVEIRAS', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4309605, N'HORIZONTINA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4309654, N'HULHA NEGRA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4309704, N'HUMAITÁ', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4309753, N'IBARAMA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4309803, N'IBIAÇÁ', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4309902, N'IBIRAIARAS', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4309951, N'IBIRAPUITÃ', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4310009, N'IBIRUBÁ', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4310108, N'IGREJINHA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4310207, N'IJUÍ', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4310306, N'ILÓPOLIS', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4310330, N'IMBÉ', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4310363, N'IMIGRANTE', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4310405, N'INDEPENDÊNCIA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4310413, N'INHACORÁ', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4310439, N'IPÊ', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4310462, N'IPIRANGA DO SUL', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4310504, N'IRAÍ', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4310538, N'ITAARA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4310553, N'ITACURUBI', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4310579, N'ITAPUCA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4310603, N'ITAQUI', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4310652, N'ITATI', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4310702, N'ITATIBA DO SUL', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4310751, N'IVORÁ', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4310801, N'IVOTI', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4310850, N'JABOTICABA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4310876, N'JACUIZINHO', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4310900, N'JACUTINGA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4311007, N'JAGUARÃO', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4311106, N'JAGUARI', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4311122, N'JAQUIRANA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4311130, N'JARI', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4311155, N'JÓIA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4311205, N'JÚLIO DE CASTILHOS', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4311239, N'LAA BONITA DO SUL', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4311254, N'LAÃO', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4311270, N'LAA DOS TRÊS CANTOS', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4311304, N'LAA VERMELHA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4311403, N'LAJEADO', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4311429, N'LAJEADO DO BUGRE', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4311502, N'LAVRAS DO SUL', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4311601, N'LIBERATO SALZANO', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4311627, N'LINDOLFO COLLOR', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4311643, N'LINHA NOVA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4311700, N'MACHADINHO', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4311718, N'MAÇAMBARÁ', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4311734, N'MAMPITUBA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4311759, N'MANOEL VIANA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4311775, N'MAQUINÉ', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4311791, N'MARATÁ', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4311809, N'MARAU', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4311908, N'MARCELINO RAMOS', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4311981, N'MARIANA PIMENTEL', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4312005, N'MARIANO MORO', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4312054, N'MARQUES DE SOUZA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4312104, N'MATA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4312138, N'MATO CASTELHANO', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4312153, N'MATO LEITÃO', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4312179, N'MATO QUEIMADO', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4312203, N'MAXIMILIANO DE ALMEIDA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4312252, N'MINAS DO LEÃO', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4312302, N'MIRAGUAÍ', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4312351, N'MONTAURI', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4312377, N'MONTE ALEGRE DOS CAMPOS', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4312385, N'MONTE BELO DO SUL', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4312401, N'MONTENEGRO', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4312427, N'MORMAÇO', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4312443, N'MORRINHOS DO SUL', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4312450, N'MORRO REDONDO', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4312476, N'MORRO REUTER', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4312500, N'MOSTARDAS', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4312609, N'MUÇUM', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4312617, N'MUITOS CAPÕES', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4312625, N'MULITERNO', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4312658, N'NÃO-ME-TOQUE', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4312674, N'NICOLAU VERGUEIRO', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4312708, N'NONOAI', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4312757, N'NOVA ALVORADA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4312807, N'NOVA ARAÇÁ', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4312906, N'NOVA BASSANO', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4312955, N'NOVA BOA VISTA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4313003, N'NOVA BRÉSCIA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4313011, N'NOVA CANDELÁRIA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4313037, N'NOVA ESPERANÇA DO SUL', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4313060, N'NOVA HARTZ', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4313086, N'NOVA PÁDUA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4313102, N'NOVA PALMA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4313201, N'NOVA PETRÓPOLIS', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4313300, N'NOVA PRATA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4313334, N'NOVA RAMADA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4313359, N'NOVA ROMA DO SUL', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4313375, N'NOVA SANTA RITA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4313391, N'NOVO CABRAIS', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4313409, N'NOVO HAMBUR', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4313425, N'NOVO MACHADO', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4313441, N'NOVO TIRADENTES', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4313466, N'NOVO XINGU', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4313490, N'NOVO BARREIRO', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4313508, N'OSÓRIO', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4313607, N'PAIM FILHO', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4313656, N'PALMARES DO SUL', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4313706, N'PALMEIRA DAS MISSÕES', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4313805, N'PALMITINHO', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4313904, N'PANAMBI', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4313953, N'PANTANO GRANDE', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4314001, N'PARAÍ', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4314027, N'PARAÍSO DO SUL', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4314035, N'PARECI NOVO', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4314050, N'PAROBÉ', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4314068, N'PASSA SETE', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4314076, N'PASSO DO SOBRADO', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4314100, N'PASSO FUNDO', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4314134, N'PAULO BENTO', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4314159, N'PAVERAMA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4314175, N'PEDRAS ALTAS', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4314209, N'PEDRO OSÓRIO', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4314308, N'PEJUÇARA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4314407, N'PELOTAS', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4314423, N'PICADA CAFÉ', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4314456, N'PINHAL', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4314464, N'PINHAL DA SERRA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4314472, N'PINHAL GRANDE', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4314498, N'PINHEIRINHO DO VALE', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4314506, N'PINHEIRO MACHADO', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4314555, N'PIRAPÓ', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4314605, N'PIRATINI', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4314704, N'PLANALTO', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4314753, N'POÇO DAS ANTAS', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4314779, N'PONTÃO', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4314787, N'PONTE PRETA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4314803, N'PORTÃO', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4314902, N'PORTO ALEGRE', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4315008, N'PORTO LUCENA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4315057, N'PORTO MAUÁ', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4315073, N'PORTO VERA CRUZ', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4315107, N'PORTO XAVIER', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4315131, N'POUSO NOVO', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4315149, N'PRESIDENTE LUCENA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4315156, N'PROGRESSO', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4315172, N'PROTÁSIO ALVES', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4315206, N'PUTINGA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4315305, N'QUARAÍ', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4315313, N'QUATRO IRMÃOS', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4315321, N'QUEVEDOS', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4315354, N'QUINZE DE NOVEMBRO', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4315404, N'REDENTORA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4315453, N'RELVADO', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4315503, N'RESTINGA SECA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4315552, N'RIO DOS ÍNDIOS', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4315602, N'RIO GRANDE', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4315701, N'RIO PARDO', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4315750, N'RIOZINHO', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4315800, N'ROCA SALES', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4315909, N'RODEIO BONITO', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4315958, N'ROLADOR', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4316006, N'ROLANTE', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4316105, N'RONDA ALTA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4316204, N'RONDINHA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4316303, N'ROQUE NZALES', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4316402, N'ROSÁRIO DO SUL', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4316428, N'SAGRADA FAMÍLIA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4316436, N'SALDANHA MARINHO', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4316451, N'SALTO DO JACUÍ', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4316477, N'SALVADOR DAS MISSÕES', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4316501, N'SALVADOR DO SUL', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4316600, N'SANANDUVA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4316709, N'SANTA BÁRBARA DO SUL', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4316733, N'SANTA CECÍLIA DO SUL', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4316758, N'SANTA CLARA DO SUL', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4316808, N'SANTA CRUZ DO SUL', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4316907, N'SANTA MARIA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4316956, N'SANTA MARIA DO HERVAL', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4316972, N'SANTA MARGARIDA DO SUL', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4317004, N'SANTANA DA BOA VISTA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4317103, N'SANT  ANA DO LIVRAMENTO', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4317202, N'SANTA ROSA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4317251, N'SANTA TEREZA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4317301, N'SANTA VITÓRIA DO PALMAR', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4317400, N'SANTIA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4317509, N'SANTO ÂNGELO', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4317558, N'SANTO ANTÔNIO DO PALMA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4317608, N'SANTO ANTÔNIO DA PATRULHA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4317707, N'SANTO ANTÔNIO DAS MISSÕES', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4317756, N'SANTO ANTÔNIO DO PLANALTO', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4317806, N'SANTO AUGUSTO', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4317905, N'SANTO CRISTO', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4317954, N'SANTO EXPEDITO DO SUL', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4318002, N'SÃO BORJA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4318051, N'SÃO DOMINS DO SUL', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4318101, N'SÃO FRANCISCO DE ASSIS', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4318200, N'SÃO FRANCISCO DE PAULA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4318309, N'SÃO GABRIEL', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4318408, N'SÃO JERÔNIMO', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4318424, N'SÃO JOÃO DA URTIGA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4318432, N'SÃO JOÃO DO POLÊSINE', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4318440, N'SÃO JORGE', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4318457, N'SÃO JOSÉ DAS MISSÕES', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4318465, N'SÃO JOSÉ DO HERVAL', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4318481, N'SÃO JOSÉ DO HORTÊNCIO', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4318499, N'SÃO JOSÉ DO INHACORÁ', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4318507, N'SÃO JOSÉ DO NORTE', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4318606, N'SÃO JOSÉ DO OURO', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4318614, N'SÃO JOSÉ DO SUL', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4318622, N'SÃO JOSÉ DOS AUSENTES', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4318705, N'SÃO LEOPOLDO', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4318804, N'SÃO LOURENÇO DO SUL', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4318903, N'SÃO LUIZ NZAGA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4319000, N'SÃO MARCOS', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4319109, N'SÃO MARTINHO', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4319125, N'SÃO MARTINHO DA SERRA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4319158, N'SÃO MIGUEL DAS MISSÕES', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4319208, N'SÃO NICOLAU', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4319307, N'SÃO PAULO DAS MISSÕES', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4319356, N'SÃO PEDRO DA SERRA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4319364, N'SÃO PEDRO DAS MISSÕES', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4319372, N'SÃO PEDRO DO BUTIÁ', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4319406, N'SÃO PEDRO DO SUL', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4319505, N'SÃO SEBASTIÃO DO CAÍ', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4319604, N'SÃO SEPÉ', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4319703, N'SÃO VALENTIM', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4319711, N'SÃO VALENTIM DO SUL', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4319737, N'SÃO VALÉRIO DO SUL', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4319752, N'SÃO VENDELINO', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4319802, N'SÃO VICENTE DO SUL', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4319901, N'SAPIRANGA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4320008, N'SAPUCAIA DO SUL', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4320107, N'SARANDI', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4320206, N'SEBERI', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4320230, N'SEDE NOVA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4320263, N'SEGREDO', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4320305, N'SELBACH', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4320321, N'SENADOR SALGADO FILHO', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4320354, N'SENTINELA DO SUL', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4320404, N'SERAFINA CORRÊA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4320453, N'SÉRIO', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4320503, N'SERTÃO', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4320552, N'SERTÃO SANTANA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4320578, N'SETE DE SETEMBRO', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4320602, N'SEVERIANO DE ALMEIDA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4320651, N'SILVEIRA MARTINS', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4320677, N'SINIMBU', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4320701, N'SOBRADINHO', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4320800, N'SOLEDADE', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4320859, N'TABAÍ', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4320909, N'TAPEJARA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4321006, N'TAPERA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4321105, N'TAPES', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4321204, N'TAQUARA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4321303, N'TAQUARI', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4321329, N'TAQUARUÇU DO SUL', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4321352, N'TAVARES', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4321402, N'TENENTE PORTELA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4321436, N'TERRA DE AREIA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4321451, N'TEUTÔNIA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4321469, N'TIO HU', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4321477, N'TIRADENTES DO SUL', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4321493, N'TOROPI', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4321501, N'TORRES', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4321600, N'TRAMANDAÍ', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4321626, N'TRAVESSEIRO', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4321634, N'TRÊS ARROIOS', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4321667, N'TRÊS CACHOEIRAS', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4321709, N'TRÊS COROAS', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4321808, N'TRÊS DE MAIO', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4321832, N'TRÊS FORQUILHAS', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4321857, N'TRÊS PALMEIRAS', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4321907, N'TRÊS PASSOS', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4321956, N'TRINDADE DO SUL', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4322004, N'TRIUNFO', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4322103, N'TUCUNDUVA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4322152, N'TUNAS', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4322186, N'TUPANCI DO SUL', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4322202, N'TUPANCIRETÃ', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4322251, N'TUPANDI', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4322301, N'TUPARENDI', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4322327, N'TURUÇU', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4322343, N'UBIRETAMA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4322350, N'UNIÃO DA SERRA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4322376, N'UNISTALDA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4322400, N'URUGUAIANA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4322509, N'VACARIA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4322525, N'VALE VERDE', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4322533, N'VALE DO SOL', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4322541, N'VALE REAL', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4322558, N'VANINI', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4322608, N'VENÂNCIO AIRES', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4322707, N'VERA CRUZ', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4322806, N'VERANÓPOLIS', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4322855, N'VESPASIANO CORREA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4322905, N'VIADUTOS', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4323002, N'VIAMÃO', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4323101, N'VICENTE DUTRA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4323200, N'VICTOR GRAEFF', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4323309, N'VILA FLORES', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4323358, N'VILA LÂNGARO', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4323408, N'VILA MARIA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4323457, N'VILA NOVA DO SUL', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4323507, N'VISTA ALEGRE', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4323606, N'VISTA ALEGRE DO PRATA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4323705, N'VISTA GAÚCHA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4323754, N'VITÓRIA DAS MISSÕES', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4323770, N'WESTFALIA', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (4323804, N'XANGRI-LÁ', 43);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5000203, N'ÁGUA CLARA', 50);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5000252, N'ALCINÓPOLIS', 50);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5000609, N'AMAMBAI', 50);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5000708, N'ANASTÁCIO', 50);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5000807, N'ANAURILÂNDIA', 50);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5000856, N'ANGÉLICA', 50);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5000906, N'ANTÔNIO JOÃO', 50);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5001003, N'APARECIDA DO TABOADO', 50);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5001102, N'AQUIDAUANA', 50);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5001243, N'ARAL MOREIRA', 50);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5001508, N'BANDEIRANTES', 50);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5001904, N'BATAGUASSU', 50);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5002001, N'BATAYPORÃ', 50);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5002100, N'BELA VISTA', 50);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5002159, N'BODOQUENA', 50);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5002209, N'BONITO', 50);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5002308, N'BRASILÂNDIA', 50);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5002407, N'CAARAPÓ', 50);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5002605, N'CAMAPUÃ', 50);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5002704, N'CAMPO GRANDE', 50);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5002803, N'CARACOL', 50);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5002902, N'CASSILÂNDIA', 50);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5002951, N'CHAPADÃO DO SUL', 50);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5003108, N'CORGUINHO', 50);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5003157, N'CORONEL SAPUCAIA', 50);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5003207, N'CORUMBÁ', 50);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5003256, N'COSTA RICA', 50);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5003306, N'COXIM', 50);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5003454, N'DEODÁPOLIS', 50);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5003488, N'DOIS IRMÃOS DO BURITI', 50);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5003504, N'DOURADINA', 50);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5003702, N'DOURADOS', 50);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5003751, N'ELDORADO', 50);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5003801, N'FÁTIMA DO SUL', 50);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5003900, N'FIGUEIRÃO', 50);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5004007, N'GLÓRIA DE DOURADOS', 50);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5004106, N'GUIA LOPES DA LAGUNA', 50);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5004304, N'IGUATEMI', 50);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5004403, N'INOCÊNCIA', 50);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5004502, N'ITAPORÃ', 50);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5004601, N'ITAQUIRAÍ', 50);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5004700, N'IVINHEMA', 50);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5004809, N'JAPORÃ', 50);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5004908, N'JARAGUARI', 50);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5005004, N'JARDIM', 50);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5005103, N'JATEÍ', 50);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5005152, N'JUTI', 50);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5005202, N'LADÁRIO', 50);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5005251, N'LAGUNA CARAPÃ', 50);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5005400, N'MARACAJU', 50);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5005608, N'MIRANDA', 50);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5005681, N'MUNDO NOVO', 50);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5005707, N'NAVIRAÍ', 50);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5005806, N'NIOAQUE', 50);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5006002, N'NOVA ALVORADA DO SUL', 50);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5006200, N'NOVA ANDRADINA', 50);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5006259, N'NOVO HORIZONTE DO SUL', 50);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5006309, N'PARANAÍBA', 50);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5006358, N'PARANHOS', 50);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5006408, N'PEDRO MES', 50);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5006606, N'PONTA PORÃ', 50);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5006903, N'PORTO MURTINHO', 50);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5007109, N'RIBAS DO RIO PARDO', 50);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5007208, N'RIO BRILHANTE', 50);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5007307, N'RIO NEGRO', 50);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5007406, N'RIO VERDE DE MATO GROSSO', 50);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5007505, N'ROCHEDO', 50);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5007554, N'SANTA RITA DO PARDO', 50);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5007695, N'SÃO GABRIEL DO OESTE', 50);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5007703, N'SETE QUEDAS', 50);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5007802, N'SELVÍRIA', 50);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5007901, N'SIDROLÂNDIA', 50);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5007935, N'SONORA', 50);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5007950, N'TACURU', 50);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5007976, N'TAQUARUSSU', 50);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5008008, N'TERENOS', 50);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5008305, N'TRÊS LAAS', 50);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5008404, N'VICENTINA', 50);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5100102, N'ACORIZAL', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5100201, N'ÁGUA BOA', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5100250, N'ALTA FLORESTA', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5100300, N'ALTO ARAGUAIA', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5100359, N'ALTO BOA VISTA', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5100409, N'ALTO GARÇAS', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5100508, N'ALTO PARAGUAI', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5100607, N'ALTO TAQUARI', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5100805, N'APIACÁS', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5101001, N'ARAGUAIANA', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5101209, N'ARAGUAINHA', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5101258, N'ARAPUTANGA', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5101308, N'ARENÁPOLIS', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5101407, N'ARIPUANÃ', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5101605, N'BARÃO DE MELGAÇO', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5101704, N'BARRA DO BUGRES', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5101803, N'BARRA DO GARÇAS', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5101852, N'BOM JESUS DO ARAGUAIA', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5101902, N'BRASNORTE', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5102504, N'CÁCERES', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5102603, N'CAMPINÁPOLIS', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5102637, N'CAMPO NOVO DO PARECIS', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5102678, N'CAMPO VERDE', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5102686, N'CAMPOS DE JÚLIO', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5102694, N'CANABRAVA DO NORTE', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5102702, N'CANARANA', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5102793, N'CARLINDA', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5102850, N'CASTANHEIRA', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5103007, N'CHAPADA DOS GUIMARÃES', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5103056, N'CLÁUDIA', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5103106, N'COCALINHO', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5103205, N'COLÍDER', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5103254, N'COLNIZA', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5103304, N'COMODORO', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5103353, N'CONFRESA', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5103361, N'CONQUISTA D OESTE', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5103379, N'COTRIGUAÇU', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5103403, N'CUIABÁ', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5103437, N'CURVELÂNDIA', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5103452, N'DENISE', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5103502, N'DIAMANTINO', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5103601, N'DOM AQUINO', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5103700, N'FELIZ NATAL', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5103809, N'FIGUEIRÓPOLIS D OESTE', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5103858, N'GAÚCHA DO NORTE', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5103908, N'GENERAL CARNEIRO', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5103957, N'GLÓRIA D OESTE', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5104104, N'GUARANTÃ DO NORTE', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5104203, N'GUIRATINGA', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5104500, N'INDIAVAÍ', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5104526, N'IPIRANGA DO NORTE', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5104542, N'ITANHANGÁ', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5104559, N'ITAÚBA', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5104609, N'ITIQUIRA', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5104807, N'JACIARA', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5104906, N'JANGADA', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5105002, N'JAURU', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5105101, N'JUARA', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5105150, N'JUÍNA', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5105176, N'JURUENA', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5105200, N'JUSCIMEIRA', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5105234, N'LAMBARI D OESTE', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5105259, N'LUCAS DO RIO VERDE', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5105309, N'LUCIARA', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5105507, N'VILA BELA DA SANTÍSSIMA TRINDADE', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5105580, N'MARCELÂNDIA', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5105606, N'MATUPÁ', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5105622, N'MIRASSOL D OESTE', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5105903, N'NOBRES', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5106000, N'NORTELÂNDIA', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5106109, N'NOSSA SENHORA DO LIVRAMENTO', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5106158, N'NOVA BANDEIRANTES', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5106174, N'NOVA NAZARÉ', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5106182, N'NOVA LACERDA', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5106190, N'NOVA SANTA HELENA', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5106208, N'NOVA BRASILÂNDIA', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5106216, N'NOVA CANAÃ DO NORTE', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5106224, N'NOVA MUTUM', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5106232, N'NOVA OLÍMPIA', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5106240, N'NOVA UBIRATÃ', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5106257, N'NOVA XAVANTINA', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5106265, N'NOVO MUNDO', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5106273, N'NOVO HORIZONTE DO NORTE', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5106281, N'NOVO SÃO JOAQUIM', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5106299, N'PARANAÍTA', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5106307, N'PARANATINGA', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5106315, N'NOVO SANTO ANTÔNIO', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5106372, N'PEDRA PRETA', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5106422, N'PEIXOTO DE AZEVEDO', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5106455, N'PLANALTO DA SERRA', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5106505, N'POCONÉ', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5106653, N'PONTAL DO ARAGUAIA', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5106703, N'PONTE BRANCA', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5106752, N'PONTES E LACERDA', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5106778, N'PORTO ALEGRE DO NORTE', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5106802, N'PORTO DOS GAÚCHOS', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5106828, N'PORTO ESPERIDIÃO', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5106851, N'PORTO ESTRELA', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5107008, N'POXORÉO', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5107040, N'PRIMAVERA DO LESTE', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5107065, N'QUERÊNCIA', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5107107, N'SÃO JOSÉ DOS QUATRO MARCOS', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5107156, N'RESERVA DO CABAÇAL', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5107180, N'RIBEIRÃO CASCALHEIRA', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5107198, N'RIBEIRÃOZINHO', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5107206, N'RIO BRANCO', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5107248, N'SANTA CARMEM', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5107263, N'SANTO AFONSO', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5107297, N'SÃO JOSÉ DO POVO', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5107305, N'SÃO JOSÉ DO RIO CLARO', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5107354, N'SÃO JOSÉ DO XINGU', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5107404, N'SÃO PEDRO DA CIPA', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5107578, N'RONDOLÂNDIA', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5107602, N'RONDONÓPOLIS', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5107701, N'ROSÁRIO OESTE', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5107743, N'SANTA CRUZ DO XINGU', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5107750, N'SALTO DO CÉU', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5107768, N'SANTA RITA DO TRIVELATO', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5107776, N'SANTA TEREZINHA', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5107792, N'SANTO ANTÔNIO DO LESTE', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5107800, N'SANTO ANTÔNIO DO LEVERGER', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5107859, N'SÃO FÉLIX DO ARAGUAIA', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5107875, N'SAPEZAL', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5107883, N'SERRA NOVA DOURADA', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5107909, N'SINOP', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5107925, N'SORRISO', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5107941, N'TABAPORÃ', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5107958, N'TANGARÁ DA SERRA', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5108006, N'TAPURAH', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5108055, N'TERRA NOVA DO NORTE', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5108105, N'TESOURO', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5108204, N'TORIXORÉU', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5108303, N'UNIÃO DO SUL', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5108352, N'VALE DE SÃO DOMINS', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5108402, N'VÁRZEA GRANDE', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5108501, N'VERA', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5108600, N'VILA RICA', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5108808, N'NOVA GUARITA', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5108857, N'NOVA MARILÂNDIA', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5108907, N'NOVA MARINGÁ', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5108956, N'NOVA MONTE VERDE', 51);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5200050, N'ABADIA DE IÁS', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5200100, N'ABADIÂNIA', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5200134, N'ACREÚNA', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5200159, N'ADELÂNDIA', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5200175, N'ÁGUA FRIA DE IÁS', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5200209, N'ÁGUA LIMPA', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5200258, N'ÁGUAS LINDAS DE IÁS', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5200308, N'ALEXÂNIA', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5200506, N'ALOÂNDIA', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5200555, N'ALTO HORIZONTE', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5200605, N'ALTO PARAÍSO DE IÁS', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5200803, N'ALVORADA DO NORTE', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5200829, N'AMARALINA', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5200852, N'AMERICANO DO BRASIL', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5200902, N'AMORINÓPOLIS', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5201108, N'ANÁPOLIS', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5201207, N'ANHANGUERA', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5201306, N'ANICUNS', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5201405, N'APARECIDA DE IÂNIA', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5201454, N'APARECIDA DO RIO DOCE', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5201504, N'APORÉ', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5201603, N'ARAÇU', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5201702, N'ARAGARÇAS', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5201801, N'ARAIÂNIA', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5202155, N'ARAGUAPAZ', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5202353, N'ARENÓPOLIS', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5202502, N'ARUANÃ', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5202601, N'AURILÂNDIA', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5202809, N'AVELINÓPOLIS', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5203104, N'BALIZA', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5203203, N'BARRO ALTO', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5203302, N'BELA VISTA DE IÁS', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5203401, N'BOM JARDIM DE IÁS', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5203500, N'BOM JESUS DE IÁS', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5203559, N'BONFINÓPOLIS', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5203575, N'BONÓPOLIS', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5203609, N'BRAZABRANTES', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5203807, N'BRITÂNIA', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5203906, N'BURITI ALEGRE', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5203939, N'BURITI DE IÁS', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5203962, N'BURITINÓPOLIS', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5204003, N'CABECEIRAS', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5204102, N'CACHOEIRA ALTA', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5204201, N'CACHOEIRA DE IÁS', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5204250, N'CACHOEIRA DOURADA', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5204300, N'CAÇU', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5204409, N'CAIAPÔNIA', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5204508, N'CALDAS NOVAS', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5204557, N'CALDAZINHA', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5204607, N'CAMPESTRE DE IÁS', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5204656, N'CAMPINAÇU', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5204706, N'CAMPINORTE', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5204805, N'CAMPO ALEGRE DE IÁS', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5204854, N'CAMPO LIMPO DE IÁS', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5204904, N'CAMPOS BELOS', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5204953, N'CAMPOS VERDES', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5205000, N'CARMO DO RIO VERDE', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5205059, N'CASTELÂNDIA', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5205109, N'CATALÃO', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5205208, N'CATURAÍ', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5205307, N'CAVALCANTE', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5205406, N'CERES', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5205455, N'CEZARINA', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5205471, N'CHAPADÃO DO CÉU', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5205497, N'CIDADE OCIDENTAL', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5205513, N'COCALZINHO DE IÁS', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5205521, N'COLINAS DO SUL', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5205703, N'CÓRRE DO OURO', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5205802, N'CORUMBÁ DE IÁS', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5205901, N'CORUMBAÍBA', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5206206, N'CRISTALINA', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5206305, N'CRISTIANÓPOLIS', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5206404, N'CRIXÁS', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5206503, N'CROMÍNIA', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5206602, N'CUMARI', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5206701, N'DAMIANÓPOLIS', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5206800, N'DAMOLÂNDIA', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5206909, N'DAVINÓPOLIS', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5207105, N'DIORAMA', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5207253, N'DOVERLÂNDIA', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5207352, N'EDEALINA', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5207402, N'EDÉIA', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5207501, N'ESTRELA DO NORTE', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5207535, N'FAINA', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5207600, N'FAZENDA NOVA', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5207808, N'FIRMINÓPOLIS', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5207907, N'FLORES DE IÁS', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5208004, N'FORMOSA', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5208103, N'FORMOSO', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5208152, N'GAMELEIRA DE IÁS', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5208301, N'DIVINÓPOLIS DE IÁS', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5208400, N'IANÁPOLIS', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5208509, N'IANDIRA', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5208608, N'IANÉSIA', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5208707, N'IÂNIA', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5208806, N'IANIRA', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5208905, N'IÁS', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5209101, N'IATUBA', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5209150, N'UVELÂNDIA', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5209200, N'GUAPÓ', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5209291, N'GUARAÍTA', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5209408, N'GUARANI DE IÁS', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5209457, N'GUARINOS', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5209606, N'HEITORAÍ', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5209705, N'HIDROLÂNDIA', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5209804, N'HIDROLINA', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5209903, N'IACIARA', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5209937, N'INACIOLÂNDIA', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5209952, N'INDIARA', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5210000, N'INHUMAS', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5210109, N'IPAMERI', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5210158, N'IPIRANGA DE IÁS', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5210208, N'IPORÁ', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5210307, N'ISRAELÂNDIA', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5210406, N'ITABERAÍ', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5210562, N'ITAGUARI', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5210604, N'ITAGUARU', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5210802, N'ITAJÁ', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5210901, N'ITAPACI', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5211008, N'ITAPIRAPUÃ', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5211206, N'ITAPURANGA', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5211305, N'ITARUMÃ', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5211404, N'ITAUÇU', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5211503, N'ITUMBIARA', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5211602, N'IVOLÂNDIA', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5211701, N'JANDAIA', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5211800, N'JARAGUÁ', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5211909, N'JATAÍ', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5212006, N'JAUPACI', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5212055, N'JESÚPOLIS', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5212105, N'JOVIÂNIA', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5212204, N'JUSSARA', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5212253, N'LAA SANTA', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5212303, N'LEOPOLDO DE BULHÕES', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5212501, N'LUZIÂNIA', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5212600, N'MAIRIPOTABA', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5212709, N'MAMBAÍ', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5212808, N'MARA ROSA', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5212907, N'MARZAGÃO', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5212956, N'MATRINCHÃ', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5213004, N'MAURILÂNDIA', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5213053, N'MIMOSO DE IÁS', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5213087, N'MINAÇU', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5213103, N'MINEIROS', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5213400, N'MOIPORÁ', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5213509, N'MONTE ALEGRE DE IÁS', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5213707, N'MONTES CLAROS DE IÁS', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5213756, N'MONTIVIDIU', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5213772, N'MONTIVIDIU DO NORTE', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5213806, N'MORRINHOS', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5213855, N'MORRO AGUDO DE IÁS', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5213905, N'MOSSÂMEDES', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5214002, N'MOZARLÂNDIA', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5214051, N'MUNDO NOVO', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5214101, N'MUTUNÓPOLIS', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5214408, N'NAZÁRIO', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5214507, N'NERÓPOLIS', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5214606, N'NIQUELÂNDIA', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5214705, N'NOVA AMÉRICA', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5214804, N'NOVA AURORA', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5214838, N'NOVA CRIXÁS', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5214861, N'NOVA GLÓRIA', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5214879, N'NOVA IGUAÇU DE IÁS', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5214903, N'NOVA ROMA', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5215009, N'NOVA VENEZA', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5215207, N'NOVO BRASIL', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5215231, N'NOVO GAMA', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5215256, N'NOVO PLANALTO', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5215306, N'ORIZONA', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5215405, N'OURO VERDE DE IÁS', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5215504, N'OUVIDOR', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5215603, N'PADRE BERNARDO', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5215652, N'PALESTINA DE IÁS', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5215702, N'PALMEIRAS DE IÁS', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5215801, N'PALMELO', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5215900, N'PALMINÓPOLIS', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5216007, N'PANAMÁ', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5216304, N'PARANAIGUARA', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5216403, N'PARAÚNA', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5216452, N'PEROLÂNDIA', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5216809, N'PETROLINA DE IÁS', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5216908, N'PILAR DE IÁS', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5217104, N'PIRACANJUBA', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5217203, N'PIRANHAS', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5217302, N'PIRENÓPOLIS', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5217401, N'PIRES DO RIO', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5217609, N'PLANALTINA', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5217708, N'PONTALINA', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5218003, N'PORANGATU', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5218052, N'PORTEIRÃO', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5218102, N'PORTELÂNDIA', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5218300, N'POSSE', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5218391, N'PROFESSOR JAMIL', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5218508, N'QUIRINÓPOLIS', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5218607, N'RIALMA', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5218706, N'RIANÁPOLIS', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5218789, N'RIO QUENTE', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5218805, N'RIO VERDE', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5218904, N'RUBIATABA', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5219001, N'SANCLERLÂNDIA', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5219100, N'SANTA BÁRBARA DE IÁS', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5219209, N'SANTA CRUZ DE IÁS', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5219258, N'SANTA FÉ DE IÁS', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5219308, N'SANTA HELENA DE IÁS', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5219357, N'SANTA ISABEL', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5219407, N'SANTA RITA DO ARAGUAIA', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5219456, N'SANTA RITA DO NOVO DESTINO', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5219506, N'SANTA ROSA DE IÁS', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5219605, N'SANTA TEREZA DE IÁS', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5219704, N'SANTA TEREZINHA DE IÁS', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5219712, N'SANTO ANTÔNIO DA BARRA', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5219738, N'SANTO ANTÔNIO DE IÁS', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5219753, N'SANTO ANTÔNIO DO DESCOBERTO', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5219803, N'SÃO DOMINS', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5219902, N'SÃO FRANCISCO DE IÁS', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5220009, N'SÃO JOÃO D ALIANÇA', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5220058, N'SÃO JOÃO DA PARAÚNA', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5220108, N'SÃO LUÍS DE MONTES BELOS', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5220157, N'SÃO LUÍZ DO NORTE', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5220207, N'SÃO MIGUEL DO ARAGUAIA', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5220264, N'SÃO MIGUEL DO PASSA QUATRO', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5220280, N'SÃO PATRÍCIO', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5220405, N'SÃO SIMÃO', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5220454, N'SENADOR CANEDO', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5220504, N'SERRANÓPOLIS', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5220603, N'SILVÂNIA', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5220686, N'SIMOLÂNDIA', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5220702, N'SÍTIO D ABADIA', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5221007, N'TAQUARAL DE IÁS', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5221080, N'TERESINA DE IÁS', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5221197, N'TEREZÓPOLIS DE IÁS', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5221304, N'TRÊS RANCHOS', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5221403, N'TRINDADE', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5221452, N'TROMBAS', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5221502, N'TURVÂNIA', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5221551, N'TURVELÂNDIA', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5221577, N'UIRAPURU', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5221601, N'URUAÇU', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5221700, N'URUANA', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5221809, N'URUTAÍ', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5221858, N'VALPARAÍSO DE IÁS', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5221908, N'VARJÃO', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5222005, N'VIANÓPOLIS', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5222054, N'VICENTINÓPOLIS', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5222203, N'VILA BOA', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5222302, N'VILA PROPÍCIO', 52);
                                    
INSERT INTO `City` (Id,Name,IdState) VALUES (5300108, N'BRASÍLIA', 53);

INSERT INTO `Country` (Id,Name) VALUES (1058, N'Brasil');

INSERT INTO `State` (Id,IdCountry,Name,Acronym) VALUES (11, 1058, N'RONDONIA', N'RO');

INSERT INTO `State` (Id,IdCountry,Name,Acronym) VALUES (12, 1058, N'ACRE', N'AC');

INSERT INTO `State` (Id,IdCountry,Name,Acronym) VALUES (13, 1058, N'AMAZONAS', N'AM');

INSERT INTO `State` (Id,IdCountry,Name,Acronym) VALUES (14, 1058, N'RORAIMA', N'RR');

INSERT INTO `State` (Id,IdCountry,Name,Acronym) VALUES (15, 1058, N'PARÁ', N'PA');

INSERT INTO `State` (Id,IdCountry,Name,Acronym) VALUES (16, 1058, N'AMAPA', N'AP');

INSERT INTO `State` (Id,IdCountry,Name,Acronym) VALUES (17, 1058, N'TOCANTINS', N'TO');

INSERT INTO `State` (Id,IdCountry,Name,Acronym) VALUES (21, 1058, N'MARANHÃO', N'MA');

INSERT INTO `State` (Id,IdCountry,Name,Acronym) VALUES (22, 1058, N'PIAUI', N'PI');

INSERT INTO `State` (Id,IdCountry,Name,Acronym) VALUES (23, 1058, N'CEARA', N'CE');

INSERT INTO `State` (Id,IdCountry,Name,Acronym) VALUES (24, 1058, N'RIO GRANDE DO NORTE', N'RN');

INSERT INTO `State` (Id,IdCountry,Name,Acronym) VALUES (25, 1058, N'PARAIBA', N'PB');

INSERT INTO `State` (Id,IdCountry,Name,Acronym) VALUES (26, 1058, N'PERNANBUCO', N'PE');

INSERT INTO `State` (Id,IdCountry,Name,Acronym) VALUES (27, 1058, N'ALAAS', N'AL');

INSERT INTO `State` (Id,IdCountry,Name,Acronym) VALUES (28, 1058, N'SERGIPE', N'SE');

INSERT INTO `State` (Id,IdCountry,Name,Acronym) VALUES (29, 1058, N'BAHIA', N'BA');

INSERT INTO `State` (Id,IdCountry,Name,Acronym) VALUES (31, 1058, N'MINAS GERAIS', N'MG');

INSERT INTO `State` (Id,IdCountry,Name,Acronym) VALUES (32, 1058, N'ESPIRITO SANTO', N'ES');

INSERT INTO `State` (Id,IdCountry,Name,Acronym) VALUES (33, 1058, N'RIO DE JANEIRO', N'RJ');

INSERT INTO `State` (Id,IdCountry,Name,Acronym) VALUES (35, 1058, N'SÃO PAULO', N'SP');

INSERT INTO `State` (Id,IdCountry,Name,Acronym) VALUES (41, 1058, N'PARANÁ', N'PR');

INSERT INTO `State` (Id,IdCountry,Name,Acronym) VALUES (42, 1058, N'SANTA CATARINA', N'SC');

INSERT INTO `State` (Id,IdCountry,Name,Acronym) VALUES (43, 1058, N'RIO GRANDE DO SUL', N'RS');

INSERT INTO `State` (Id,IdCountry,Name,Acronym) VALUES (50, 1058, N'MATO GROSSO DO SUL', N'MS');

INSERT INTO `State` (Id,IdCountry,Name,Acronym) VALUES (51, 1058, N'MATO GROSSO', N'MT');

INSERT INTO `State` (Id,IdCountry,Name,Acronym) VALUES (52, 1058, N'IAS', N'');

INSERT INTO `State` (Id,IdCountry,Name,Acronym) VALUES (53, 1058, N'DISTRITO FEDERAL', N'DF');

ALTER TABLE `City`  WITH CHECK ADD  CONSTRAINT `FK_City_State` FOREIGN KEY(IdState)
REFERENCES `State` (Id)

ALTER TABLE `City` CHECK CONSTRAINT `FK_City_State`

ALTER TABLE `State`  WITH CHECK ADD  CONSTRAINT `FK_State_Country` FOREIGN KEY(IdCountry)
REFERENCES `Country` (Id)

ALTER TABLE `State` CHECK CONSTRAINT `FK_State_Country`

