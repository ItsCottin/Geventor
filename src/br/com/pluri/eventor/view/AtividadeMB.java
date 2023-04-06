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
		resultadoAtividadeByEvento = atividadeSB.findAllAtividade();
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
	}
	

}
