package rcf.geventor.services;

import java.sql.SQLException;
import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import br.com.etechoracio.common.business.BaseSB;
import rcf.geventor.data.AtividadeDAO;
import br.com.pluri.eventor.enums.TipoAtividadeEnum;
import rcf.geventor.data.Atividade;
import rcf.geventor.data.Evento;

@Service
public class AtividadeSB extends BaseSB {
	
	
	private AtividadeDAO atividadeDAO;
	
	@Override
	protected void postConstructImpl() {
		atividadeDAO = getDAO(AtividadeDAO.class);
	}
	
	@Transactional(propagation=Propagation.REQUIRED)
	public void insert(Atividade atividade, Long idEvento){
		atividade.setEvento(new Evento(idEvento));
		atividade.setDataAlter(getDateAlter());
		if(atividade.getOrganizacao() == null){
			atividade.setOrganizacao(TipoAtividadeEnum.COMUM.tipo);
		}
		atividadeDAO.save(atividade);
	}
	
	@Transactional(propagation=Propagation.NOT_SUPPORTED)
	 public Atividade findByNome(String nome){
		 Atividade resultado = atividadeDAO.findByNome(nome);
		 return resultado;
	 }
	
	@Transactional(propagation=Propagation.NOT_SUPPORTED)
	public int qtdInscritoInAtividade(Long idAtiv) throws SQLException{
		return atividadeDAO.qtdInscritoInAtividade(idAtiv);
	}
	
	@Transactional(propagation=Propagation.NOT_SUPPORTED)
	public int qtdInscritoSitInAtividade(String status ,Long  idAtiv) throws SQLException{
		return atividadeDAO.qtdInscritoSitInAtividade(status, idAtiv);
	}
	
	@Transactional(propagation=Propagation.NOT_SUPPORTED)
	public List<Atividade> findByIdEven(Long idEvento){
		return atividadeDAO.findByIdEven(idEvento);
	}
	
	@Transactional(propagation=Propagation.NOT_SUPPORTED)
	public List<Atividade> findByIdEvenAndTipoAtiv(Long idEvento, String tpAtiv){
		return atividadeDAO.findByIdEvenAndTipoAtiv(idEvento, tpAtiv);
	}
	
	@Transactional(propagation=Propagation.NOT_SUPPORTED)
	public List<Atividade> findAllAtividadeByUsuario(Long idUsu){
		return atividadeDAO.findAllAtividadeByUsuario(idUsu);
	}
	
	@Transactional(propagation=Propagation.REQUIRED)
	public void delete(Atividade exclui){
		atividadeDAO.delete(exclui);
	}
	
	@Transactional(propagation=Propagation.NOT_SUPPORTED)
	 public Optional<Atividade> findById(Long id){
		Optional<Atividade> resultado = atividadeDAO.findAtividadeById(id);
		 return resultado;
	 }

	 //(Atividade ativ, Long idEven)
	@Transactional(propagation=Propagation.REQUIRED)
	public void editAtiv (Atividade ativ) {
		ativ.setDataAlter(getDateAlter());
		atividadeDAO.save(ativ);
	}

	public Page<Atividade> list(Pageable pageable) {
		return atividadeDAO.findAll(pageable);
	}

	public Page<Atividade> list(Pageable pageable, Specification<Atividade> filter) {
		return atividadeDAO.findAll(filter, pageable);
	}

}
