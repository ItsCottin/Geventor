package br.com.pluri.eventor.view;

import java.sql.SQLException;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.time.ZonedDateTime;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import lombok.Getter;
import lombok.Setter;
import br.com.etechoracio.common.view.BaseMB;
import br.com.etechoracio.common.view.MessageBundleLoader;
import br.com.pluri.eventor.business.AtividadeSB;
import br.com.pluri.eventor.business.EventoSB;
import br.com.pluri.eventor.business.exception.PeriodoDataInvalidaException;
import br.com.pluri.eventor.model.Atividade;
import br.com.pluri.eventor.model.Evento;

@Getter
@Setter
@Scope("view")
@Controller
public class AtividadeMB extends BaseMB {
	
	@Autowired
	private EventoSB eventoSB;

	@Autowired
	private AtividadeSB atividadeSB;
	
	private List<Atividade> resultadoAtividadeByEvento;
	private Atividade editAtividade = new Atividade();
	public boolean modoConsulta;
	public Evento evenSel;
	public Atividade ativSel;
	private List<Evento> resultadoEvento;
	private String htmlModalAtiv;
	private int vagasRestant;	
	public Long idEvento;
	public boolean dataValidada;
	public String infoDataInicioEven;
	public String infoDataFimEven;
	
	@PostConstruct
	public void PostConstruct(){
		onEventos();
		this.modoConsulta = false;
		onAllAtividade();
		this.ativSel = new Atividade();
		this.dataValidada = false;
	}
	
	public void doSave(){
		if(idEvento == null) {
			idEvento = editAtividade.evento.getId();
		}
		if(editAtividade.getId() == null){
			atividadeSB.insert(editAtividade, idEvento);
			showInfoMessage(MessageBundleLoader.getMessage("ativ.insert_sucess"));
		}else{
			atividadeSB.editAtiv(editAtividade, idEvento);
			showInfoMessage(MessageBundleLoader.getMessage("ativ.update_sucess"));
		}
		onAllAtividade();
		doPrepareSave();
	}
	
	// Metodo criado para alterar a atividade entre eventos.
	public void onEventoChangeV2(){
		editAtividade.evento = eventoSB.findById(idEvento);
		setQtdVagasRest();
		if(editAtividade.evento.getVlr().equals("Gratuito")){
			editAtividade.setIsgratuito(true);
			editAtividade.setPreco("Gratuito");
		} else {
			editAtividade.setIsgratuito(false);
			editAtividade.setPreco(null);
		}
		onAllAtividade();
		getInfoDataEven();
	}
	
	public void onChangeCheckGratuito(){
		if(editAtividade.getNome() != null) {
			if (editAtividade.getPreco().equals("Gratuito")) {
				editAtividade.setIsgratuito(true);
			} else {
				editAtividade.setIsgratuito(false);
			}
		}
	}
	
	public void getInfoDataEven(){
		if(editAtividade.evento != null){
			StringBuilder sb = new StringBuilder();
			sb.append(formatarData(editAtividade.evento.getDataInicio(), "dd/MM/yyyy") + " " + MessageBundleLoader.getMessage("acento.das") + " ");
			sb.append(formatarData(editAtividade.evento.getDataInicio(), "HH:mm"));
			this.infoDataInicioEven = sb.toString();
			sb = new StringBuilder();
			sb.append(formatarData(editAtividade.evento.getDataFim(), "dd/MM/yyyy") + " " + MessageBundleLoader.getMessage("acento.as") + " ");
			sb.append(formatarData(editAtividade.evento.getDataFim(), "HH:mm"));
			this.infoDataFimEven = sb.toString();
		} else {
			this.infoDataFimEven = "";
			this.infoDataInicioEven = "";
		}
	}
	
	public void onSetDataHoraEvenNaAtiv(){
		if(editAtividade.evento != null){
			if(editAtividade.isUsaPeriodoEven()){
				this.editAtividade.setDataInicio(editAtividade.evento.getDataInicio());
				this.editAtividade.setHoraInicio(editAtividade.evento.getDataInicio());
				this.editAtividade.setDataFim(editAtividade.evento.getDataFim());
				this.editAtividade.setHoraFim(editAtividade.evento.getDataFim());
			} else {
				this.editAtividade.setDataInicio(null);
				this.editAtividade.setHoraInicio(null);
				this.editAtividade.setDataFim(null);
				this.editAtividade.setHoraFim(null);
			}
		} else {
			this.editAtividade.setUsaPeriodoEven(false);
			showInfoMessage(MessageBundleLoader.getMessage("ativ.info_no_even"));
		}
	}
	
