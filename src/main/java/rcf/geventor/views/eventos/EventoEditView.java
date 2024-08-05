package rcf.geventor.views.eventos;

import com.vaadin.componentfactory.addons.inputmask.InputMask;
import com.vaadin.flow.component.Composite;
import com.vaadin.flow.component.button.Button;
import com.vaadin.flow.component.button.ButtonVariant;
import com.vaadin.flow.component.checkbox.Checkbox;
import com.vaadin.flow.component.combobox.ComboBox;
import com.vaadin.flow.component.datetimepicker.DateTimePicker;
import com.vaadin.flow.component.formlayout.FormLayout;
import com.vaadin.flow.component.formlayout.FormLayout.ResponsiveStep;
import com.vaadin.flow.component.html.Div;
import com.vaadin.flow.component.html.Span;
import com.vaadin.flow.component.icon.VaadinIcon;
import com.vaadin.flow.component.orderedlayout.HorizontalLayout;
import com.vaadin.flow.component.orderedlayout.VerticalLayout;
import com.vaadin.flow.component.orderedlayout.FlexComponent.Alignment;
import com.vaadin.flow.component.orderedlayout.FlexComponent.JustifyContentMode;
import com.vaadin.flow.component.tabs.Tab;
import com.vaadin.flow.component.tabs.Tabs;
import com.vaadin.flow.component.tabs.TabsVariant;
import com.vaadin.flow.component.textfield.IntegerField;
import com.vaadin.flow.component.textfield.NumberField;
import com.vaadin.flow.component.textfield.TextField;
import com.vaadin.flow.data.binder.BeanValidationBinder;
import com.vaadin.flow.router.PageTitle;
import com.vaadin.flow.router.Route;
import com.vaadin.flow.theme.lumo.LumoUtility;
import jakarta.annotation.security.PermitAll;
import rcf.geventor.data.Evento;
import rcf.geventor.views.MainLayout;

@PageTitle("Edição de Evento")
@Route(value = "evento-edit/:eventoID?/:action?(edit)", layout = MainLayout.class)
@PermitAll
public class EventoEditView extends Composite<VerticalLayout> {

    private final String EVENTOS_ID = "eventoID";
    private final String EVENTOS_EDIT_ROUTE_TEMPLATE = "evento/%s/edit";

    private final HorizontalLayout layout_horizontal_1 = new HorizontalLayout();
    private final HorizontalLayout layout_horizontal_2 = new HorizontalLayout();
    private final HorizontalLayout layout_horizontal_3 = new HorizontalLayout();
    private final HorizontalLayout layout_horizontal_4 = new HorizontalLayout();

    private final VerticalLayout layout_vertical_1 = new VerticalLayout();
    private final VerticalLayout layout_vertical_2 = new VerticalLayout();
    private final VerticalLayout layout_vertical_3 = new VerticalLayout();

    private final FormLayout layout_form_basico = new FormLayout();
    private final FormLayout layout_form_local = new FormLayout();
    private final FormLayout layout_form_contato = new FormLayout();
    private final FormLayout layout_form_adicional = new FormLayout();
    private final FormLayout layout_form_final = new FormLayout();

    private final BeanValidationBinder<Evento> binder;

