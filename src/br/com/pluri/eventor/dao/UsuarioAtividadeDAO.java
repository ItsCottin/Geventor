package br.com.pluri.eventor.dao;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import br.com.etechoracio.common.dao.BaseDAO;
import br.com.pluri.eventor.model.UsuarioAtividade;

@Repository
public interface UsuarioAtividadeDAO extends BaseDAO<UsuarioAtividade> {

	@Query("select u from UsuarioAtividade u " +
			" inner join u.atividade a " +
			" inner join a.evento e " +
			" where e.usuario.id = :id")
	public List<UsuarioAtividade> findIncritosNoEventoByUsuarioLogado (@Param("id") Long idUsu);
	
}