	public void setTituloAtiv(){
		this.editAtividade.setNome(editAtividade.getNome());
	}
	
	public void setPrecoAtiv(){
		this.editAtividade.setPreco(editAtividade.getPreco());
	}
	
	public Date formatDateForValidacao(Date data){
		Calendar calendar = Calendar.getInstance();
		calendar.setTime(data);
		calendar.set(Calendar.HOUR_OF_DAY, 0);
		calendar.set(Calendar.MINUTE, 0);
		calendar.set(Calendar.SECOND, 0);
		calendar.set(Calendar.MILLISECOND, 0);
		return data = calendar.getTime();
	}
	
	public void validaDataInicio(){
		try {
			if(editAtividade.getDataInicio() != null){
				this.dataValidada = false;
				validaDataIniAtivDataFimAtiv();
				editAtividade.setMesmodiainicio(false);
				Date dataEven = formatDateForValidacao(editAtividade.evento.getDataInicio());
				Date dataAtiv = formatDateForValidacao(editAtividade.getDataInicio());
				
				int result = dataAtiv.compareTo(dataEven);
				if(result < 0){
					throw new PeriodoDataInvalidaException(
							MessageBundleLoader.getMessage("ativ.datemenordataeven", 
									new Object[] {formatarData(editAtividade.getDataInicio(), "dd/MM/yyyy"), 
												  formatarData(editAtividade.evento.getDataInicio(), "dd/MM/yyyy")}));
				}
				this.dataValidada = true;
				if (result == 0){
					editAtividade.setMesmodiainicio(true);
					validaHoraInicio();
				}
			}
		} catch (PeriodoDataInvalidaException e){
			showErrorMessage(e.getMessage());
			this.editAtividade.setDataInicio(null);
		}
	}
	
	public void validaDataFim(){
		try {
			if(editAtividade.getDataFim() != null){
				this.dataValidada = false;
				validaDataIniAtivDataFimAtiv();
				editAtividade.setMesmodiafim(false);
				
				Date dataEven = formatDateForValidacao(editAtividade.evento.getDataFim());
				Date dataAtiv = formatDateForValidacao(editAtividade.getDataFim());
				
				int result = dataAtiv.compareTo(dataEven);
				if(result > 0){
					throw new PeriodoDataInvalidaException(
							MessageBundleLoader.getMessage("ativ.datemaiordataeven", 
									new Object[] {formatarData(editAtividade.getDataFim(), "dd/MM/yyyy"), 
											formatarData(editAtividade.evento.getDataFim(), "dd/MM/yyyy")}, 
									Locale.getDefault()));
				}
				this.dataValidada = true;
				if (result == 0){
					editAtividade.setMesmodiafim(true);
					validaHoraFim();
				}
			}
		} catch (PeriodoDataInvalidaException e){
			showErrorMessage(e.getMessage());
			this.editAtividade.setDataFim(null);
		}
	}
	
	public void validaDataIniAtivDataFimAtiv(){
		try {
			if(editAtividade.getDataFim() != null && editAtividade.getDataInicio() != null) {
				int result = editAtividade.getDataInicio().compareTo(editAtividade.getDataFim());
				if(result > 0){
					throw new PeriodoDataInvalidaException(
							MessageBundleLoader.getMessage("date.iniciomaiorfim", 
									new Object[] {formatarData(editAtividade.getDataInicio(), "dd/MM/yyyy"), 
											 formatarData(editAtividade.getDataFim(), "dd/MM/yyyy")}, 
									Locale.getDefault()));
				}
			}
		} catch (PeriodoDataInvalidaException e){
			showErrorMessage(e.getMessage());
			this.editAtividade.setDataFim(null);
			this.editAtividade.setDataInicio(null);
		}
	}
	
