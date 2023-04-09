package br.com.pluri.eventor.dao;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import br.com.etechoracio.common.dao.BaseDAO;
import br.com.pluri.eventor.model.Usuario;

@Repository
public interface UsuarioDAO extends BaseDAO<Usuario> {
	
	public Usuario findByLoginAndSenha (String login, String senha);
	
	public List<Usuario> findByLogin (String login);
	
	public Usuario findById (Long id);
	
	// TODO Erro de: org.hibernate.QueryException: could not resolve property: atividade of
	@Query("select u from Usuario u " +
			" inner join u.usuarioAtividade a " +
			" inner join a.atividade e " +
			" where e.id = :id")
	public List<Usuario> findIncritosNaAtividade (@Param("id") Long idAtiv);
	
}
