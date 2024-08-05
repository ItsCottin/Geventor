package rcf.geventor.services;

import java.util.HashSet;
import java.util.List;

import org.apache.commons.collections4.CollectionUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import br.com.etechoracio.common.business.BaseSB;
import rcf.geventor.data.Role;
import rcf.geventor.services.util.MessageBundleLoader;
import rcf.geventor.services.exception.CampoObrigatorioException;
import rcf.geventor.services.exception.LoginJaCadastradoException;
import rcf.geventor.services.exception.SenhaInvalidaException;
import br.com.pluri.eventor.business.util.PasswordUtils;
import rcf.geventor.data.UsuarioDAO;
import br.com.pluri.eventor.enums.TipoPessoaEnum;
import rcf.geventor.data.Atividade;
import rcf.geventor.data.Usuario;

@Service
public class UsuarioSB extends BaseSB {
	
	private UsuarioDAO usuarioDAO;
	
	private Usuario resultValidarSenha = new Usuario();

	@Override
	protected void postConstructImpl() {
		usuarioDAO = getDAO(UsuarioDAO.class);
	}

	@Transactional(propagation = Propagation.REQUIRED)
	public void insert(Usuario usuario) throws LoginJaCadastradoException, SenhaInvalidaException, CampoObrigatorioException {
		List<Usuario> result = usuarioDAO.findByLogin(usuario.getLogin());
		//usuario.setSenha(PasswordUtils.criptografarMD5(usuario.getSenha()));
		usuario.setAtualizaSenha("S");
		if (CollectionUtils.isEmpty(result)){
			//validaUsuario(usuario);
			usuario.setDataAlter(getDateAlter());
			usuario.setAvatar("default.png");
			usuario.setRoles(Role.USER);
			usuario.setTipoPessoa(TipoPessoaEnum.FISICA);
			usuarioDAO.save(usuario);
		} else {
			throw new LoginJaCadastradoException(MessageBundleLoader.getMessage("critica.loginjacadastrado", new Object[] {usuario.getLogin()}));
		}
	}
	
	public void validaUsuario(Usuario usuario) throws LoginJaCadastradoException, SenhaInvalidaException {
		if (!usuario.loginVerificado) {
			throw new LoginJaCadastradoException(MessageBundleLoader.getMessage("critica.loginnotverifiqued", new Object[] {usuario.getLogin()}));
		}
		if(usuario.atualizaSenha.equals("S")){
			if (!PasswordUtils.criptografarMD5(usuario.getConfirmSenha()).equals(usuario.getSenha())){
				throw new SenhaInvalidaException(MessageBundleLoader.getMessage("critica.senhaincorreta"));
			}
		}
	}
	
	@Transactional(propagation = Propagation.NOT_SUPPORTED)
	public List<Usuario> findAll() {
		return usuarioDAO.findAll();
	}

	@Transactional(propagation = Propagation.REQUIRED)
	public void editeUsuario(Usuario usuario) throws SenhaInvalidaException, LoginJaCadastradoException {
		if(usuario.getCpfCnpj() != null) {
			if(usuario.getCpfCnpj().contains("_")){
				usuario.setCpfCnpj("");
			} else {
				usuario.setCpfCnpj(usuario.getCpfCnpj().replace(".", "").replace("-", ""));
			}
		}
		if(usuario.atualizaSenha.equals("S")){
			usuario.setSenha(PasswordUtils.criptografarMD5(usuario.getSenha()));
			if (!validarSenhaOld(usuario)){
				throw new SenhaInvalidaException(MessageBundleLoader.getMessage("critica.senhaincorreta"));
			}
		}
		validaUsuario(usuario);
		usuario.setDataAlter(getDateAlter());
		usuarioDAO.save(usuario);
	}

	@Transactional(propagation = Propagation.NOT_SUPPORTED)
	public Usuario findById(Long idUsuarioLogado) {
		return usuarioDAO.findUsuarioById(idUsuarioLogado);
	}

	public boolean validarSenhaOld(Usuario usuario) {
		resultValidarSenha = usuarioDAO.findByIdAndSenha(usuario.getId(), PasswordUtils.criptografarMD5(usuario.getOldsenha()));
		if(resultValidarSenha!=null && usuario.getSenha().equals(PasswordUtils.criptografarMD5(usuario.getConfirmSenha()))){
			return true;
		} else {
			return false;
		}
	}
	
	@Transactional(propagation=Propagation.NOT_SUPPORTED)
	public List<Usuario> findIncritosByAtividade(Atividade ativ) {
		return usuarioDAO.findIncritosNaAtividade(ativ.getId());
	}
	
	public Usuario findUsuarioByLogin(String login) {
		return usuarioDAO.findByLogin_v2(login);
	}
}