	public void validaHoraIniAtivHoraFimAtiv(){
		try {
			if(editAtividade.getDataFim() != null && editAtividade.getDataInicio() != null) {
				if(editAtividade.getHoraFim() != null && editAtividade.getHoraInicio() != null && editAtividade.getDataFim().equals(editAtividade.getDataInicio())) {
					Calendar calAtivIni = Calendar.getInstance();
					Calendar calAtivFim = Calendar.getInstance();
					
					calAtivIni.setTime(editAtividade.getHoraInicio());
					calAtivFim.setTime(editAtividade.getHoraFim());
					
					int horaInicAtiv = calAtivIni.get(Calendar.HOUR_OF_DAY);
					int minutoInicAtiv = calAtivIni.get(Calendar.MINUTE);
					
					int horaFimAtiv = calAtivFim.get(Calendar.HOUR_OF_DAY);
					int minutoFimAtiv = calAtivFim.get(Calendar.MINUTE);
					
					if(horaInicAtiv > horaFimAtiv || horaInicAtiv == horaFimAtiv && minutoInicAtiv > minutoFimAtiv){
						throw new PeriodoDataInvalidaException(
								MessageBundleLoader.getMessage("hora.iniciomaiorfim", 
										new Object[] {formatarData(editAtividade.getHoraInicio(),"HH:mm"), 
												formatarData(editAtividade.getHoraFim(),"HH:mm")}, 
										Locale.getDefault()));
					}
				}
			}
		} catch (PeriodoDataInvalidaException e){
			showErrorMessage(e.getMessage());
			this.editAtividade.setHoraInicio(null);
			this.editAtividade.setHoraFim(null);
		}
	}
	
	
	
	public void validaHoraInicio(){
		try{
			if(editAtividade.getDataFim() != null && editAtividade.getDataInicio() != null && editAtividade.getHoraInicio() != null) {
				if(!dataValidada){
					validaDataInicio();
				}
				if(editAtividade.isMesmodiainicio()){
					Calendar calAtiv = Calendar.getInstance();
					Calendar calEven = Calendar.getInstance();
					
					calAtiv.setTime(editAtividade.getHoraInicio());
					calEven.setTime(editAtividade.evento.getDataInicio());
					
					int horaAtiv = calAtiv.get(Calendar.HOUR_OF_DAY);
					int minutoAtiv = calAtiv.get(Calendar.MINUTE);
					
					int horaEven = calEven.get(Calendar.HOUR_OF_DAY);
					int minutoEven = calEven.get(Calendar.MINUTE);
					
					if(horaEven > horaAtiv || horaEven == horaAtiv && minutoEven > minutoAtiv){
						throw new PeriodoDataInvalidaException(
								MessageBundleLoader.getMessage("hora.iniciomenorinicio.even", 
										new Object[] {formatarData(editAtividade.getHoraInicio(),"HH:mm"), 
												formatarData(editAtividade.evento.getDataInicio(),"HH:mm")}, 
										Locale.getDefault()));
					}
				}
				validaHoraIniAtivHoraFimAtiv();
			}
		} catch (PeriodoDataInvalidaException e) {
			showErrorMessage(e.getMessage());
			this.editAtividade.setHoraInicio(null);
		}
	}
	
	public void validaHoraFim(){
		try{
			if(editAtividade.getDataFim() != null && editAtividade.getDataInicio() != null && editAtividade.getHoraFim() != null) {
				if(!dataValidada){
					validaDataFim();
				}
				if(editAtividade.isMesmodiafim()){
					Calendar calAtiv = Calendar.getInstance();
					Calendar calEven = Calendar.getInstance();
					
					calAtiv.setTime(editAtividade.getHoraFim());
					calEven.setTime(editAtividade.evento.getDataFim());
					
					int horaAtiv = calAtiv.get(Calendar.HOUR_OF_DAY);
					int minutoAtiv = calAtiv.get(Calendar.MINUTE);
					
					int horaEven = calEven.get(Calendar.HOUR_OF_DAY);
					int minutoEven = calEven.get(Calendar.MINUTE);
					
					if(horaEven < horaAtiv || horaEven == horaAtiv && minutoEven < minutoAtiv){
						throw new PeriodoDataInvalidaException(
								MessageBundleLoader.getMessage("hora.fimmaiorfim.even", 
										new Object[] {formatarData(editAtividade.getHoraFim(),"HH:mm"), 
												formatarData(editAtividade.evento.getDataFim(),"HH:mm")}, 
										Locale.getDefault()));
					}
				}
				validaHoraIniAtivHoraFimAtiv();
			}
		} catch (PeriodoDataInvalidaException e) {
			showErrorMessage(e.getMessage());
			this.editAtividade.setHoraFim(null);
		}
	}
	
