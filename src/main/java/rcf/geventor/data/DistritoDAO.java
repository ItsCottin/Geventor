package rcf.geventor.data;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface DistritoDAO extends JpaRepository<Distrito, Long>, JpaSpecificationExecutor<Distrito> {

	@Query("select d from Distrito d " +
			" where d.id = :id")
	public Distrito findDistritoById(@Param("id") Long id);
	
}
