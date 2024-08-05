package rcf.geventor.data;

import jakarta.persistence.*;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name="districts")
public class Distrito extends AbstractEntity {
	
	@Id
	@GeneratedValue
	@Column(name="id")
	private Long id;
	
	@Column(name="name")
	private String bairro;
	
	@Column(name="slug")
	private String slug;
	
	@ManyToOne(fetch = FetchType.EAGER,cascade = CascadeType.ALL)
	//@JoinColumn(name="city_id", referencedColumnName="id", nullable=false, insertable=false, updatable=false)
	private Cidade cidade;
	
	//@OneToMany(mappedBy = "distrito")
	//private List<Endereco> endereco;

}
