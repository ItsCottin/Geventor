package br.com.pluri.eventor.view;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.annotation.PostConstruct;

import lombok.Getter;
import lombok.Setter;

import org.primefaces.component.tabview.TabView;
import org.primefaces.event.TabChangeEvent;
import org.primefaces.model.DefaultScheduleEvent;
import org.primefaces.model.ScheduleEvent;
import org.primefaces.model.ScheduleModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import br.com.etechoracio.common.view.BaseMB;
import br.com.etechoracio.common.view.MessageBundleLoader;
import br.com.pluri.eventor.business.AtividadeSB;
import br.com.pluri.eventor.business.CidadeSB;
import br.com.pluri.eventor.business.DistritoSB;
import br.com.pluri.eventor.business.EnderecoSB;
import br.com.pluri.eventor.business.EstadoSB;
import br.com.pluri.eventor.business.EventoSB;
import br.com.pluri.eventor.business.UsuarioAtividadeSB;
import br.com.pluri.eventor.business.UsuarioSB;
import br.com.pluri.eventor.business.exception.CEPInvalidoException;
import br.com.pluri.eventor.business.exception.DDDInvalidoException;
import br.com.pluri.eventor.business.exception.DataInvalidaException;
import br.com.pluri.eventor.business.exception.NRCasaUsuarioException;
import br.com.pluri.eventor.business.exception.PeriodoDataInvalidaException;
import br.com.pluri.eventor.model.Atividade;
import br.com.pluri.eventor.model.Cidade;
import br.com.pluri.eventor.model.Endereco;
import br.com.pluri.eventor.model.Estado;
import br.com.pluri.eventor.model.Evento;
import br.com.pluri.eventor.model.Usuario;
import br.com.pluri.eventor.model.UsuarioAtividade;

/**
 * Adicionado m�todo "retTitleEven(Evento even)" para retornar o titulo do evento
 * 
 * <pre>
 * Last Modified  $Date: 2023/04/04 12:27:45 $
 * Last Modified by $Author: Rodrigo Cotting $
 * </pre>
 * 
 * @author Rodrigo Cotting
 * @version $Revision: 1.0 $
 */

@Getter
@Setter
@Scope("view")
@Controller
public class EventoMB extends BaseMB {
	
	@Autowired
	private DistritoSB distritoSB;
	
	@Autowired
	private EnderecoSB enderecoSB;
	
	@Autowired
	private EventoSB eventoSB;
	
	@Autowired
	private UsuarioSB usuarioSB;
	
	@Autowired
	private CidadeSB cidadeSB;
	
	@Autowired
	private EstadoSB estadoSB;
	
	@Autowired
	private AtividadeSB atividadeSB;
	
	@Autowired
	private UsuarioAtividadeSB inscritosSB;
	
	private List<Atividade> resultadoAtividadeByEvento;
	private List<Evento> resultadoEvento;
	private Evento editEvento;
	private Map<String,Map<String,String>> data = new HashMap<String, Map<String,String>>();
	private List<Cidade> cidades;
	private List<Estado> estados;
	private int indexTab = 0;
	private List<Evento> resultEven;
	private List<Evento> allEvenMenosMeus;
	private static final long serialVersionUID = 1L;
	private ScheduleModel eventModel;
    private ScheduleModel lazyEventModel;
    private ScheduleEvent event = new DefaultScheduleEvent();
	private boolean confirmaExclui = false;
	public boolean modoConsulta;
	public Evento evenSel;
	private Endereco enderecoDoCEP;
	private String usaTelefone;
	private String maskTelefone;
	public boolean dataValidada;
	public boolean cepvalidoinformado;
	
	@PostConstruct
	public void postConstruct(){
		onEventos();
		estados = estadoSB.findAll();
		this.modoConsulta = false;
		this.evenSel = new Evento();
		this.editEvento = new Evento();
		findAllEventoMenosMeus();
		this.usaTelefone = "Telefone";
		this.maskTelefone = "(99) 9999-9999";
		this.editEvento.setVlr("Pago");
		this.dataValidada = false;
		this.cepvalidoinformado = false;
	}
	
	public void findAllEventoMenosMeus(){
		this.allEvenMenosMeus = eventoSB.findAllEventoMenosMeus(getCurrentUserId());
	}
	
	public void onTabChange(TabChangeEvent event) {
	    TabView tabView = (TabView) event.getComponent();
	    int activeTabIndex = tabView.getActiveIndex();
	    this.indexTab = activeTabIndex;
	}
	
	public void onEstadoChange(){
		if(editEvento.getEstado() == null){
			cidades = new ArrayList<Cidade>();
			return;
		}
		cidades = cidadeSB.findByEstado(editEvento.getEstado());
	}
	