    private final TextField txt_tituloEvento = new TextField("Titulo do Evento");
    private final DateTimePicker dt_dataInicio = new DateTimePicker("Data de Inicio");
    private final DateTimePicker dt_dataFim = new DateTimePicker("Data de Fim");
    private final Checkbox check_local_user = new Checkbox("Não");
    private final Checkbox check_telefone_user = new Checkbox("Meu telefone?");
    private final Checkbox check_celular_user = new Checkbox("Meu celular?");
    private final Checkbox check_email_user = new Checkbox("Meu E-mail?");
    private final TextField txt_cep = new TextField("CEP");
    private final ComboBox<String> comb_estado = new ComboBox<>("Estado");
    private final ComboBox<String> comb_cidade = new ComboBox<>("Cidade");
    private final TextField txt_bairro = new TextField("Bairro");
    private final TextField txt_endereco = new TextField("Endereço");
    private final TextField txt_numero_endereco = new TextField("Numero");
    private final TextField txt_telefone = new TextField("Telefone");
    private final TextField txt_celular = new TextField("Celular");
    private final TextField txt_email = new TextField("E-mail");
    private final NumberField txt_valor = new NumberField("Valor");
    private final IntegerField int_vagas = new IntegerField("Vagas");
    private final Checkbox check_gratuito = new Checkbox("Evento Gratuíto?");
    private final TextField txt_end_site = new TextField("URL do Evento");
    private final Checkbox check_site = new Checkbox("Site próprio?");

    /*private final Button btn_save;
    private final Button btn_cancel;*/

    private final Tab tab_basico = new Tab(VaadinIcon.HOURGLASS_START.create(), new Span("Basico"));
    private final Tab tab_local = new Tab(VaadinIcon.LOCATION_ARROW.create(), new Span("Localização"));
    private final Tab tab_contato = new Tab(VaadinIcon.USER_CARD.create(), new Span("Contato"));
    private final Tab tab_adicional = new Tab(VaadinIcon.PLUS.create(), new Span("Adicional"));
    private final Tab tab_final = new Tab(VaadinIcon.CHECK.create(), new Span("Confirmar"));

    private final Tabs steps = new Tabs(tab_basico, tab_local, tab_contato, tab_adicional, tab_final);

