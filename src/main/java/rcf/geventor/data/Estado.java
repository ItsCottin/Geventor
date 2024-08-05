package rcf.geventor.data;

import java.util.List;

import jakarta.persistence.*;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name="states")
public class Estado extends AbstractEntity {
	
	@Id
	@GeneratedValue
	@Column(name="id")
	private Long id;
	
	@Column(name="name")
	private String name;
	
	@Column(name="initials")
	private String uf;
	
	@OneToMany(mappedBy="estado")
	private List<Cidade> cidades;
	
}