	public void onChangeMyEndereco(){
		try{
			if (editEvento.isUsaMyEndereco()){
				Usuario usu = new Usuario();
				usu = usuarioSB.findById(getCurrentUserId());
				if(usu.getCep() == null || usu.getCep().equals("")){
					throw new CEPInvalidoException(MessageBundleLoader.getMessage("critica.endereconotfoundinusu"));
				} else {
					editEvento.setCep(usu.getCep());
					editEvento.setEstado(usu.getEstado());
					onEstadoChange();
					editEvento.setCidade(usu.getCidade());
					editEvento.setBairro(usu.getBairro());
					editEvento.setEndereco(usu.getEndereco());
					this.cepvalidoinformado = true;
					if(usu.getNrCasa() == null || usu.getNrCasa().equals("")){
						throw new NRCasaUsuarioException(MessageBundleLoader.getMessage("info.numeronotfoundinusu"));
					} else {
						editEvento.setNumeroLugar(usu.getNrCasa());
					}
				}
			} else {
				limpaEndereco();
			}
		} catch (CEPInvalidoException e) {
			showErrorMessage(e.getMessage());
			this.editEvento.setUsaMyEndereco(false);
			limpaEndereco();
		} catch (NRCasaUsuarioException ex) {
			showInfoMessage(ex.getMessage());			
		}
	}
	
	public void onChangeMyTelefone(){
		if(editEvento.isUsaMyTelefone()){
			Usuario usu = new Usuario();
			usu = usuarioSB.findById(getCurrentUserId());
			if(usaTelefone.equals("Telefone")){
				if(usu.getTelefone() != null){
					setMaskTelefone();
					editEvento.setTelefone(usu.getTelefone());
				} else {
					showInfoMessage(MessageBundleLoader.getMessage("info.informacaonotfoundinusu", new Object[] {"Telefone"}));
				}
			}
			if(usaTelefone.equals("Celular")){
				if(usu.getCelular() != null){
					setMaskTelefone();
					editEvento.setTelefone(usu.getCelular());
				} else {
					showInfoMessage(MessageBundleLoader.getMessage("info.informacaonotfoundinusu", new Object[] {"Celular"}));
				}
			}
			if(usu.getEmail() == null || usu.getEmail().equals("")){
				showInfoMessage(MessageBundleLoader.getMessage("info.informacaonotfoundinusu", new Object[] {"E-mail"}));
			} else {
				editEvento.setEmail(usu.getEmail());
			}
		} else {
			editEvento.setTelefone("");
			editEvento.setEmail("");
			if(usaTelefone.equals("Telefone")){
				this.maskTelefone = "(99) 9999-9999";
			} else {
				this.maskTelefone = "(99) 99999-9999";
			}
		}
	}
	
	public void onChangePrecoEven(){
		if(editEvento.getVlr().equals("Pago")){
			editEvento.setVlr("Gratuito");
		} else {
			editEvento.setVlr("Pago");
		}
	}
	
	public void setMaskTelefone(){
		if(usaTelefone.equals("Telefone")){
			this.maskTelefone = "(99) 9999-9999";
		} else {
			this.maskTelefone = "(99) 99999-9999";
		}
	}
	
	// M001 - insert do evento
	public void doSave(){
		eventoSB.insert(editEvento, getCurrentUserId());
		if (editEvento.getId() == null) {
			showInfoMessage(MessageBundleLoader.getMessage("even.insert_sucess"));
		} else {
			showInfoMessage(MessageBundleLoader.getMessage("even.update_sucess"));
		}
		onEventos();
		doPrepareSave(); 
	}
	
	public void doPrepareSave(){
		editEvento = new Evento();
		this.modoConsulta = false;
		this.resultadoAtividadeByEvento = null;
	}
	
	public void validaHoraIniEvenHoraFimEven(){
		try {
			if(editEvento.getDataFim() != null && editEvento.getDataInicio() != null) {
				if(editEvento.getHoraFim() != null && editEvento.getHoraInicio() != null && editEvento.getDataFim().equals(editEvento.getDataInicio())) {
					Calendar calEvenIni = Calendar.getInstance();
					Calendar calEvenFim = Calendar.getInstance();
					
					calEvenIni.setTime(editEvento.getHoraInicio());
					calEvenFim.setTime(editEvento.getHoraFim());
					
					int horaInicAtiv = calEvenIni.get(Calendar.HOUR_OF_DAY);
					int minutoInicAtiv = calEvenIni.get(Calendar.MINUTE);
					
					int horaFimAtiv = calEvenFim.get(Calendar.HOUR_OF_DAY);
					int minutoFimAtiv = calEvenFim.get(Calendar.MINUTE);
					
					if(horaInicAtiv > horaFimAtiv || horaInicAtiv == horaFimAtiv && minutoInicAtiv > minutoFimAtiv){
						throw new PeriodoDataInvalidaException(
								MessageBundleLoader.getMessage("hora.iniciomaiorfim", 
										new Object[] {formatarData(editEvento.getHoraInicio(),"HH:mm"), 
												formatarData(editEvento.getHoraFim(),"HH:mm")}, 
										Locale.getDefault()));
					}
				}
			}
		} catch (PeriodoDataInvalidaException e){
			showErrorMessage(e.getMessage());
			this.editEvento.setHoraInicio(null);
			this.editEvento.setHoraFim(null);
		}
	}
	
