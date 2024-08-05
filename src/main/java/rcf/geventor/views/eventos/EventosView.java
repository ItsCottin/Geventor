package rcf.geventor.views.eventos;
import br.com.pluri.eventor.utils.DoubleToIntegerConverter;
import com.vaadin.flow.component.textfield.IntegerField;
import com.vaadin.flow.component.textfield.NumberField;
import com.vaadin.flow.data.converter.StringToIntegerConverter;
import rcf.geventor.services.EventoSB;
import rcf.geventor.data.Evento;
import com.vaadin.collaborationengine.CollaborationAvatarGroup;
import com.vaadin.collaborationengine.CollaborationBinder;
import com.vaadin.collaborationengine.UserInfo;
import com.vaadin.flow.component.UI;
import com.vaadin.flow.component.button.Button;
import com.vaadin.flow.component.button.ButtonVariant;
import com.vaadin.flow.component.datetimepicker.DateTimePicker;
import com.vaadin.flow.component.formlayout.FormLayout;
import com.vaadin.flow.component.grid.Grid;
import com.vaadin.flow.component.grid.GridVariant;
import com.vaadin.flow.component.html.Div;
import com.vaadin.flow.component.notification.Notification;
import com.vaadin.flow.component.notification.Notification.Position;
import com.vaadin.flow.component.notification.NotificationVariant;
import com.vaadin.flow.component.orderedlayout.HorizontalLayout;
import com.vaadin.flow.component.splitlayout.SplitLayout;
import com.vaadin.flow.component.textfield.TextField;
import com.vaadin.flow.data.binder.ValidationException;
import com.vaadin.flow.router.BeforeEnterEvent;
import com.vaadin.flow.router.BeforeEnterObserver;
import com.vaadin.flow.router.PageTitle;
import com.vaadin.flow.router.Route;
import com.vaadin.flow.spring.data.VaadinSpringDataHelpers;
import jakarta.annotation.security.PermitAll;

import java.text.SimpleDateFormat;
import java.time.Duration;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.Date;
import java.util.Optional;
import java.util.UUID;
import org.springframework.data.domain.PageRequest;
import org.springframework.orm.ObjectOptimisticLockingFailureException;
import rcf.geventor.views.MainLayout;


@PageTitle("Eventos")
@Route(value = "evento/:eventosID?/:action?(edit)", layout = MainLayout.class)
@PermitAll
public class EventosView extends Div implements BeforeEnterObserver {

    private final String EVENTOS_ID = "eventosID";
    private final String EVENTOS_EDIT_ROUTE_TEMPLATE = "eventos/%s/edit";

    private final Grid<Evento> grid = new Grid<>(Evento.class, false);

    CollaborationAvatarGroup avatarGroup;

    private TextField titulo;
    private TextField cidade;
    private DateTimePicker dataInicio;
    private DateTimePicker fim;
    private TextField valor;
    private IntegerField vagas;
    private TextField descricao;

    private final Button cancel = new Button("Cancel");
    private final Button save = new Button("Save");

    private final CollaborationBinder<Evento> binder;

    private Evento evento;

    private final EventoSB eventosService;

    public EventosView(EventoSB eventosService) {
        this.eventosService = eventosService;
        addClassNames("eventos-view");

        // UserInfo is used by Collaboration Engine and is used to share details
        // of users to each other to able collaboration. Replace this with
        // information about the actual user that is logged, providing a user
        // identifier, and the user's real name. You can also provide the users
        // avatar by passing an url to the image as a third parameter, or by
        // configuring an `ImageProvider` to `avatarGroup`.
        UserInfo userInfo = new UserInfo(UUID.randomUUID().toString(), "Steve Lange");

        // Create UI
        SplitLayout splitLayout = new SplitLayout();

        avatarGroup = new CollaborationAvatarGroup(userInfo, null);
        avatarGroup.getStyle().set("visibility", "hidden");

        createGridLayout(splitLayout);
        createEditorLayout(splitLayout);

        add(splitLayout);

        // Configure Grid

        grid.addColumn(Evento::getTitulo).setHeader("Título").setAutoWidth(true);
        grid.addColumn(Evento::getCidade).setHeader("Cidade").setAutoWidth(true);
        grid.addColumn(evento -> formatLocalDateTime(evento.getDataInicio())).setHeader("Início").setAutoWidth(true);
        grid.addColumn(evento -> formatLocalDateTime(evento.getDataFim())).setHeader("Fim").setAutoWidth(true);
        grid.addColumn(Evento::getVlr).setHeader("Valor").setAutoWidth(true);
        grid.addColumn(Evento::getVagas).setHeader("Vagas").setAutoWidth(true);
        grid.addColumn(Evento::getDescricao).setHeader("Descrição").setAutoWidth(true);
        grid.setItems(query -> eventosService.list(
                PageRequest.of(query.getPage(), query.getPageSize(), VaadinSpringDataHelpers.toSpringDataSort(query)))
                .stream());
        grid.addThemeVariants(GridVariant.LUMO_NO_BORDER);

        // when a row is selected or deselected, populate form
        grid.asSingleSelect().addValueChangeListener(event -> {
            if (event.getValue() != null) {
                UI.getCurrent().navigate(String.format(EVENTOS_EDIT_ROUTE_TEMPLATE, event.getValue().getId()));
            } else {
                clearForm();
                UI.getCurrent().navigate(EventosView.class);
            }
        });

        // Configure Form
        this.binder = new CollaborationBinder<>(Evento.class, userInfo);

        // Bind fields. This is where you'd define e.g. validation rules

        this.binder.forField(titulo).bind("titulo");
        this.binder.forField(cidade).bind("cidade");
        this.binder.forField(dataInicio).bind("dataInicio");
        this.binder.forField(fim).bind("dataFim");
        this.binder.forField(valor).bind("vlr");
        this.binder.forField(vagas).bind("vagas");
        this.binder.forField(descricao).bind("descricao");
        //binder.bindInstanceFields(this);

        cancel.addClickListener(e -> {
            clearForm();
            refreshGrid();
        });

        save.addClickListener(e -> {
            try {
                if (this.evento == null) {
                    this.evento = new Evento();
                }
                if (vagas.getValue() != null) {
                    this.evento.setVagas(vagas.getValue().intValue());
                }
                binder.writeBean(this.evento);
                eventosService.insert(this.evento, 1L); // Ajustar para resgatar o ID do Usuario Logado
                clearForm();
                refreshGrid();
                Notification.show("Data updated");
                UI.getCurrent().navigate(EventosView.class);
            } catch (ObjectOptimisticLockingFailureException exception) {
                Notification n = Notification.show(
                        "Error updating the data. Somebody else has updated the record while you were making changes.");
                n.setPosition(Position.MIDDLE);
                n.addThemeVariants(NotificationVariant.LUMO_ERROR);
            } catch (ValidationException validationException) {
                Notification.show("Failed to update the data. Check again that all values are valid");
            }
        });
    }

