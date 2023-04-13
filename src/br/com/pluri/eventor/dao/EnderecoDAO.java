package br.com.pluri.eventor.dao;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import br.com.etechoracio.common.dao.BaseDAO;
import br.com.pluri.eventor.model.Endereco;

@Repository
public interface EnderecoDAO extends BaseDAO<Endereco> {
	
	//@Query("select e from Endereco e " +
	//		" inner join e.cidade c " +
	//		" inner join c.estado s " +
	//		" where e.cep = :cep")
	//public Endereco findCidadeAndEstadoByCEP (@Param("cep") String cep);
	
	@Query("select e from Endereco e " +
			" where e.cep = :cep")
	public Endereco findCidadeAndEstadoByCEP (@Param("cep") String cep);
	
	
}
