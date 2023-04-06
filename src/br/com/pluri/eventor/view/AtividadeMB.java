package br.com.pluri.eventor.view;

import java.util.List;
import java.util.Map;

import javax.annotation.PostConstruct;
import javax.enterprise.inject.Model;
import javax.faces.context.FacesContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;





import org.springframework.web.bind.annotation.ResponseBody;

import lombok.Getter;
import lombok.Setter;
import br.com.etechoracio.common.view.BaseMB;
import br.com.pluri.eventor.business.AtividadeSB;
import br.com.pluri.eventor.business.EventoSB;
import br.com.pluri.eventor.model.Atividade;
import br.com.pluri.eventor.model.Evento;

@Getter
@Setter
@Scope("view")
@Controller
public class AtividadeMB extends BaseMB {
	
	@Autowired
	private EventoSB eventoSB;

	@Autowired
	private AtividadeSB atividadeSB;
	
	private List<Atividade> resultadoAtividadeByEvento;
	private Atividade editAtividade = new Atividade();
	public boolean modoConsulta;
	public Atividade ativSel;
	public Evento evenSel;
	private List<Evento> resultadoEvento;
	private String htmlModalAtiv;
	
	public Long idEvento;
	
	@PostConstruct
	public void PostConstruct(){
		onEventoChange();
		onEventos();
		this.modoConsulta = false;
		this.ativSel = new Atividade();
		onAllAtividade();
	}
	
	public void doSave(){
		if(idEvento == null) {
			idEvento = editAtividade.evento.getId();
		}
		if(editAtividade.getId() == null){
			atividadeSB.insert(editAtividade, idEvento);
			showInfoMessage("Atividade inserida com sucesso");
		}else{
			atividadeSB.editAtiv(editAtividade, idEvento);
			showInfoMessage("Atividade atualizada com sucesso");
		}
		onAllAtividade();
		doPrepareSave();
	}
	
	public void onEventoChange(){
		resultadoAtividadeByEvento = atividadeSB.findByEventos(idEvento);
	}
	
	// Metodo criado para alterar a atividade entre eventos.
	public void onEventoChangeV2(){
		editAtividade.evento = eventoSB.findById(idEvento);
	}
	
	public void onAllAtividade() {
		resultadoAtividadeByEvento = atividadeSB.findAllAtividadeByUsuario(getCurrentUserId());
	}
	
	public void onEventos(){
		resultadoEvento = eventoSB.findEventosByUsuario(getCurrentUserId());
	}
	
	public void doRemove(Atividade exclui){
		atividadeSB.delete(exclui);
	}
	
	public void setIdEvento(Long idEvento){
		this.idEvento = idEvento;
	}
	
	public void doPrepareInsert(){
		this.editAtividade = new Atividade();
	}
	
	public void doEdit(Atividade edit){
		this.modoConsulta = false;
		prepareEditOuConsulta(edit);
	}
	
	public void doPrepareSave(){
		editAtividade = new Atividade();
		this.idEvento = null;
		this.modoConsulta = false;
	}
	
	public void doConsulta(Atividade edit) {
		doPrepareSave();
		this.modoConsulta = true;
		prepareEditOuConsulta(edit);
	}
	
	public void prepareEditOuConsulta(Atividade edit){
		this.editAtividade = atividadeSB.findById(edit.getId());
		this.idEvento = editAtividade.evento.getId();
		setModalConsultaAtiv();
	}
	
	public void setModalConsultaAtiv() {
		this.htmlModalAtiv = "<div class=\"modal fade\" id=\"modalConsAtividade\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"confirmDel\" aria-hidden=\"true\">\n"
				+ "                              <div class=\"modal-dialog modal-xl\" role=\"document\">\n"
				+ "                                 <div class=\"modal-content\">\n"
				+ "                                    <div class=\"modal-header\">\n"
				+ "                                       <h5 class=\"modal-title\" id=\"exampleModalLabel\">Evento: " + editAtividade.evento.getTitulo() + "</h5>\n"
				+ "                                       <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\">\n"
				+ "                                       <span aria-hidden=\"true\"></span>\n"
				+ "                                       </button>\n"
				+ "                                    </div>\n"
				+ "                                    <div class=\"modal-body\">\n"
				+ "                                       <h:form id=\"modalformAtiv\">\n"
				+ "                                          <h3 class=\"\">Atividade: " + editAtividade.getNome() + "</h3>\n"
				+ "                                          <p:separator style=\"width:99%;\" />\n"
				+ "                                          <div class=\"col-md-12 col-lg-12\">\n"
				+ "                                             <div class=\"row mb-3 border-rcf\">\n"
				+ "                                                <div class=\"col-sm-12 row\">\n"
				+ "                                                   <p class=\"font-weight-bold\">Detalhes da Atividade:  </p>\n"
				+ "                                                   <p class=\"font-weight-normal text-right\">" + editAtividade.getDetalhes() + "</p>\n"
				+ "                                                </div>\n"
				+ "                                             </div>\n"
				+ "                                             <div class=\"row mb-3 border-rcf\">\n"
				+ "                                                <div class=\"col-sm-6 row\">\n"
				+ "                                                   <p class=\"font-weight-bold\">Começa:  </p>\n"
				+ "                                                   <p class=\"font-weight-normal\">" + editAtividade.getDataInicio() + "</p>\n"
				+ "                                                </div>\n"
				+ "                                                <div class=\"col-sm-6 row\">\n"
				+ "                                                   <p class=\"font-weight-bold\">Termina:  </p>\n"
				+ "                                                   <p class=\"font-weight-normal\">" + editAtividade.getDataFim() + "</p>\n"
				+ "                                                </div>\n"
				+ "                                             </div>\n"
				+ "                                             <div class=\"row mb-3 border-rcf\">\n"
				+ "                                                <div class=\"col-sm-12\">\n"
				+ "                                                	<div class=\"row\">\n"
				+ "                                                   		<p class=\"font-weight-bold\">Preço:  </p>\n"
				+ "                                                   		<p class=\"font-weight-normal\">" + editAtividade.getPreco() + "</p>\n"
				+ "                                                   	</div>\n"
				+ "	                                                <div class=\"row\">\n"
				+ "	                                                      <div class=\"input-group-append col-sm-12\">\n"
				+ "	                                                         <p class=\"font-weight-bold input-group-text\">Vagas:  </p>\n"
				+ "	                                                         <h:outputLabel styleClass=\"form-control margem-bottom-0-rcf\" id=\"vagas\" disabled=\"#{atividadeMB.modoConsulta}\"\n"
				+ "	                                                            value=" + editAtividade.getVagas() + " label=\"Vagas\" />\n"
				+ "	                                                         <button class=\"btn btn-outline-secondary\" type=\"button\" id=\"button-addon2\">Inscrever</button>\n"
				+ "	                                                      </div>\n"
				+ "	                                                </div>\n"
				+ "                                                </div>\n"
				+ "                                             </div>\n"
				+ "                                             <div class=\"row mb-3\">\n"
				+ "                                                <div class=\"col-sm-12\">\n"
				+ "                                                </div>\n"
				+ "                                             </div>\n"
				+ "                                          </div>\n"
				+ "                                       </h:form>\n"
				+ "                                    </div>\n"
				+ "                                    <div class=\"modal-footer\">\n"
				+ "                                       <button type=\"button\" class=\"btn\" data-dismiss=\"modal\">Fechar</button>\n"
				+ "                                    </div>\n"
				+ "                                 </div>\n"
				+ "                              </div>\n"
				+ "                           </div>";
	} 
}
