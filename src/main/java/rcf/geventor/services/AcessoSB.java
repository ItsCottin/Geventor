package rcf.geventor.services;

import org.springframework.stereotype.Service;

import br.com.etechoracio.common.business.BaseSB;
import rcf.geventor.services.exception.UsuarioNaoAutenticadoException;
import br.com.pluri.eventor.business.util.PasswordUtils;
import rcf.geventor.data.UsuarioDAO;
import rcf.geventor.data.Usuario;
import br.com.pluri.eventor.security.business.model.UsuarioAutenticado;

@Service
public class AcessoSB extends BaseSB {

	private UsuarioDAO usuarioDAO;
	
	@Override
	protected void postConstructImpl() {
		usuarioDAO = getDAO(UsuarioDAO.class);
	}
	
	public UsuarioAutenticado autenticar(String login, String senha) throws UsuarioNaoAutenticadoException{
		Usuario user = usuarioDAO.findByLoginAndSenha(login, PasswordUtils.criptografarMD5(senha));
		if (user == null){
			throw new UsuarioNaoAutenticadoException();
		}
		return new UsuarioAutenticado(user.getId(), user.getNome(), user.getCpfCnpj());
	}

}
