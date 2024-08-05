package rcf.geventor.data;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface CidadeDAO extends JpaRepository<Cidade, Long>, JpaSpecificationExecutor<Cidade> {

	@Query("select c from Cidade c " +
			" inner join c.estado e " +
			" where e.uf = :uf")
	public List<Cidade> findByEstado(@Param("uf") String estado);
	
	@Query("select c from Cidade c " +
			" where c.name = :cidade")
	public List<Cidade> findByName(@Param("cidade") String cidade);

	@Query("select c from Cidade c " +
			" where c.id = :id")
	public Cidade findCidadeById(@Param("id") Long idCidade);
	
}