	public void validarDatasEvento(){
		try {
			if (editEvento.getDataInicio() != null && editEvento.getDataFim() != null) {
				this.dataValidada = false;
				Date dataAtual = getDateNow();
				int result = editEvento.getDataInicio().compareTo(dataAtual);
				if(result < 0){
					throw new PeriodoDataInvalidaException(
							MessageBundleLoader.getMessage("date.iniciomenoratual", 
									new Object[] {formatarData(editEvento.getDataInicio(),"dd/MM/yyyy"), 
											formatarData(dataAtual,"dd/MM/yyyy")}, 
									Locale.getDefault()));
				}
				if (editEvento.getDataFim().before(editEvento.getDataInicio())) {
					throw new DataInvalidaException(
							MessageBundleLoader.getMessage("date.iniciomaiorfim", 
									new Object[] {formatarData(editEvento.getDataInicio(), "dd/MM/yyyy"), 
											 formatarData(editEvento.getDataFim(), "dd/MM/yyyy")}, 
									Locale.getDefault()));
				}
				if(editEvento.getDataInicio().equals(editEvento.getDataFim())){
					this.editEvento.setMesmoDia(true);
				}
				this.dataValidada = true;
				validaHoraIniEvenHoraFimEven();
			} else {
				this.dataValidada = true;
			}
		} catch (PeriodoDataInvalidaException e){
			showErrorMessage(e.getMessage());
			this.editEvento.setDataInicio(null);
			this.editEvento.setDataFim(null);
		} catch (DataInvalidaException ex){
			showErrorMessage(ex.getMessage());
			this.editEvento.setDataInicio(null);
			this.editEvento.setDataFim(null);
		}
	}

	public void onEventos(){
		resultadoEvento = eventoSB.findEventosByUsuario(getCurrentUserId());
	}
	
	public void doRemove(Evento exclui){
		eventoSB.delete(exclui);
		showInfoMessage(MessageBundleLoader.getMessage("even.delete_sucess"));
		onEventos();
	}
	
	public void doEdit(Evento edit) throws SQLException {
		onPrepareEditOuConsulta(edit, false);
	}
	
	public void doConsulta(Map<String, Object> params) throws SQLException {
		Evento edit = (Evento) params.get("evento");
		String request = (String) params.get("request");
		onPrepareEditOuConsulta(edit, true);
		if (request.equals("card")){
			setAtividadeSeEstaInscrito(atividadeSB.findByEventos(edit.getId()));
		} else {
			this.resultadoAtividadeByEvento = null;
		}
	}
	
	public boolean findSeEstaInscritoNaAtividade(Long idAtiv){
		UsuarioAtividade usuAtiv = new UsuarioAtividade();
		usuAtiv = inscritosSB.findSeEstaInscritoNaAtividade(idAtiv, getCurrentUserId());
		if(usuAtiv == null){
			return false;
		} else {
			return true;
		}
	}
	
	public void setAtividadeSeEstaInscrito(List<Atividade> ativ){
		this.resultadoAtividadeByEvento = null;
		this.resultadoAtividadeByEvento = new ArrayList<Atividade>();
		for (Atividade ati : ativ) {
			ati.setEstaInscrito(findSeEstaInscritoNaAtividade(ati.getId()));
			this.resultadoAtividadeByEvento.add(ati);
		}
	}
	
	public void doIncrever(Atividade ativ){
		UsuarioAtividade inscrito = new UsuarioAtividade();
		Usuario usuario = new Usuario();
		usuario = usuarioSB.findById(getCurrentUserId());
		inscrito.setStatus("Pendente");
		inscrito.setUsuario(usuario);
		inscrito.setAtividade(ativ);
		inscritosSB.insert(inscrito);
		setAtividadeSeEstaInscrito(atividadeSB.findByEventos(ativ.evento.getId()));
		
	}
	
