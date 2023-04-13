package br.com.pluri.eventor.model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import lombok.Getter;
import lombok.Setter;
import br.com.etechoracio.common.model.BaseORM;

@Getter
@Setter
@Entity
@Table(name="districts")
public class Distrito extends BaseORM {
	
	@Id
	@GeneratedValue
	@Column(name="id")
	private Long id;
	
	@Column(name="name")
	private String bairro;
	
	@Column(name="slug")
	private String slug;
	
	//@JoinColumn(name="city_id", referencedColumnName="id")
	//@ManyToOne
	//private Cidade cidade;
	
	//@OneToMany
	//private List<Endereco> endereco;

}
