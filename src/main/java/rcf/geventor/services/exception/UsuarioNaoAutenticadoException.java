package rcf.geventor.services.exception;

import rcf.geventor.services.util.MessageBundleLoader;

public class UsuarioNaoAutenticadoException extends Exception {

	public UsuarioNaoAutenticadoException(){
		super(MessageBundleLoader.getMessage("critica.usuarioinvalido"));
	}
}
