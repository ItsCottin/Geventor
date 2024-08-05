package rcf.geventor.data;

import java.util.List;
import jakarta.persistence.*;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
@Entity
@Table(name="cities")
public class Cidade extends AbstractEntity {
	
	@Id
	@GeneratedValue
	@Column(name="id")
	private Long id;
	
	@Column(name="name")
	private String name;
	
	@Column(name="slug")
	private String slug;
	
	@ManyToOne
	//@JoinColumn(name="state_id", referencedColumnName="id")
	public Estado estado;
	
	@OneToMany(mappedBy = "cidade")
	public List<Endereco> endereco;
	
	@OneToMany(mappedBy = "cidade")
	public List<Distrito> distrito;
}
