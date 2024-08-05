package rcf.geventor.data;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface UsuarioAtividadeDAO extends JpaRepository<UsuarioAtividade, Long>, JpaSpecificationExecutor<UsuarioAtividade> {

		@Query("select u from UsuarioAtividade u " +
			   " inner join u.atividade a " +
			   " inner join a.evento e " +
			   " where e.usuario.id = :id")
		public List<UsuarioAtividade> findIncritosNoEventoByUsuarioLogado (@Param("id") Long idUsu);
		
		@Query("select u from UsuarioAtividade u " +
			   " inner join u.atividade a " +
			   " inner join a.evento e " +
			   " where e.usuario.id = :id and u.usuario.id != :id")
		public List<UsuarioAtividade> findIncritosNoEventoByUsuarioLogadoV2 (@Param("id") Long idUsu);
		
		@Query("select u from UsuarioAtividade u " +
				   " inner join u.atividade a " +
				   " inner join a.evento e " +
				   " where e.usuario.id = :id and u.status = :status")
		public List<UsuarioAtividade> findIncritosNoEventoByUsuarioLogadoByStatus (@Param("id") Long idUsu, @Param("status") String status);
		
		@Query("select u from UsuarioAtividade u " +
			   " where u.usuario.id = :idUsu and u.atividade.id = :idAtiv")
		public Optional<UsuarioAtividade> findSeEstaInscritoNaAtividade(@Param("idUsu") Long idUsu, @Param("idAtiv") Long idAtiv);
		
		@Query("select u from UsuarioAtividade u " +
			   " where u.atividade.id = :idAtiv")
		public List<UsuarioAtividade> findAllInscritosByIdAtividade(@Param("idAtiv") Long idAtiv);
		
		@Query("select u from UsuarioAtividade u " +
				   " where u.atividade.id = :idAtiv and u.status = :status")
		public List<UsuarioAtividade> findAllInscritosByIdAtividadeAndStatus(@Param("status") String status, @Param("idAtiv") Long idAtiv);
		
		@Query("select u from UsuarioAtividade u " +
			   " where u.usuario.id = :idUsu")
		public List<UsuarioAtividade> findMyInscricoes(@Param("idUsu") Long idUsu);
		
		@Query("select u from UsuarioAtividade u " +
			   " where u.usuario.id = :idUsu and u.status != :status")
		public List<UsuarioAtividade> findMyInscricoesMenosStatus(@Param("idUsu") Long idUsu, @Param("status") String status);
			
		@Query("select u from UsuarioAtividade u " +
			   " inner join u.atividade a " +
			   " inner join a.evento e " +
			   " where e.usuario.id = :idUsu and e.id = :idEven")
		public List<UsuarioAtividade> findAtividadesNoEventoByUsuarioLogado (@Param("idUsu") Long idUsu, @Param("idEven") Long idEven);
		
		@Modifying
		@Query(value = "DELETE FROM TBL_G_USUARIO_ATIVIDADE WHERE ID_ATIVI = :idAtiv", nativeQuery = true)
		public void deleteByIdAtiv(@Param("idAtiv") Long idAtiv);
	
}
