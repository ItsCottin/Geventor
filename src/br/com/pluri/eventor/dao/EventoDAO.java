package br.com.pluri.eventor.dao;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import br.com.etechoracio.common.dao.BaseDAO;
import br.com.pluri.eventor.model.Evento;
import br.com.pluri.eventor.model.Usuario;

@Repository
public interface EventoDAO extends BaseDAO<Evento> {
	
	public List<Evento> findByUsuario (Usuario usuario);
	
	public Evento findByTitulo(String titulo);
	
	@Query("select e from Evento e " +
		   " where e.usuario.id != :idUsu")
	public List<Evento> findAllEventoMenosMeus(@Param("idUsu") Long idUsu);
	
}
