package rcf.geventor.services;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import br.com.etechoracio.common.business.BaseSB;
import rcf.geventor.data.EstadoDAO;
import rcf.geventor.data.Estado;

@Service
public class EstadoSB extends BaseSB {

	private EstadoDAO estadoDAO;
	
	@Override
	protected void postConstructImpl() {
		estadoDAO = getDAO(EstadoDAO.class);
	}
	
	@Transactional(propagation=Propagation.NOT_SUPPORTED)
	public List<Estado> findAll(){
		return estadoDAO.findAll();
	}
	
	@Transactional(propagation=Propagation.NOT_SUPPORTED)
	public Estado findById(Long idEstado){
		return estadoDAO.findEstadoById(idEstado);
	}

}
