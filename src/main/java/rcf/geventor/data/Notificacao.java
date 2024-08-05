package rcf.geventor.data;

import java.util.Date;

import jakarta.persistence.*;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name="TBL_G_NOTIFICACAO")
public class Notificacao extends AbstractEntity {
	
	@Id
	@GeneratedValue
	@Column(name="ID_NOTIF")
	private Long id;
	
	@Column(name="DETALHES_NOTIF")
	private String detalhe;
	
	@Column(name="TITULO_NOTIF")
	private String titulo;
	
	@Column(name="VISU_NOTIF")
	private boolean visualizado;
	
	@Column(name="TIPO_NOTIF")
	private String tipo;
	
	@Column(name="DT_INC_NOTIF")
	@Temporal(TemporalType.TIMESTAMP)
	private Date datacad;
	
	@ManyToOne
	//@JoinColumn(name="ID_USUA", referencedColumnName="ID_USUA")
	public Usuario usuario;
}
