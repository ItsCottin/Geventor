package rcf.geventor.data;

import jakarta.persistence.*;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name="address_searchs")
public class Endereco extends AbstractEntity {

	@Id
	@GeneratedValue
	@Column(name="id")
	private Long id;
	
	@Column(name="district_id")
	private Long idDistrict;
	
	@Column(name="city_id")
	private Long idCity;
		
	@Column(name="address")
	private String endereco;
		
	@Column(name="postal_code")
	private String cep;
		
	@Column(name="latitude")
	private String latitude;
		
	@Column(name="longitude")
	private String longitude;
		
	@Column(name="ddd")
	private int ddd;
	
	
	//@ManyToOne(fetch = FetchType.LAZY, cascade = CascadeType.ALL)
	//@JoinColumn(name="district_id", referencedColumnName="id", nullable=false, insertable=false, updatable=false)
	//public Distrito distrito;
	
	@ManyToOne(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
	//@JoinColumn(name="city_id", referencedColumnName="id", nullable=false, insertable=false, updatable=false)
	public Cidade cidade;
	
}
