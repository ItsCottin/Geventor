package br.com.pluri.eventor.view;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import br.com.etechoracio.common.view.BaseMB;
import br.com.pluri.eventor.business.UsuarioAtividadeSB;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Scope("view")
@Controller
public class UsuarioAtividadeMB extends BaseMB {

	@Autowired
	private UsuarioAtividadeSB usuAtivSB;
	
}
