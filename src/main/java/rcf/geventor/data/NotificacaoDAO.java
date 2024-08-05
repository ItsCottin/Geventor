package rcf.geventor.data;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface NotificacaoDAO extends JpaRepository<Notificacao, Long>, JpaSpecificationExecutor<Notificacao> {
	
	@Query(value = "SELECT * FROM TBL_G_NOTIFICACAO WHERE ID_USUA = :idUsuario", nativeQuery = true)
	public List<Notificacao> findAllNotificacaoByUsuario(@Param ("idUsuario") Long idUsuario);

}
