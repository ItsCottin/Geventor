package br.com.pluri.eventor.view;

import java.io.IOException;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;
import javax.faces.bean.SessionScoped;
import javax.faces.context.ExternalContext;
import javax.faces.context.FacesContext;
import javax.servlet.http.HttpSession;

import lombok.Getter;
import lombok.Setter;

import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.context.SecurityContextHolder;

import br.com.etechoracio.common.view.BaseMB;
import br.com.pluri.eventor.security.business.model.UsuarioAutenticado;

@Getter
@Setter
@ManagedBean
@SessionScoped
public class UserContextMB extends BaseMB {
	
	private String user;
	private String password;
	private String username;
	private boolean logado;
	private boolean noLogado = true;
	private boolean modoLogin;
	
	@ManagedProperty(name="authenticationManager", value="#{authenticationManager}")
	private AuthenticationManager authenticationManager;
	
	public static enum OUTCOME {
		SUCCESS, FAILURE;
	}
	
	public void afterAuthentication() {
		UsuarioAutenticado usuarioAuteticado = getCurrentUser();
		username = usuarioAuteticado.getUsername();
		password = null;
		logado = true;
		noLogado = false;
	}
	
	
	public void doLogin() {
		try{
			UsernamePasswordAuthenticationToken authentication = 
				new UsernamePasswordAuthenticationToken(this.getUser(),this.getPassword());
			SecurityContextHolder.getContext().setAuthentication
				(authenticationManager.authenticate(authentication));
			afterAuthentication();
			navigate(PAGE_HOME);
		}catch(AuthenticationException e){
			showErrorMessage(e.getMessage());
		}
	}
	
	//public void doLogout() throws IOException {
	//    ExternalContext externalContext = FacesContext.getCurrentInstance().getExternalContext();
	//    HttpSession session = (HttpSession) externalContext.getSession(false);
	//   session.invalidate();
	//    externalContext.redirect(externalContext.getRequestContextPath() + "/loginV2.xhtml");
	//    //return "/loginV2.xhtml?faces-redirect=true";
	//}
	
	//public String redirectToLoginPage() {
	//    return "/loginV2.xhtml?faces-redirect=true";
	//}
	
	
	
	
}
