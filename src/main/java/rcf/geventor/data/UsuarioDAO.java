package rcf.geventor.data;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface UsuarioDAO extends JpaRepository<Usuario, Long>, JpaSpecificationExecutor<Usuario> {
	
	public Usuario findByLoginAndSenha (String login, String senha);
	
	public List<Usuario> findByLogin (String login);

	@Query("select u from Usuario u " +
			" where u.id = :id")
	public Usuario findUsuarioById (@Param("id") Long id);
	
	@Query("select u from Usuario u " +
			" inner join u.usuarioAtividade a " +
			" inner join a.atividade e " +
			" where e.id = :id")
	public List<Usuario> findIncritosNaAtividade (@Param("id") Long idAtiv);
	
	@Query("select u from Usuario u where u.login = :login")
	public Usuario findByLogin_v2 (@Param("login") String login);
	
	@Query("select u from Usuario u where u.id = :id and u.senha = :senha")
	public Usuario findByIdAndSenha (@Param("id") Long id, @Param("senha") String senha);
	
}