	public void onChangeGratuito(){
		if(editAtividade.isIsgratuito()){
			editAtividade.setPreco("Gratuito");
		} else {
			if (editAtividade.getId() != null) {
				editAtividade.setPreco(atividadeSB.findById(editAtividade.getId()).getPreco());
			} else {
				editAtividade.setPreco("");
			}
		}
	}
	
	public void onAllAtividade() {
		resultadoAtividadeByEvento = atividadeSB.findAllAtividadeByUsuario(getCurrentUserId());
	}
	
	public boolean isVigenteAtiv(Date data){
		int result = data.compareTo(getDateNowAtiv());
		if(result > 0) {
			return true;
		} else {
			return false;
		}
	}
	
	public Date getDateNowAtiv(){
		LocalDateTime agora = LocalDateTime.now();
	    ZoneId zoneId = ZoneId.of("UTC");
	    ZonedDateTime zdt = agora.atZone(zoneId);
	    return Date.from(zdt.toInstant());
	}
	
	public void onEventos(){
		resultadoEvento = eventoSB.findEventosByUsuario(getCurrentUserId());
		Iterator<Evento> it = resultadoEvento.iterator();
	    while (it.hasNext()) {
	        Evento even = it.next();
	        if (!isVigenteAtiv(even.getDataInicio())) {
	            if (editAtividade.getNome() != null) {
	                if (editAtividade.evento.getId() != even.getId()) {
	                    it.remove();
	                }
	            } else {
	                it.remove();
	            }
	        }
	    }
	}
	
	public void doRemove(Atividade exclui){
		atividadeSB.delete(exclui);
	}
	
	public void setIdEvento(Long idEvento){
		this.idEvento = idEvento;
	}
	
	public void doPrepareInsert(){
		this.editAtividade = new Atividade();
		this.editAtividade.evento = new Evento();
		this.editAtividade.evento.setVagas(0);
		this.editAtividade.evento.setVlr("Gratuito");
	}
	
	public void doPrepareDel(Atividade ativ){
		try {
			ativ.setExisteInscrito(false);
			if(atividadeSB.qtdInscritoInAtividade(ativ.getId()) > 0){
				ativ.setExisteInscrito(true);
			}
			this.ativSel = new Atividade();
			this.ativSel = ativ;
		} catch (SQLException e) {
			showErrorMessage(MessageBundleLoader.getMessage("critica.erroconexaosql"));
		}
	}
	
	public void doEdit(Atividade edit) throws SQLException{
		doPrepareSave();
		prepareEditOuConsulta(edit);
		this.editAtividade.setDoEditAtiv(true);
		if(edit.evento != null){
			if (isVigente(edit.evento.getDataInicio())){
				this.modoConsulta = false;
			} else {
				this.modoConsulta = true;
				editAtividade.setEventonaovigente(true);
			}
		} else {
			this.modoConsulta = true;
		}
	}
	
	public void doPrepareSave(){
		this.editAtividade = new Atividade();
		onEventos();
		this.vagasRestant = 0; 
		this.idEvento = null;
		this.modoConsulta = false;
		onAllAtividade();
	}
	
	public void doConsulta(Atividade edit) throws SQLException {
		doPrepareSave();
		prepareEditOuConsulta(edit);
		this.editAtividade.setDoEditAtiv(false);
		this.modoConsulta = true;
	}
	
	public void prepareEditOuConsulta(Atividade edit) throws SQLException{
		this.editAtividade = atividadeSB.findById(edit.getId());
		this.idEvento = editAtividade.evento.getId();
		this.editAtividade.setEventonaovigente(false);
		this.editAtividade.setExisteInscrito(false);
		this.editAtividade.setQtdInscrito(atividadeSB.qtdInscritoInAtividade(editAtividade.getId()));
		if(editAtividade.getQtdInscrito() > 0){
			this.modoConsulta = true;
			editAtividade.setExisteInscrito(true);
		}
		setModalConsultaAtiv();
		setQtdVagasRest();
		getInfoDataEven();
		onEventos();
		onChangeCheckGratuito();
		validaInputVaga();
	}
	
