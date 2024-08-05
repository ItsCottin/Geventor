package rcf.geventor.services;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import br.com.etechoracio.common.business.BaseSB;
import rcf.geventor.data.CidadeDAO;
import rcf.geventor.data.Cidade;

@Service
public class CidadeSB extends BaseSB {

	private CidadeDAO cidadeDAO;
	
	@Override
	protected void postConstructImpl() {
		cidadeDAO = getDAO(CidadeDAO.class);
	}
	
	@Transactional(propagation=Propagation.NOT_SUPPORTED)
	public List<Cidade> findByEstado(String estado){
		return cidadeDAO.findByEstado(estado);
	}
	
	@Transactional(propagation=Propagation.NOT_SUPPORTED)
	public Cidade findById(Long idCidade){
		return cidadeDAO.findCidadeById(idCidade);
	}
	
	@Transactional(propagation=Propagation.NOT_SUPPORTED)
	public List<Cidade> findByName(String nomeCid){
		return cidadeDAO.findByName(nomeCid);
	}
}
