package rcf.geventor.services;

import org.springframework.stereotype.Service;

import br.com.etechoracio.common.business.BaseSB;
import rcf.geventor.data.DistritoDAO;
import rcf.geventor.data.Distrito;

@Service
public class DistritoSB extends BaseSB {

	private DistritoDAO distritoDAO;
	
	@Override
	protected void postConstructImpl() {
		distritoDAO = getDAO(DistritoDAO.class);
	}
	
	public Distrito findById(Long idDistrito){
		return distritoDAO.findDistritoById(idDistrito);
	}
}