	public void setQtdVagasRest(){
		this.vagasRestant = 0;
		for (Atividade ativ : atividadeSB.findByEventos(idEvento)){
			if(editAtividade.getId() != null) {
				if (!editAtividade.getId().equals(ativ.getId())){
					this.vagasRestant = vagasRestant + ativ.getVagas();
				}
			} else {
				this.vagasRestant = vagasRestant + ativ.getVagas();
			}
		}
		this.vagasRestant = eventoSB.findById(idEvento).getVagas() - vagasRestant;
	}
	
	public void validaInputVaga(){
		if(editAtividade.evento != null){
			if(vagasRestant < editAtividade.getVagas()){
				showErrorMessage(MessageBundleLoader.getMessage("critica.vagamaiordisponivel"));
				editAtividade.setVagas(0);
				setQtdVagasRest();
			} else {
				setQtdVagasRest();
				this.vagasRestant = vagasRestant - editAtividade.getVagas();
			}
		}
	}
	
	public String formatarDataFromTela(Map<String, Object> params) {
		Date data = (Date) params.get("data");
		String formato = (String) params.get("formato");
        return formatarData(data, formato);
    }
	
	public void setModalConsultaAtiv() {
		this.htmlModalAtiv = 
			  " <div class=\"modal fade\" id=\"modalConsAtividade\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"confirmDel\" aria-hidden=\"true\">\n" +
              "   <div class=\"modal-dialog modal-xl\" role=\"document\">\n" +
              "      <div class=\"modal-content\">\n" +
              "         <div class=\"modal-header ui-display-block-rcf\">\n" +
              "            <h5 class=\"modal-title\" id=\"exampleModalLabel\">Evento: " + editAtividade.evento.getTitulo() + "</h5>\n" +
              "            <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\">\n" +
              "              <span aria-hidden=\"true\"></span>\n" +
              "            </button>\n" +
              "         </div>\n" +
              "         <div class=\"modal-body\">\n" +
              "            <h:form id=\"modalformAtiv\">\n" +
              "               <h5 class=\"mb-3\">Atividade: " + editAtividade.getNome() + "</h5>\n" +
              "               <div class=\"col-md-12 col-lg-12\">\n" +
              "                  <div class=\"row mb-3 border-rcf\">\n" +
              "                     <div class=\"col-sm-12 row\">\n" +
              "                        <p class=\"font-weight-normal\">Detalhes da Atividade:  " + editAtividade.getDetalhes() + "</p>\n" +
              "                     </div>\n" +
              "                     <div class=\"col-sm-6 row\">\n" +
              "                        <p class=\"font-weight-normal\">Comeca: " + formatarData(editAtividade.getDataInicio(), "dd/MM/yyyy") + "as" +
              																	   formatarData(editAtividade.getDataInicio(), "HH:mm") + "</p>\n" +
              "                     </div>\n" +
              "                     <div class=\"col-sm-6 row\">\n" +
              "                        <p class=\"font-weight-normal\">Termina:  " + formatarData(editAtividade.getDataFim(), "dd/MM/yyyy") + "as" + 
              																		 formatarData(editAtividade.getDataFim(), "HH:mm") + "</p>\n" +
              "                     </div>\n" +
              "                     <div class=\"col-sm-12\">\n" +
              "                        <div class=\"row\">\n" +
              "                           <p class=\"font-weight-normal\">Preco:  " + editAtividade.getPreco() + "</p>\n" +
              "                        </div>\n" +
              "                        <div class=\"row\">\n" +
              "                        	 <p class=\"font-weight-normal\">Vagas:  " + editAtividade.getVagas() + "</p>\n" +
              "                        </div>\n" +
              "                     </div>" +
              "                  </div>" +
              "               </div>" +
              "               <div class=\"col-md-12 col-lg-12 ui-padding-right-0-rcf\">" +
		      "                  <div class=\"d-flex align-items-end flex-column\"> " +
              "                    <button type=\"button\" class=\"btn btn-secondary\" data-dismiss=\"modal\">Fechar</button>" +
		      "                  </div>" +
              "               </div>" +
		      "            </h:form>" +
              "          </div>" +
              "       </div>" +
              "    </div>" +
              " </div>";
	} 
}
