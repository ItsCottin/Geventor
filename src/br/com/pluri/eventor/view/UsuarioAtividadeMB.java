package br.com.pluri.eventor.view;

import java.util.List;
import java.util.Map;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import br.com.etechoracio.common.view.BaseMB;
import br.com.pluri.eventor.business.UsuarioAtividadeSB;
import br.com.pluri.eventor.business.UsuarioSB;
import br.com.pluri.eventor.model.Atividade;
import br.com.pluri.eventor.model.Usuario;
import br.com.pluri.eventor.model.UsuarioAtividade;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Scope("view")
@Controller
public class UsuarioAtividadeMB extends BaseMB {

	@Autowired
	private UsuarioAtividadeSB usuAtivSB;
	
	@Autowired
	private UsuarioSB usuSB;
	
	private List<Usuario> inscritos;
	private List<UsuarioAtividade> usuAtiv;	
	
	@PostConstruct
	public void postConstruct(){
		findInscritosMyEventos();
	}
	
	public void findInscritosMyEventos(){
		this.usuAtiv = usuAtivSB.findIncritosNoEventoByUsuarioLogado(getCurrentUserId());
	}
	
	public void getInscritosByAtividade(Atividade ativ){
		inscritos = usuSB.findIncritosByAtividade(ativ);
	}
	
	public void doEdit(Map<String, Object> params) {
		String status = (String) params.get("status");
		UsuarioAtividade usuAtiv = (UsuarioAtividade) params.get("usuAtiv");
		usuAtiv.setStatus(status);
		usuAtivSB.insert(usuAtiv);
	}
	
	
}
