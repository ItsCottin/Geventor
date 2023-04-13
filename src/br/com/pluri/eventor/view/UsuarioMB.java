package br.com.pluri.eventor.view;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;
import javax.faces.context.FacesContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;

import lombok.Getter;
import lombok.Setter;
import br.com.etechoracio.common.view.BaseMB;
import br.com.pluri.eventor.business.CidadeSB;
import br.com.pluri.eventor.business.DistritoSB;
import br.com.pluri.eventor.business.EnderecoSB;
import br.com.pluri.eventor.business.EstadoSB;
import br.com.pluri.eventor.business.UsuarioSB;
import br.com.pluri.eventor.business.exception.CPFNotValidException;
import br.com.pluri.eventor.business.exception.LoginJaCadastradoException;
import br.com.pluri.eventor.business.exception.SenhaInvalidaException;
import br.com.pluri.eventor.model.Cidade;
import br.com.pluri.eventor.model.Endereco;
import br.com.pluri.eventor.model.Estado;
import br.com.pluri.eventor.model.Usuario;

@Getter
@Setter
@Controller
@Scope("view")
public class UsuarioMB extends BaseMB {

	@Autowired
	private UsuarioSB usuarioSB;
	
	@Autowired
	private CidadeSB cidadeSB;
	
	@Autowired
	private EnderecoSB enderecoSB;
	
	@Autowired
	private EstadoSB estadoSB;

	
	@Autowired
	private DistritoSB distritoSB;
	
	private Endereco enderecoDoCEP;
	private String cepInformado;
	private List<Cidade> cidades;
	private List<Estado> estados;
	private List<Usuario> usuarios;
	private List<Usuario> usuariosSelecionados;
	private Usuario editUsuario = new Usuario();	
	
	public void doSave(){
		try{
			usuarioSB.insert(editUsuario);
			showInfoMessage("Usuario cadastrado com sucesso");
			navigate("PAGE_LOGIN");
		}catch (LoginJaCadastradoException e2){
			showErrorMessage(e2.getMessage());
			validationFailed();
		}
	}
	
	public void findAll(){
		this.usuarios = usuarioSB.findAll();
	}
	
	@PostConstruct
	public void infoUserLogado(){
		this.estados = estadoSB.findAll();
		if (getCurrentUserId()!=null){
			editUsuario = usuarioSB.findById(getCurrentUserId());
		}
	}
	
	public void onEstadoChange(){
		if(editUsuario.getEstado() == null){
			cidades = new ArrayList<Cidade>();
			return;
		}
		cidades = cidadeSB.findByEstado(editUsuario.getEstado());
	}
	
	public void findEnderecoByCEP(){
		this.enderecoDoCEP = new Endereco();
		this.enderecoDoCEP = enderecoSB.findCidadeAndEstadoByCEP(cepInformado);
		this.editUsuario.setCep(enderecoDoCEP.getCep());
		Cidade cidade = new Cidade();
		cidade = cidadeSB.findById(enderecoDoCEP.getIdCidade());
		this.editUsuario.setEstado(estadoSB.findById(cidade.estado.getId()).getUf());
		onEstadoChange();
		this.editUsuario.setCidade(cidade.getName());		
		this.editUsuario.setBairro(distritoSB.findById(enderecoDoCEP.getIdBairro()).getBairro());
		//this.editUsuario.setBairro(enderecoDoCEP.distrito.getBairro()); 
		//this.editUsuario.setEstado(enderecoDoCEP.cidade.estado.getName());
		//this.editUsuario.setCidade(enderecoDoCEP.cidade.getName());
		this.editUsuario.setEndereco(enderecoDoCEP.getEndereco());
	}
	
	public void doEdit() throws SenhaInvalidaException, CPFNotValidException{
		usuarioSB.editeUsuario(editUsuario);
	}
	
	
	
}
