package br.com.pluri.eventor.business;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import br.com.etechoracio.common.business.BaseSB;
import br.com.pluri.eventor.dao.UsuarioAtividadeDAO;
import br.com.pluri.eventor.model.UsuarioAtividade;

@Service
public class UsuarioAtividadeSB extends BaseSB {
	
	private UsuarioAtividadeDAO usuarioAtividadeDAO;
	
	protected void postConstructImpl() {
		usuarioAtividadeDAO = getDAO(UsuarioAtividadeDAO.class);
	}
	
	@Transactional(propagation=Propagation.REQUIRED)
	public void insert(UsuarioAtividade usuAtiv) {
		usuarioAtividadeDAO.save(usuAtiv);
	}
	
	@Transactional(propagation=Propagation.NOT_SUPPORTED)
	public List<UsuarioAtividade> findIncritosNoEventoByUsuarioLogado(Long idUsuario) {
		return usuarioAtividadeDAO.findIncritosNoEventoByUsuarioLogado(idUsuario);
	}

}
