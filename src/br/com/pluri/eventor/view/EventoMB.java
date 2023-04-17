package br.com.pluri.eventor.view;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;

import javax.annotation.PostConstruct;
import javax.faces.application.FacesMessage;
import javax.faces.bean.ManagedBean;
import javax.faces.event.ActionEvent;

import lombok.Getter;
import lombok.Setter;

import org.primefaces.component.tabview.TabView;
import org.primefaces.event.ScheduleEntryMoveEvent;
import org.primefaces.event.ScheduleEntryResizeEvent;
import org.primefaces.event.SelectEvent;
import org.primefaces.event.TabChangeEvent;
import org.primefaces.model.DefaultScheduleEvent;
import org.primefaces.model.DefaultScheduleModel;
import org.primefaces.model.LazyScheduleModel;
import org.primefaces.model.ScheduleEvent;
import org.primefaces.model.ScheduleModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import br.com.etechoracio.common.view.BaseMB;
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
	private Evento editEvento = new Evento();
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
	private String cepInformado;
	
	@PostConstruct
	public void postConstruct(){
		onEventos();
		estados = estadoSB.findAll();
		this.modoConsulta = false;
		this.evenSel = new Evento();
		findAllEventoMenosMeus();
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
	
	// M001 - insert do evento
	public void doSave(){
		if (!validarDatasEvento()) {
			return;
		}
		eventoSB.insert(editEvento, getCurrentUserId());
		if (editEvento.getId() == null) {
			showInfoMessage("Evento inserido com sucesso");
		} else {
			showInfoMessage("Evento Atualizado com sucesso");
		}
		onEventos();
		doPrepareSave(); 
	}
	
	public void doPrepareSave(){
		editEvento = new Evento();
		this.modoConsulta = false;
		this.resultadoAtividadeByEvento = null;
	}
	
	private boolean validarDatasEvento() {
		if (editEvento.getDataInicio() != null && editEvento.getDataFim() != null) {
			if (editEvento.getDataFim().before(editEvento.getDataInicio())) {
				showErrorMessage("Data In�cio est� depois da data final do evento");
				return false;
			}
		} else if (editEvento.getDataInicio() != null || editEvento.getDataFim() != null) {
			showErrorMessage("Data In�cio est� depois da data final do evento");
			return false;
		}
		return true;
	}

	public void onEventos(){
		resultadoEvento = eventoSB.findEventosByUsuario(getCurrentUserId());
	}
	
	public void doRemove(Evento exclui){
		eventoSB.delete(exclui);
		showInfoMessage("Evento exclu�do com sucesso");
		onEventos();
	}
	
	public void doEdit(Evento edit){
		onPrepareEditOuConsulta(edit, false);
	}
	
	public void doConsulta(Map<String, Object> params) {
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
	
	public void setAtividadeSeEstaInscrito(List<Atividade> ativ) {
		this.resultadoAtividadeByEvento = null;
		this.resultadoAtividadeByEvento = new ArrayList<Atividade>();
		for (Atividade ati : ativ) {
			ati.setEstaInscrito(findSeEstaInscritoNaAtividade(ati.getId()));
			this.resultadoAtividadeByEvento.add(ati);
		}
	}
	
	public void doIncrever(Atividade ativ) {
		UsuarioAtividade inscrito = new UsuarioAtividade();
		Usuario usuario = new Usuario();
		usuario = usuarioSB.findById(getCurrentUserId());
		inscrito.setStatus("Pendente");
		inscrito.setUsuario(usuario);
		inscrito.setAtividade(ativ);
		inscritosSB.insert(inscrito);
		setAtividadeSeEstaInscrito(atividadeSB.findByEventos(ativ.evento.getId()));
		
	}
	
	public void onPrepareEditOuConsulta(Evento edit, Boolean consulta) {
		doPrepareSave();
		this.modoConsulta = consulta;
		this.editEvento = eventoSB.findById(edit.getId());
		onEstadoChange();
	}
	
	public void doPrepareInsert(){
		this.editEvento = new Evento();
	}
	
	public void findEnderecoByCEP() {
		try {
			if (!cepInformado.equals("_____-___")) {
				this.enderecoDoCEP = new Endereco();
				this.enderecoDoCEP = enderecoSB.findCidadeAndEstadoByCEP(cepInformado);
				if (enderecoDoCEP != null) {
					this.editEvento.setCep(enderecoDoCEP.getCep());
					this.editEvento.setEstado(enderecoDoCEP.cidade.estado.getUf());
					onEstadoChange();
					this.editEvento.setCidade(enderecoDoCEP.cidade.getName());
					this.editEvento.setBairro(distritoSB.findById(enderecoDoCEP.getIdDistrict()).getBairro());
					this.editEvento.setEndereco(enderecoDoCEP.getEndereco());
				} else {
					throw new CEPInvalidoException("CEP '" + cepInformado + "' n�o encontrado no Banco de Dados.\n"
							+ "Informe seu endere�o manualmente.");
				}
			}
		} catch (CEPInvalidoException e) {
			showErrorMessage(e.getMessage());
		}
	}
	
	public void validaDDDAfterSelCidade(){
		if(editEvento.getTelefone() != null) {
			validaDDD(editEvento.getTelefone());
		}
	}
	
	public void validaDDD(String numero) {
		try {
			if (!numero.contains("_")) {
				if(!numero.equals("")){
					if (numero.length() == 15) {
						validaPrimeiroDigCelular(numero);
					}
					if (!editEvento.getCidade().equals("")){
						if(editEvento.getCep() == null){
							boolean naoContem = true;
							List<Cidade> cidlist = new ArrayList<Cidade>();
							cidlist = cidadeSB.findByName(editEvento.getCidade());
							List<Integer> listddd;
							for (Cidade cid : cidlist) {
								listddd = enderecoSB.findDDDInnerJoinCity(cid.getId());
								for (Integer ddd : listddd){
									if (ddd == Integer.parseInt(numero.substring(1, 3))){
										naoContem = false;
									}
								}
							}
							if(naoContem) {
								throw new DDDInvalidoException("DDD do n�mero '" + numero + "' n�o pertence a cidade selecionada: '" + editEvento.getCidade() +  "'.");
							}
						} else {
							if(Integer.parseInt(numero.substring(1, 3)) != enderecoSB.findEnderecoByCEP(editEvento.getCep()).getDdd()){
								throw new DDDInvalidoException("DDD do n�mero '" + numero + "' n�o pertence a cidade selecionada: '" + editEvento.getCidade() +  "'.");
							}
						}
					}
				}
			}
		} catch (DDDInvalidoException e) {
			showInfoMessage(e.getMessage());
		}
	}
	
	public void validaPrimeiroDigCelular(String numero) {
		try {
			if (Integer.parseInt(numero.substring(5, 6)) != 9) {
				throw new DDDInvalidoException("Primeiro digito '" + numero.substring(5, 6) + "' do n�mero '" + numero + "' � inv�lido");
			}
		} catch (DDDInvalidoException e) {
			showErrorMessage(e.getMessage());
			editEvento.setTelefone("");
		}
	}
	
        @PostConstruct
        public void init() {
        	resultEven = eventoSB.findEventosByUsuario(getCurrentUserId());
            eventModel = new DefaultScheduleModel();
            for(Evento event : resultEven){
            	eventModel.addEvent(new DefaultScheduleEvent(event.getTitulo(), event.getDataInicio(), event.getDataFim()));
            }
             
            lazyEventModel = new LazyScheduleModel() {
                 
                /**
    			 * 
    			 */
    			private static final long serialVersionUID = 1L;
    
    			@Override
                public void loadEvents(Date start, Date end) {
                    Date random = getRandomDate(start);
                    addEvent(new DefaultScheduleEvent("Lazy Event 1", random, random));
                     
                    random = getRandomDate(start);
                    addEvent(new DefaultScheduleEvent("Lazy Event 2", random, random));
                }   
            };
        }
        
        /*public void doPrepareEdit(){
        	this.editEvento = eventoSB.findByTitulo(event.getTitle());
        }*/
         
        public Date getRandomDate(Date base) {
            Calendar date = Calendar.getInstance();
            date.setTime(base);
            date.add(Calendar.DATE, ((int) (Math.random()*30)) + 1);    //set random day of month
             
            return date.getTime();
        }
         
        public Date getInitialDate() {
            Calendar calendar = Calendar.getInstance();
            calendar.set(calendar.get(Calendar.YEAR), Calendar.FEBRUARY, calendar.get(Calendar.DATE), 0, 0, 0);
             
            return calendar.getTime();
        }
         
        public void addEvent(ActionEvent actionEvent) {
            if(event.getId() == null)
                eventModel.addEvent(event);
            else
                eventModel.updateEvent(event);
             
            event = new DefaultScheduleEvent();
        }
         
        public void onEventSelect(SelectEvent selectEvent) {
            event = (ScheduleEvent) selectEvent.getObject();
        }
         
        public void onDateSelect(SelectEvent selectEvent) {
            event = new DefaultScheduleEvent("", (Date) selectEvent.getObject(), (Date) selectEvent.getObject());
        }
         
        public void onEventMove(ScheduleEntryMoveEvent event) {
            FacesMessage message = new FacesMessage(FacesMessage.SEVERITY_INFO, "Event moved", "Day delta:" + event.getDayDelta() + ", Minute delta:" + event.getMinuteDelta());
        }
         
        public void onEventResize(ScheduleEntryResizeEvent event) {
            FacesMessage message = new FacesMessage(FacesMessage.SEVERITY_INFO, "Event resized", "Day delta:" + event.getDayDelta() + ", Minute delta:" + event.getMinuteDelta());
        }
}