    @Override
    public void beforeEnter(BeforeEnterEvent event) {
        Optional<Long> eventosId = event.getRouteParameters().get(EVENTOS_ID).map(Long::parseLong);
        if (eventosId.isPresent()) {
            Optional<Evento> eventosFromBackend = eventosService.findById(eventosId.get());
            if (eventosFromBackend.isPresent()) {
                populateForm(eventosFromBackend.get());
            } else {
                Notification.show(String.format("The requested eventos was not found, ID = %d", eventosId.get()), 3000,
                        Notification.Position.BOTTOM_START);
                // when a row is selected but the data is no longer available,
                // refresh grid
                refreshGrid();
                event.forwardTo(EventosView.class);
            }
        }
    }

    private void createEditorLayout(SplitLayout splitLayout) {
        Div editorLayoutDiv = new Div();
        editorLayoutDiv.setClassName("editor-layout");

        Div editorDiv = new Div();
        editorDiv.setClassName("editor");
        editorLayoutDiv.add(editorDiv);

        FormLayout formLayout = new FormLayout();
        titulo = new TextField("Titulo");
        cidade = new TextField("Cidade");
        dataInicio = new DateTimePicker("Inicio");
        dataInicio.setStep(Duration.ofSeconds(1));
        fim = new DateTimePicker("Fim");
        fim.setStep(Duration.ofSeconds(1));
        valor = new TextField("Valor");
        vagas = new IntegerField("Vagas");
        descricao = new TextField("Descricao");
        formLayout.add(titulo, cidade, dataInicio, fim, valor, vagas, descricao);

        editorDiv.add(avatarGroup, formLayout);
        createButtonLayout(editorLayoutDiv);

        splitLayout.addToSecondary(editorLayoutDiv);
    }

    private void createButtonLayout(Div editorLayoutDiv) {
        HorizontalLayout buttonLayout = new HorizontalLayout();
        buttonLayout.setClassName("button-layout");
        cancel.addThemeVariants(ButtonVariant.LUMO_TERTIARY);
        save.addThemeVariants(ButtonVariant.LUMO_PRIMARY);
        buttonLayout.add(save, cancel);
        editorLayoutDiv.add(buttonLayout);
    }

    private void createGridLayout(SplitLayout splitLayout) {
        Div wrapper = new Div();
        wrapper.setClassName("grid-wrapper");
        splitLayout.addToPrimary(wrapper);
        wrapper.add(grid);
    }

    private void refreshGrid() {
        grid.select(null);
        grid.getDataProvider().refreshAll();
    }

    private void clearForm() {
        populateForm(null);
    }

    private void populateForm(Evento value) {
        this.evento = value;
        String topic = null;
        if (this.evento != null && this.evento.getId() != null) {
            topic = "eventos/" + this.evento.getId();
            avatarGroup.getStyle().set("visibility", "visible");
        } else {
            avatarGroup.getStyle().set("visibility", "hidden");
        }
        binder.setTopic(topic, () -> this.evento);
        avatarGroup.setTopic(topic);

    }

    private String formatLocalDate(LocalDate date) {
        if (date == null) {
            return "";
        }
        SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy HH:mm");
        return formatter.format(date);
    }

    private String formatLocalDateTime(LocalDateTime date) {
        if (date == null) {
            return "";
        }
        SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy HH:mm");
        return formatter.format(date);
    }

    private String formatDate(Date date) {
        if (date == null) {
            return "";
        }
        SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy HH:mm");
        return formatter.format(date);
    }
}
