package br.com.pluri.eventor.view;

import javax.annotation.ManagedBean;

import lombok.Getter;
import lombok.Setter;

/**
*
*	v0.3.0 - Em construção
*	1. Realizado alteracoes na pagina de loginV2.xhtml adicionando a mesma pagina de cadastro de usuario em formato de abas.
*	2. Renomeado paginas para padronizacao
*	3. Adicionado funcionalidades e validações na tela de login e de cadastro de usuario.
*	4. Adicionado class contendo todas as informacoes de alteracoes
*	5. Alterado templete criando um fooster para deixar visivel versao do sistema.
*	6. Alterado botão Menu para ficar visivel apenas quando estiver logado.
*  
*   v0.2.9 - 04 de Maio de 2023
*	1. Primeira Parte de implementação de regras CRUD.
*	2. Implementado regra para não alterar Atividades que tenha Inscritos com status de 'Pendente' ou 'Aprovado'.
*	3. Implementado regra para não alterar Eventos que tenha atividades com Inscritos com status de 'Pendente' ou 'Aprovado'.
*	4. Implementado regra para não alterar Atividades cujo a Data Inicio do Evento não esteja mais vigente.
*	5. Implementado funcionalidade de cadastro de Evento gratuito.
*	6. Implementado funcionalidade de cadastro na Atividade para respeitar se o Evento é gratuito ou não.
*	7. Corrigido bug na contagem de quantidade de vagas disponível na Edição de Atividade.
*	8. Ajustado campo de 'Eventos Disponíveis' na tela de Cadastro de Atividade para listar somente os eventos vigentes.
*	9. Ajustado campo de 'Eventos Disponíveis' na tela de Cadastro de Atividade para adicionar o Evento da Atividade selecionada para Consulta ou Edição mesmo que o Evento em questão não esteja mais vigente.
*	10. Corrigido bug no checkbox 'Gratuíto?' da tela Atividade quando é selecionado para Consulta ou Edição uma atividade cadastrada como 'Gratuíta'.
*	11. Finalizado ajustes de layout na tela de 'Atividades'
*	
*	
*	v0.2.8 - 17 de Abril de 2023
*	1. Ajustado varios pontos de layout na pagina 'conta.xhtml'.
*	2. Criado novo estilo do 'modoConsulta', disponivel apenas para a pagina 'conta.xhtml', outras paginas adquira esse estilo nas proximas versoes.
*	3. Criado logica para validação de DDD dos campos de Celular e Telefone de acordo com a Cidade selecionada caso o CEP não esteja informado ou CEP selecionado.
*	4. Ajustado logica para tratar como lista o retorno de DDD por cidade corrigido bug quando ao selecionar uma cidade com mais de um DDD disponivel.
*	5. Corrigido bug pré existente de validações de senhas.
*	6. Criado validação para alteração de nome de login.
*	7. Refaturado alguns métodos para as classes de Herdeiras para ficarem disponível em outras classes filhas como o método de formatação de data e obter data do momento da alteracao ou gravação.
*	8. Finalizada a logica de funcionalidade do CEP para a tela 'conta.xhtml'.
*	9. Finalizado funcionalidade e atributos para serem carregados no bloco 'informações' da pagina 'conta.xhtml'.
*	10. Criado layout e funcionalidade para alteração de avatar do usuario, bugs de layout ainda existentes para acessos mobile.
*	
*	
*	v0.2.7 - 13 de Abril de 2023
*	1. Criado layout da pagina 'conta.xhtml'.
*	2. Servidor de banco de dados MySQL 'sql10.freesqldatabase.com' ficou offline, criado novo servidor de bando de dados MySQL no Microsoft Azure e executado todos os scripts de criação de tabelas, inserts de Cidades, Estados, CEPs e Bairros.
*	3. Alterado tamanho de coluna de Cidade na tabela de Evento de 20 para 100 pois algumas cidades tinham mais de 20 caracteres.
*	4. Adicionado campos de endereço na tabela de Usuario.
*	5. Adicionado primeira parte da funcionalidade de consulta de CEP, ainda pendente tratamente de erros.
*	6. Importante! Ainda falta muita implementação na pagina 'conta.xhtml' que serão implementadas nas proximas versões desse projeto.
*	
*	
*	
*	v0.2.6 - 10 de Abril de 2023
*	1. Criado funcionalidade para verificar se o usuário já está inscrito na atividade e desabilitar botão de 'Increver' caso ele já esteja inscrito.
*	2. Corrigido redirecionamento de tela após cadastro de um evento.
*	3. Criado funcionalidade para trazer somente os eventos de usuários diferente do usuário logado na aba de 'Eventos Disponíveis'.
*	4. Corrigido bug na aba de 'Inscritos' em que o botão de 'Reprovar' ficava desabilitado quando o status da inscrição é 'Pendente'.
*	5. Criado layout e funcionalidade para aba de 'Minhas Inscrições'.
*	6. Realizado alterações nas tabelas de Usuario, Evento e Atividade, removido varias tabelas do banco de dados não utilizadas.
*	7. Alterado estrutura de tabelas de Cidade e Estado.
*	8. Adicionado tabelas e dados de Distritos e Endereço para implementação de funcionalidade de CEP.
*	
*	
*	v0.2.5 - 9 de Abril de 2023
*	1. Adicionado nova 'nav tabs' de 'Eventos Disponíveis' na pagina 'eventoV2.xhtml'.
*	2. Criado métodos de consulta de todos eventos disponiveis e o carregamento desses eventos em forma de card na aba de 'Eventos Disponíveis'.
*	3. Adicionado funcionalidades de navegação entre abas e botões utilizando JavaScript jQuery.
*	4. Adicionado nova tabela na tela de cadastro de evento que exibe todas as atividades cadastradas para aquele evento e só exibe quando o acesso é vindo de um dos cards listados na aba 'Eventos Disponíveis'.
*	5. Criado layout de um modal bootstrap para consultar as informações da atividade listada na tabela implementada na tela de cadastro de eventos.
*	6. Implementado método de ajuste de formatação de uma variável 'Date' para exibir as datas da atividade de forma amigável.
*	7. Implementado layout do modal em uma variável 'string' dentro da 'AtividadeMB.class' como solução para que o contúdo elementos HTML5 seja atualizado via 'ajax' carregando as informações da atividade selecionada.
*	8. Criado nova tabela 'TBL_USUARIO_ATIVIDADE' para funcionalidade de se inscrever em atividades do evento.
*	9. Criado todas as class (model, dao, business, managedbeans) para a nova funcionalidade de inscritos.
*	10. Criado métodos basicos de consultas, alteração e inclusão de inscritos.
*	11. Adicionado método para carregar objeto 'UsuarioAtividade' para listar as informações na tabela da aba 'Inscritos'.
*	12. Criado layout da 'nab tabs' 'Inscritos' da pagina 'inscritos.xhtml'.
*	
*	
*	v0.2.4 - 28 de Março de 2023
*	1. Criado pagina de 'atividadesV2.xhtml' com novo layout utilizando como base a pagina 'eventoV2.xhtml' seguindo o mesmo conceito de 'nav tabs'.
*	2. Alterado alguns métodos no 'AtividadeMB.class' para o comportamento correto..
*	3. Criado método 'doConsulta()' e propriedade 'modoConsulta' no 'AtividadeMB.class' para funcionalidade de carregamento da mesma tela de cadastro de evento porem apenas para consulta.
*	4. Criado métodos de cadastro e consulta de atividades nas camadas 'ManagedBeans' e 'Business' que ainda não tinham sido implementados.
*	
*	
*	v0.2.3 - 10 de Março de 2023
*	1. Criado pagina "eventoV2.xhtml" e novo layout.
*	2. Corrigido problemas em que o jQuery não funcionava corretamente para acionamento de 'nav tabs'.
*	3. Removido algumas bibliotecas .js que não estavam carregando corretamente na pagina.
*	4. Alterado alguns métodos para funcionalidade da nova tela de cadastro de evento.
*	5. Criado método 'doConsulta()' e propriedade 'modoConsulta' no 'EventoMB.class' para funcionalidade de carregamento da mesma tela de cadastro de evento porem apenas para consulta.
*	6. Criado algumas 'class css' no 'customV2.css' para que os botões em 'primefaces' fiquem com a mesma aparencia de botões 'bootstrap'.
*	7. Alterado 'modal' de confirmação de exclusão de evento de 'primefaces' para um modal utilizando 'bootstrap'
*	
*	
*	v0.2.2 - 15 de Fevereiro de 2023
*	1. Alterado layout e bibliotecas utilizadas para no "layoutV3.xhtml" devido a incompatibilidade com jsf e primefaces.
*	2. Criado novo menu no "layoutV3.xhtml" com compatibilidade com jsf e primefaces.
*	3. Corrigido bug no modal primefaces regredindo versão do bootstrap de v5.1 para v4.6.
*	4. criado pagina "indexV2.html" com novo layout utilizando bootstrap v4.6.
*	5. criado página "registrarV2.html" com novo layout utilizando bootstrap v4.6.
*	
*	
*	v0.2.1 - 02 de Fevereiro de 2023
*	1. Alterado layout e bibliotecas utilizadas para no "layoutV3.xhtml" devido a incompatibilidade com jsf e primefaces.
*	2. Criado novo menu no "layoutV3.xhtml" com compatibilidade com jsf e primefaces.
*	3. Corrigido bug no modal primefaces regredindo versão do bootstrap de v5.1 para v4.6.
*	4. criado pagina "indexV2.html" com novo layout utilizando bootstrap v4.6.
*	5. criado pagina "registrarV2.html" com novo layout utilizando bootstrap v4.6.
*	
*	
*	v0.2.0 - 26 de Janeiro de 2023
*	1. Inicio da do projeto de repaginação do front-end.
*	2. Criado templete "layoutV3.xhtml" com novo layout de menu.
*	3. Criado nova pagina de login "loginV2.xhtml" com novo layout de login utilizando bootstrap v5.1.
*	4. Vinculado templete "layoutV3.xhtml" na nova pagina de login "loginV2.xhtml".
*/

@Getter
@Setter
@ManagedBean
public class InfoStaticClassMB {
	
	public String versao = "v0.3.0";

}