	public void onPrepareEditOuConsulta(Evento edit, Boolean consulta) throws SQLException {
		doPrepareSave();
		this.modoConsulta = consulta;
		this.editEvento = eventoSB.findById(edit.getId());
		this.editEvento.setMesmoDia(false);
		this.editEvento.setExisteInscrito(false);
		if(eventoSB.qtdInscritoInEvento(editEvento.getId()) > 0){
			this.modoConsulta = true;
			editEvento.setExisteInscrito(true);
		}
		validaTpContato();
		onEstadoChange();
	}
	
	public void doPrepareInsert(){
		this.editEvento = new Evento();
		this.editEvento.setVlr("Pago");
	}
	
	public void findEnderecoByCEP(){
		try {
			if (!editEvento.getCep().contains("_")){
				this.enderecoDoCEP = new Endereco();
				this.enderecoDoCEP = enderecoSB.findCidadeAndEstadoByCEP(editEvento.getCep());
				Usuario usu = new Usuario();
				usu = usuarioSB.findById(getCurrentUserId());
				if(!editEvento.getCep().equals(usu.getCep())){
					this.editEvento.setUsaMyEndereco(false);
				}
				if (enderecoDoCEP != null) {
					this.editEvento.setCep(enderecoDoCEP.getCep());
					this.editEvento.setEstado(enderecoDoCEP.cidade.estado.getUf());
					onEstadoChange();
					this.editEvento.setCidade(enderecoDoCEP.cidade.getName());
					this.editEvento.setBairro(distritoSB.findById(enderecoDoCEP.getIdDistrict()).getBairro());
					this.editEvento.setEndereco(enderecoDoCEP.getEndereco());
					this.cepvalidoinformado = true;
				} else {
					throw new CEPInvalidoException(MessageBundleLoader.getMessage("critica.cepnotfound", new Object[] {editEvento.getCep()}));
				}
			} else {
				limpaEndereco();
				this.editEvento.setUsaMyEndereco(false);
				this.cepvalidoinformado = false;
			}
		} catch (CEPInvalidoException e) {
			showErrorMessage(e.getMessage());
			limpaEndereco();
			this.cepvalidoinformado = false;
			this.editEvento.setUsaMyEndereco(false);
		}
	}
	
	public void limpaEndereco(){
		editEvento.setCep("");
		editEvento.setEstado(null);
		editEvento.setCidade("");
		onEstadoChange();
		editEvento.setBairro("");
		editEvento.setEndereco("");
		editEvento.setNumeroLugar("");
		this.cepvalidoinformado = false;
	}
	
	public void validaTpContato(){
		if(editEvento.getTelefone().length() == 15){
			maskTelefone = "(99) 99999-9999";
			usaTelefone = "Celular";
		} else {
			maskTelefone = "(99) 9999-9999";
			usaTelefone = "Telefone";
		}
	}
	
	public void validaDDDAfterSelCidade(){
		if(editEvento.getTelefone() != null) {
			validaDDD(editEvento.getTelefone());
		}
	}
	
	public void validaDDD(String numero){
		try {
			if (!numero.contains("_")){
				if(!numero.equals("")){
					if (numero.length() == 15){
						validaPrimeiroDigCelular(numero);
					}
					if (!editEvento.getCidade().equals("")){
						if(editEvento.getCep() == null){
							boolean naoContem = true;
							List<Cidade> cidlist = new ArrayList<Cidade>();
							cidlist = cidadeSB.findByName(editEvento.getCidade());
							List<Integer> listddd;
							for (Cidade cid : cidlist){
								listddd = enderecoSB.findDDDInnerJoinCity(cid.getId());
								for (Integer ddd : listddd){
									if (ddd == Integer.parseInt(numero.substring(1, 3))){
										naoContem = false;
									}
								}
							}
							if(naoContem){
								throw new DDDInvalidoException(
										MessageBundleLoader.getMessage("critica.dddnaopertencecidade", new Object[] {numero, editEvento.getCidade()}));
							}
						} else {
							if(Integer.parseInt(numero.substring(1, 3)) != enderecoSB.findEnderecoByCEP(editEvento.getCep()).getDdd()){
								throw new DDDInvalidoException(
										MessageBundleLoader.getMessage("critica.dddnaopertencecidade", new Object[] {numero, editEvento.getCidade()}));
							}
						}
					}
				}
			}
		} catch (DDDInvalidoException e){
			showInfoMessage(e.getMessage());
		}
	}
	
	public void validaPrimeiroDigCelular(String numero){
		try {
			if (Integer.parseInt(numero.substring(5, 6)) != 9) {
				throw new DDDInvalidoException(MessageBundleLoader.getMessage("critica.digcelularinvalido", new Object[] {numero.substring(5, 6), numero}));
			}
		} catch (DDDInvalidoException e) {
			showErrorMessage(e.getMessage());
			editEvento.setTelefone("");
		}
	}
}