    public EventoEditView() {
        getContent().setWidth("100%");
        getContent().setHeight("100%");
        getContent().setJustifyContentMode(JustifyContentMode.CENTER);
        getContent().setDefaultHorizontalComponentAlignment(Alignment.CENTER); // Centraliza horizontalmente

        steps.setOrientation(Tabs.Orientation.HORIZONTAL);
        steps.addThemeVariants(TabsVariant.LUMO_MINIMAL);
        steps.setSelectedTab(tab_basico);

        VerticalLayout layout_steps = new VerticalLayout(steps);
        layout_steps.setWidthFull(); // Define a largura total para os Steps
        layout_steps.setHeight("fit-content"); // Ajusta a altura conforme o conteúdo dos Steps
        layout_steps.setJustifyContentMode(JustifyContentMode.CENTER); // Centraliza os Steps horizontalmente

        /*layout_form_vert.setWidth("100%");
        layout_form_vert.setMaxWidth("800px");
        layout_form_vert.setHeight("min-content");
        layout_form_vert.setAlignItems(Alignment.CENTER); // Alinha itens centralmente
        layout_form_vert.setJustifyContentMode(JustifyContentMode.CENTER); // Centraliza verticalmente

        layout_horizontal.setWidthFull();
        layout_horizontal.setHeightFull();
        layout_horizontal.setAlignItems(Alignment.CENTER); // Centraliza itens horizontalmente
        layout_horizontal.addClassName(LumoUtility.Gap.MEDIUM);

        layout_horizontal.add(layout_steps);

        layout_horizontal.setFlexGrow(0, layout_steps); // Impede que os Steps cresçam
        layout_horizontal.setFlexGrow(1, layout_form_vert); // Permite que o formulário ocupe espaço extra

        steps.addSelectedChangeListener(event -> {
            layout_form_vert.removeAll();
            Tab selectedTab = event.getSelectedTab();
            if (selectedTab.equals(tab_basico)) {
                layout_form_vert.add(form_1_Evento);
            } else if (selectedTab.equals(tab_local)) {
                layout_form_vert.add(form_2_Evento);
            } else if (selectedTab.equals(tab_contato)) {
                layout_form_vert.add(form_ultimo_Evento);
            } else if (selectedTab.equals(tab_adicional)) {
                // Adicionar conteúdo adicional se necessário
            } else if (selectedTab.equals(tab_final)) {
                // Adicionar conteúdo final se necessário
            }
        });

        this.btn_save = new Button("Salvar");
        this.btn_save.addThemeVariants(ButtonVariant.LUMO_PRIMARY);
        this.btn_cancel = new Button("Cancelar");
        this.btn_cancel.addThemeVariants(ButtonVariant.LUMO_TERTIARY);

        layout_form_vert.addClassName(LumoUtility.Gap.MEDIUM);
        layout_form_vert.add(btn_save, btn_cancel);
        layout_form_vert.setAlignItems(Alignment.CENTER); // Centraliza itens dentro do layout vertical
        layout_form_vert.setJustifyContentMode(JustifyContentMode.CENTER); // Centraliza itens verticalmente

        // Formulário de Dados Basicos do Evento
        layout_form_basico.setWidth("100%");
        layout_form_basico.setMaxWidth("700px");
        layout_form_basico.add(
                txt_tituloEvento,
                dt_dataInicio, dt_dataFim
        );
        layout_form_basico.setResponsiveSteps(
                new ResponsiveStep("0", 1),
                new ResponsiveStep("400px", 2)
        );
        layout_form_basico.setColspan(txt_tituloEvento, 2);

        // Formulário de Localização do Evento
        layout_form_local.setWidth("100%");
        layout_form_local.setMaxWidth("700px");
        layout_form_local.add(
                txt_cep, comb_estado,
                comb_cidade, txt_bairro, txt_endereco,
                txt_numero_endereco
        );
        layout_form_local.setResponsiveSteps(
                new ResponsiveStep("0", 1),
                new ResponsiveStep("400px", 2),
                new ResponsiveStep("600px", 3)
        );
        layout_form_local.setColspan(txt_cep, 2);

        txt_cep.setPrefixComponent(check_local_user);
        txt_cep.setHelperText("Usar meu local?");
        check_local_user.addValueChangeListener (event -> {
            if (event.getValue())
            { check_local_user.setLabel("Sim"); }
            else
            { check_local_user.setLabel("Não"); }
        });


        form_ultimo_Evento.add(
                txt_telefone, txt_celular,
                txt_email, int_vagas,
                txt_valor, txt_end_site
        );
        form_ultimo_Evento.setMaxWidth("900px");
        form_ultimo_Evento.setResponsiveSteps(
                new ResponsiveStep("0", 1),
                new ResponsiveStep("630px", 2)
        );
        new InputMask("(00) 0 0000-0000").extend(txt_celular);
        new InputMask("(00) 0000-0000").extend(txt_telefone);
        int_vagas.setStepButtonsVisible(true);
        int_vagas.setMin(1);
        int_vagas.setValue(1);
        int_vagas.setHelperText("Minimo 1 vaga");
        txt_telefone.setPrefixComponent(check_telefone_user);
        txt_celular.setPrefixComponent(check_celular_user);
        txt_email.setPrefixComponent(check_email_user);
        txt_end_site.setPrefixComponent(check_site);
        txt_valor.setPrefixComponent(check_gratuito);
        txt_valor.setSuffixComponent(new Div("R$"));

        layout_horizontal.add(layout_form_vert);
        layout_form_vert.setSizeFull();

        getContent().add(layout_horizontal);*/

        this.binder = new BeanValidationBinder<>(Evento.class);
    }

    /*public void setBinderCampos() {
        this.binder.forField(txt_tituloEvento).bind("titulo");
        this.binder.forField(dt_dataInicio).bind("dataInicio");
        this.binder.forField(dt_dataFim).bind("dataFim");
        this.binder.forField(txt_cep).bind("cep");
        this.binder.forField(comb_estado).bind("estado");
        this.binder.forField(comb_cidade).bind("cidade");
        this.binder.forField(txt_valor).bind("vlr");
        this.binder.forField(int_vagas).bind("vagas");
    }*/
}
