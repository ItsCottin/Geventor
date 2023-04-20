package br.com.pluri.eventor.view;

import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javafx.scene.chart.PieChart.Data;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.sun.javafx.geom.Edge;

import lombok.Getter;
import lombok.Setter;
import br.com.etechoracio.common.view.BaseMB;
import br.com.pluri.eventor.business.AtividadeSB;
import br.com.pluri.eventor.business.EventoSB;
import br.com.pluri.eventor.business.exception.DataInvalidaException;
import br.com.pluri.eventor.business.exception.PeriodoDataInvalidaException;
import br.com.pluri.eventor.model.Atividade;
import br.com.pluri.eventor.model.Evento;
import br.com.pluri.eventor.utils.DataTimeUtils;

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
		onEventoChange();
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
			showInfoMessage("Atividade inserida com sucesso");
		}else{
			atividadeSB.editAtiv(editAtividade, idEvento);
			showInfoMessage("Atividade atualizada com sucesso");
		}
		onAllAtividade();
		doPrepareSave();
	}
	
	public void onEventoChange(){
		resultadoAtividadeByEvento = atividadeSB.findByEventos(idEvento);
	}
	
	// Metodo criado para alterar a atividade entre eventos.
	public void onEventoChangeV2(){
		editAtividade.evento = eventoSB.findById(idEvento);
		setQtdVagasRest();
		if(editAtividade.evento.getVlr().equals("Gratuito")){
			editAtividade.setIsgratuito(true);
		} else {
			editAtividade.setIsgratuito(false);
		}
		onAllAtividade();
		getInfoDataEven();
	}
	
	public void getInfoDataEven(){
		if(editAtividade.evento != null){
			StringBuilder sb = new StringBuilder();
			sb.append(formatarData(editAtividade.evento.getDataInicio(), "dd/MM/yyyy") + " dás ");
			sb.append(formatarData(editAtividade.evento.getDataInicio(), "HH:mm"));
			this.infoDataInicioEven = sb.toString();
			sb = new StringBuilder();
			sb.append(formatarData(editAtividade.evento.getDataFim(), "dd/MM/yyyy") + " ás ");
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
			showInfoMessage("Evento não informado!");
		}
	}
	
	public void setTituloAtiv(){
		this.editAtividade.setNome(editAtividade.getNome());
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
					throw new PeriodoDataInvalidaException("A data informada '" + formatarData(editAtividade.getDataInicio(), "dd/MM/yyyy") + "' é menor que a data do Evento '" 
														+ formatarData(editAtividade.evento.getDataInicio(), "dd/MM/yyyy"));
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
					throw new PeriodoDataInvalidaException("A data informada '" + formatarData(editAtividade.getDataFim(), "dd/MM/yyyy") + "' é maior que a data do Evento '" 
														+ formatarData(editAtividade.evento.getDataFim(), "dd/MM/yyyy"));
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
					throw new PeriodoDataInvalidaException("A data de inicio informada '" + formatarData(editAtividade.getDataInicio(), "dd/MM/yyyy") + "' não pode ser menor que a data de fim '" 
														+ formatarData(editAtividade.getDataFim(), "dd/MM/yyyy"));
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
						throw new PeriodoDataInvalidaException("O horário de início informado '" + formatarData(editAtividade.getHoraInicio(),"HH:mm") + "' é "
								+ "maior que o horario de fim informado '" + formatarData(editAtividade.getHoraFim(),"HH:mm"));
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
						throw new PeriodoDataInvalidaException("O horário de início informado '" + formatarData(editAtividade.getHoraInicio(),"HH:mm") + "' é "
								+ "menor que o horario de início do Evento '" + formatarData(editAtividade.evento.getDataInicio(),"HH:mm"));
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
						throw new PeriodoDataInvalidaException("O horário de fim informado '" + formatarData(editAtividade.getHoraFim(),"HH:mm") + "' é "
								+ "maior que o horario de fim do Evento '" + formatarData(editAtividade.evento.getDataFim(),"HH:mm"));
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
			editAtividade.setPreco("");
		}
	}
	
	public void listAtividadeByEvento(Long idEvento){
		resultadoAtividadeByEvento = atividadeSB.findByEventos(idEvento);
	}
	
	public void onAllAtividade() {
		resultadoAtividadeByEvento = atividadeSB.findAllAtividadeByUsuario(getCurrentUserId());
	}
	
	public void onEventos(){
		resultadoEvento = eventoSB.findEventosByUsuario(getCurrentUserId());
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
	
	public void doEdit(Atividade edit){
		doPrepareSave();
		this.modoConsulta = false;
		prepareEditOuConsulta(edit);
	}
	
	public void doPrepareSave(){
		onEventos();
		this.editAtividade = new Atividade();
		this.vagasRestant = 0; 
		this.idEvento = null;
		this.modoConsulta = false;
		onAllAtividade();
	}
	
	public void doConsulta(Atividade edit) {
		doPrepareSave();
		this.modoConsulta = true;
		prepareEditOuConsulta(edit);
	}
	
	public void prepareEditOuConsulta(Atividade edit){
		this.editAtividade = atividadeSB.findById(edit.getId());
		this.idEvento = editAtividade.evento.getId();
		setModalConsultaAtiv();
		setQtdVagasRest();
		getInfoDataEven();
	}
	
	public void setQtdVagasRest(){
		onEventoChange();
		this.vagasRestant = 0;
		for (Atividade ativ : resultadoAtividadeByEvento){
			this.vagasRestant = vagasRestant + ativ.getVagas();
		}
		this.vagasRestant = eventoSB.findById(idEvento).getVagas() - vagasRestant;
	}
	
	public void validaInputVaga(){
		if(editAtividade.evento != null){
			if(vagasRestant < editAtividade.getVagas()){
				showErrorMessage("Quantidade de vagas informada maior que a quantidade de vagas disponível pra esse Evento selecionado");
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
              "                        <p class=\"font-weight-normal\">Começa: " + formatarData(editAtividade.getDataInicio(), "dd/MM/yyyy") + " às " +
              																	   formatarData(editAtividade.getDataInicio(), "HH:mm") + "</p>\n" +
              "                     </div>\n" +
              "                     <div class=\"col-sm-6 row\">\n" +
              "                        <p class=\"font-weight-normal\">Termina:  " + formatarData(editAtividade.getDataFim(), "dd/MM/yyyy") + " às " + 
              																		 formatarData(editAtividade.getDataFim(), "HH:mm") + "</p>\n" +
              "                     </div>\n" +
              "                     <div class=\"col-sm-12\">\n" +
              "                        <div class=\"row\">\n" +
              "                           <p class=\"font-weight-normal\">Preço:  " + editAtividade.getPreco() + "</p>\n" +
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
