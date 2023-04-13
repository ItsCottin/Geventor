package br.com.pluri.eventor.business;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import br.com.etechoracio.common.business.BaseSB;
import br.com.pluri.eventor.dao.EnderecoDAO;
import br.com.pluri.eventor.model.Endereco;

@Service
public class EnderecoSB extends BaseSB {

	private EnderecoDAO enderecoDAO;
	
	@Override
	protected void postConstructImpl() {
		enderecoDAO = getDAO(EnderecoDAO.class);
	}
	
	@Transactional(propagation=Propagation.NOT_SUPPORTED)
	public Endereco findCidadeAndEstadoByCEP(String cep){
		return enderecoDAO.findCidadeAndEstadoByCEP(cep);
	}
	
}
