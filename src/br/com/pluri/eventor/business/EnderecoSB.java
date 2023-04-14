package br.com.pluri.eventor.business;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import br.com.etechoracio.common.business.BaseSB;
import br.com.pluri.eventor.business.exception.CEPInvalidoException;
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
	public Endereco findCidadeAndEstadoByCEP(String cep) throws CEPInvalidoException {
		if (validaCEP(cep)) {
			return enderecoDAO.findEnderecoByCEP(cep);
		} else  {
			throw new CEPInvalidoException("O CEP informado '" + cep.replace("-", "").replace("_", "") + "' é inválido.");
		}
	}
	
	public boolean validaCEP (String cep) {
		String regex = "\\d{5}-\\d{3}";
		return cep.matches(regex);
	}
	
	@Transactional(propagation=Propagation.NOT_SUPPORTED)
	public List<Endereco> findEnderecoByIdCidAndCEP(Long idCid, String cep){
		return enderecoDAO.findEnderecoByIdCidAndCEP(idCid, cep);
	}
	
	@Transactional(propagation=Propagation.NOT_SUPPORTED)
	public List<Endereco> findEnderecoByIdCid(Long idCid){
		return enderecoDAO.findEnderecoByIdCid(idCid);
	}
	
	@Transactional(propagation=Propagation.NOT_SUPPORTED)
	public int findDDDInnerJoinCity(Long idCid){
		Object[] obj = enderecoDAO.findDDDInnerJoinCity(idCid);
		return (Integer) obj[0];
	}
	
}
