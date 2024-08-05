package rcf.geventor.data;

import jakarta.persistence.*;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
@Entity
@Table(name="TBL_G_USUARIO_ATIVIDADE")
public class UsuarioAtividade extends AbstractEntity {
	
	
	@Id
	@GeneratedValue
	@Column(name="ID_USUA_ATIV")
	private Long id;
	
	@Column(name="STATUS")
	private String status;
	
	@ManyToOne
	//@JoinColumn(name="ID_USUA", referencedColumnName="ID_USUA")
	private Usuario usuario;
	
	@ManyToOne
	//@JoinColumn(name="ID_ATIVI", referencedColumnName="ID_ATIVI")
	private Atividade atividade;
}
