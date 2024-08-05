package rcf.geventor.data;


import java.util.Date;
import java.util.List;

import br.com.pluri.eventor.validator.StrongPassword;
import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;
import br.com.pluri.eventor.enums.TipoPessoaEnum;

@Getter
@Setter
@Entity
@Table(name="TBL_G_USUARIO")
public class Usuario extends AbstractEntity {
	
	@Id
	@GeneratedValue
	@Column(name="ID_USUA")
	private Long id;
	
	@Column(name="LOGIN_USUA")
	private String login;
	
	@Column(name="NOME_USUA")
	private String nome;
	
	@Column(name="CPF_CNPJ_USUA")
	private String cpfCnpj;
	
	@Column(name="EMAIL_USUA")
	private String email;
	
	@Column(name="ENDERECO_USUA")
	private String endereco;
	
	@Column(name="NUMERO_CASA_USUA")
	private String nrCasa;
	
	@Column(name="CIDADE_USUA")
	private String cidade;
	
	@Column(name="UF_USUA")
	private String estado;
	
	@Column(name="BAIRRO_USUA")
	private String bairro;
	
	@Column(name="CEP_USUA")
	private String cep;
	
	@Column(name="AVATAR_DIR")
	private String avatar;

	@Enumerated(EnumType.STRING)
	//@ElementCollection(fetch = FetchType.EAGER)
	@Column(name="TP_USUA")
	private Role roles;

	@Transient
	private byte[] profilePicture;

	@StrongPassword
	@Column(name="SENHA_USUA")
	private String senha;

	@StrongPassword
	@Transient
	private String confirmSenha;
	
	@Transient
	private String oldsenha;
	
	@Transient
	public boolean loginVerificado;
	
	@Transient
	public String atualizaSenha;
	
	@Enumerated(EnumType.STRING)
	@Column(name="TP_PESSOA_USUA")
	private TipoPessoaEnum tipoPessoa;

	@Column(name="TELEFONE_USUA")
	private String telefone;
	
	@Column(name="CELULAR_USUA")
	private String celular;
	
	@Column(name="DT_ALTER_USUA")
	private Date dataAlter;

	@Column(name="DT_NASC_USUA")
	private Date dataNasc;
	
	public Usuario(){}

	public Usuario(Long id) {
		this.id = id;
	}
	
	@OneToMany(mappedBy="usuario")
	private List<UsuarioAtividade> usuarioAtividade;
	
	@OneToMany(mappedBy="usuario")
	private List<Notificacao> notificacoes;
	
}
