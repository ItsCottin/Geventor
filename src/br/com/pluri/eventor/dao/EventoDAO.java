package br.com.pluri.eventor.dao;

import java.math.BigInteger;
import java.sql.Timestamp;
import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import br.com.etechoracio.common.dao.BaseDAO;
import br.com.pluri.eventor.model.Atividade;
import br.com.pluri.eventor.model.Evento;
import br.com.pluri.eventor.model.Usuario;

@Repository
public interface EventoDAO extends BaseDAO<Evento> {
	
	public List<Evento> findByUsuario (Usuario usuario);
	
	public Evento findByTitulo(String titulo);
	
	@Query("select e from Evento e " +
		   " where e.usuario.id != :idUsu")
	public List<Evento> findAllEventoMenosMeus(@Param("idUsu") Long idUsu);
	
	@Query(value = "select * from TBL_evento where ID_USUA != :idUsu and DATAINICIO_EVEN > now()", nativeQuery = true)
	public List<Evento> findAllEventoMenosMeusRecen(@Param("idUsu") Long idUsu);
	
	@Query(value = "select MIN(datainicio_even) as proximoevento from tbl_evento where datainicio_even >= CURDATE() and id_usua = :idUsu",
			nativeQuery = true)
	public Timestamp getDataProxEventoDoUsuLogado(@Param("idUsu") Long idUsu);
	
	@Query(value = "select * from TBL_evento where ID_USUA = :idUsu and DATAINICIO_EVEN > now()", nativeQuery = true)
	public List<Evento> findRecenEventosByUsuario (@Param("idUsu") Long idUsu);
	
	@Query(value = "SELECT COUNT(*) FROM TBL_USUARIO_ATIVIDADE WHERE STATUS IN ('Pendente', 'Aprovado') AND ID_ATIVI IN " + 
    "(SELECT ID_ATIVI FROM TBL_ATIVIDADE WHERE ID_EVEN IN " +
    "(SELECT ID_EVEN FROM TBL_EVENTO WHERE ID_EVEN = :idEven))", nativeQuery = true)
	public BigInteger qtdInscritoInEvento (@Param("idEven") Long idEven);
	
}
