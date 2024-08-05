package rcf.geventor.views.atividades;

import rcf.geventor.services.AtividadeSB;
import rcf.geventor.data.Atividade;
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
import com.vaadin.flow.data.binder.BeanValidationBinder;
import com.vaadin.flow.data.binder.ValidationException;
import com.vaadin.flow.router.BeforeEnterEvent;
import com.vaadin.flow.router.BeforeEnterObserver;
import com.vaadin.flow.router.PageTitle;
import com.vaadin.flow.router.Route;
import com.vaadin.flow.spring.data.VaadinSpringDataHelpers;
import jakarta.annotation.security.PermitAll;
import java.time.Duration;
import java.util.Optional;
import org.springframework.data.domain.PageRequest;
import org.springframework.orm.ObjectOptimisticLockingFailureException;
import rcf.geventor.views.MainLayout;

@PageTitle("Atividades")
@Route(value = "atividade/:atividadesID?/:action?(edit)", layout = MainLayout.class)
@PermitAll
public class AtividadesView extends Div implements BeforeEnterObserver {

    private final String ATIVIDADES_ID = "atividadesID";
    private final String ATIVIDADES_EDIT_ROUTE_TEMPLATE = "atividade/%s/edit";

    private final Grid<Atividade> grid = new Grid<>(Atividade.class, false);

    private TextField nome;
    private DateTimePicker inicio;
    private DateTimePicker fim;
    private TextField preco;
    private TextField vagas;
    private TextField descricao;

    private final Button cancel = new Button("Cancelar");
    private final Button save = new Button("Salvar");

    private final BeanValidationBinder<Atividade> binder;

    private Atividade atividade;

    private final AtividadeSB atividadesService;

    public AtividadesView(AtividadeSB atividadesService) {
        this.atividadesService = atividadesService;
        addClassNames("atividades-view");

        // Create UI
        SplitLayout splitLayout = new SplitLayout();

        createGridLayout(splitLayout);
        createEditorLayout(splitLayout);

        add(splitLayout);

        // Configure Grid
        grid.addColumn("nome").setAutoWidth(true);
        grid.addColumn("inicio").setAutoWidth(true);
        grid.addColumn("fim").setAutoWidth(true);
        grid.addColumn("preco").setAutoWidth(true);
        grid.addColumn("vagas").setAutoWidth(true);
        grid.addColumn("descricao").setAutoWidth(true);
        grid.setItems(query -> atividadesService.list(
                PageRequest.of(query.getPage(), query.getPageSize(), VaadinSpringDataHelpers.toSpringDataSort(query)))
                .stream());
        grid.addThemeVariants(GridVariant.LUMO_NO_BORDER);

        // when a row is selected or deselected, populate form
        grid.asSingleSelect().addValueChangeListener(event -> {
            if (event.getValue() != null) {
                UI.getCurrent().navigate(String.format(ATIVIDADES_EDIT_ROUTE_TEMPLATE, event.getValue().getId()));
            } else {
                clearForm();
                UI.getCurrent().navigate(AtividadesView.class);
            }
        });

        // Configure Form
        binder = new BeanValidationBinder<>(Atividade.class);

        // Bind fields. This is where you'd define e.g. validation rules

        binder.bindInstanceFields(this);

        cancel.addClickListener(e -> {
            clearForm();
            refreshGrid();
        });

        save.addClickListener(e -> {
            try {
                if (this.atividade == null) {
                    this.atividade = new Atividade();
                }
                binder.writeBean(this.atividade);
                atividadesService.editAtiv(this.atividade);
                clearForm();
                refreshGrid();
                Notification.show("Data updated");
                UI.getCurrent().navigate(AtividadesView.class);
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
        Optional<Long> atividadesId = event.getRouteParameters().get(ATIVIDADES_ID).map(Long::parseLong);
        if (atividadesId.isPresent()) {
            Optional<Atividade> atividadesFromBackend = atividadesService.findById(atividadesId.get());
            if (atividadesFromBackend.isPresent()) {
                populateForm(atividadesFromBackend.get());
            } else {
                Notification.show(String.format("The requested atividades was not found, ID = %s", atividadesId.get()),
                        3000, Notification.Position.BOTTOM_START);
                // when a row is selected but the data is no longer available,
                // refresh grid
                refreshGrid();
                event.forwardTo(AtividadesView.class);
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
        nome = new TextField("Nome");
        inicio = new DateTimePicker("Inicio");
        inicio.setStep(Duration.ofSeconds(1));
        fim = new DateTimePicker("Fim");
        fim.setStep(Duration.ofSeconds(1));
        preco = new TextField("Preco");
        vagas = new TextField("Vagas");
        descricao = new TextField("Descricao");
        formLayout.add(nome, inicio, fim, preco, vagas, descricao);

        editorDiv.add(formLayout);
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

    private void populateForm(Atividade value) {
        this.atividade = value;
        binder.readBean(this.atividade);

    }
}
