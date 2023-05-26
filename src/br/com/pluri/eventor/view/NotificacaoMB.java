package br.com.pluri.eventor.view;

import java.util.List;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import br.com.etechoracio.common.view.BaseMB;
import br.com.pluri.eventor.business.NotificacaoSB;
import br.com.pluri.eventor.model.Notificacao;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Scope("view")
@Controller
public class NotificacaoMB extends BaseMB {
	
	@Autowired
	private NotificacaoSB notificacaoSB;
	
	private List<Notificacao> notificacoes;
	
	@PostConstruct
	public void postConstruct(){
		if(getCurrentUserId() != null) {
			this.notificacoes = notificacaoSB.findAllNotificacaoByUsuario(getCurrentUserId());
		}
	}
	
	public void doRemove(Notificacao exclui){
		notificacaoSB.delete(exclui);
	}

}
