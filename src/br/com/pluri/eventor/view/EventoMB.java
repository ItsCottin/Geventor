package br.com.pluri.eventor.view;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
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
import br.com.pluri.eventor.business.CidadeSB;
import br.com.pluri.eventor.business.EstadoSB;
import br.com.pluri.eventor.business.EventoSB;
import br.com.pluri.eventor.model.Cidade;
import br.com.pluri.eventor.model.Estado;
import br.com.pluri.eventor.model.Evento;

/**
 * Adicionado método "retTitleEven(Evento even)" para retornar o titulo do evento
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
	private EventoSB eventoSB;
	
	@Autowired
	private CidadeSB cidadeSB;
	
	@Autowired
	private EstadoSB estadoSB;
	
	private List<Evento> resultadoEvento;
	private Evento editEvento = new Evento();
	private Map<String,Map<String,String>> data = new HashMap<String, Map<String,String>>();
	private List<Cidade> cidades;
	private List<Estado> estados;
	private int indexTab = 0;
	private List<Evento> resultEven;
	private static final long serialVersionUID = 1L;
	private ScheduleModel eventModel;
    private ScheduleModel lazyEventModel;
    private ScheduleEvent event = new DefaultScheduleEvent();
	private boolean confirmaExclui = false;
	public boolean modoConsulta;
	public Evento evenSel;
	
	@PostConstruct
	public void postConstruct(){
		onEventos();
		estados = estadoSB.findAll();
		this.modoConsulta = false;
		this.evenSel = new Evento();
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
		if (editEvento.getId() == null) {
			eventoSB.insert(editEvento, getCurrentUserId());
			showInfoMessage("Evento inserido com sucesso");
		} else {
			eventoSB.editeEvento(editEvento);
			showInfoMessage("Evento Atualizado com sucesso");
		}
		onEventos();
		doPrepareSave(); 
	}
	
	public void doPrepareSave(){
		editEvento = new Evento();
		this.modoConsulta = false;
	}
	
	private boolean validarDatasEvento() {
		if (editEvento.getDataInicio() != null && editEvento.getDataFim() != null) {
			if (editEvento.getDataFim().before(editEvento.getDataInicio())) {
				showErrorMessage("Data Início está depois da data final do evento");
				return false;
			}
		} else if (editEvento.getDataInicio() != null || editEvento.getDataFim() != null) {
			showErrorMessage("Data Início está depois da data final do evento");
			return false;
		}
		return true;
	}

	public void onEventos(){
		resultadoEvento = eventoSB.findEventosByUsuario(getCurrentUserId());
	}
	
	public void doRemove(Evento exclui){
		
		//TODO Linha com erro "The entity must not be null!" - ajustar linha para funcionamento correto
		eventoSB.delete(exclui);
		showInfoMessage("Evento excluído com sucesso");
		onEventos();
	}
	
	public void doEdit(Evento edit){	
		//TODO Linha com NullPointerException - ajustar linha para funcionamento correto
		doPrepareSave();
		this.modoConsulta = false;
		this.editEvento = eventoSB.findById(edit.getId());
		onEstadoChange();
	}
	
	public void doConsulta(Evento edit) {
		doPrepareSave();
		this.modoConsulta = true;
		this.editEvento = eventoSB.findById(edit.getId());
		editEvento.setSiteProprio(true);
	}
	
	public String retTitleEven(Evento even) {
		try {
			return eventoSB.findById(even.getId()).getTitulo();
		} catch (NullPointerException e){
			return "Nao deu certo";
		}
		
	}
	
	public void doPrepareInsert(){
		this.editEvento = new Evento();
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