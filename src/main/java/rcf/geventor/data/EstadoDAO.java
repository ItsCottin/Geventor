package rcf.geventor.data;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface EstadoDAO extends JpaRepository<Estado, Long>, JpaSpecificationExecutor<Estado> {

	@Query("select e from Distrito e " +
			" where e.id = :id")
	public Estado findEstadoById(@Param("id") Long idEstado);
	
}
