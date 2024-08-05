package rcf.geventor.views.cadastro;

import br.com.pluri.eventor.validator.StrongPassword;
import com.vaadin.flow.component.Text;
import com.vaadin.flow.data.converter.LocalDateToDateConverter;
import com.vaadin.flow.theme.lumo.Lumo;
import com.vaadin.flow.theme.lumo.LumoIcon;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import rcf.geventor.services.AtividadeSB;
import rcf.geventor.services.UsuarioSB;
import rcf.geventor.services.exception.CampoObrigatorioException;
import rcf.geventor.services.exception.LoginJaCadastradoException;
import rcf.geventor.services.exception.SenhaInvalidaException;
import com.vaadin.flow.component.Composite;
import com.vaadin.flow.component.UI;
import com.vaadin.flow.component.button.Button;
import com.vaadin.flow.component.button.ButtonVariant;
import com.vaadin.flow.component.datepicker.DatePicker;
import com.vaadin.flow.component.formlayout.FormLayout;
import com.vaadin.flow.component.html.H3;
import com.vaadin.flow.component.notification.Notification;
import com.vaadin.flow.component.notification.NotificationVariant;
import com.vaadin.flow.component.orderedlayout.FlexComponent.Alignment;
import com.vaadin.flow.component.orderedlayout.FlexComponent.JustifyContentMode;
import com.vaadin.flow.component.orderedlayout.HorizontalLayout;
import com.vaadin.flow.component.orderedlayout.VerticalLayout;
import com.vaadin.flow.component.textfield.EmailField;
import com.vaadin.flow.component.textfield.PasswordField;
import com.vaadin.flow.component.textfield.TextField;
import com.vaadin.flow.data.binder.BeanValidationBinder;
import com.vaadin.flow.data.binder.ValidationException;
import com.vaadin.flow.router.BeforeEnterEvent;
import com.vaadin.flow.router.BeforeEnterObserver;
import com.vaadin.flow.router.PageTitle;
import com.vaadin.flow.router.Route;
import com.vaadin.flow.server.auth.AnonymousAllowed;
import com.vaadin.flow.theme.lumo.LumoUtility.Gap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.OptimisticLockingFailureException;
import org.springframework.orm.ObjectOptimisticLockingFailureException;
import rcf.geventor.data.Atividade;
import rcf.geventor.data.Usuario;
import rcf.geventor.views.StatusBadge;
import rcf.geventor.views.atividades.AtividadesView;
import rcf.geventor.views.login.LoginView;

@PageTitle("Cadastre-se")
@Route(value = "register")
@AnonymousAllowed
public class UsuarioView extends VerticalLayout implements BeforeEnterObserver {

    private final BCryptPasswordEncoder passwordEncoder;

    //private final VerticalLayout layoutCadastroUsuario;
    private final H3 titulo;
    private final FormLayout formLayoutCadastroUsuario;
    private final TextField txtNomeCompleto;
    private final TextField txtLogin;
    private final DatePicker dtpDataNascimento;
    private final EmailField txtEmail;

    @StrongPassword
    private final PasswordField passSenha;

    @StrongPassword
    private final PasswordField passConfirmaSenha;
    private final HorizontalLayout layoutRow;
    private final Button buttonCadastrar;
    private final Button buttonVoltar;
    private final BeanValidationBinder<Usuario> binder;
    private Usuario usuario;

    @Autowired
    private UsuarioSB usuarioSB;

    @Autowired
    public UsuarioView(UsuarioSB usuarioSB, BCryptPasswordEncoder passwordEncoder) {
        this.usuarioSB = usuarioSB;
        this.passwordEncoder = passwordEncoder;

        setSizeFull();
        setAlignItems(Alignment.CENTER);
        setJustifyContentMode(JustifyContentMode.CENTER);

        VerticalLayout layoutCadastroUsuario = new VerticalLayout();
        layoutCadastroUsuario.setWidth("100%");
        layoutCadastroUsuario.setMaxWidth("800px");
        layoutCadastroUsuario.setHeight("min-content");

        layoutCadastroUsuario.setSizeFull();
        layoutCadastroUsuario.setAlignItems(Alignment.CENTER);
        layoutCadastroUsuario.setJustifyContentMode(JustifyContentMode.CENTER);

        this.titulo = new H3("Cadastre seu usuário");
        this.titulo.setWidth("100%");

        this.formLayoutCadastroUsuario = new FormLayout();
        this.formLayoutCadastroUsuario.setWidth("100%");

        this.binder = new BeanValidationBinder<>(Usuario.class);
        this.txtNomeCompleto = new TextField("Nome completo");
        this.txtLogin = new TextField("Nome de Login");
        this.dtpDataNascimento = new DatePicker("Data de nascimento");
        this.txtEmail = new EmailField("E-mail");
        this.passSenha = new PasswordField("Senha");
        this.passConfirmaSenha = new PasswordField("Confirmar Senha");

        // Bind individual fields
        //this.binder.forField(txtNomeCompleto).bind("nome");
        //this.binder.forField(txtLogin).bind("login");
        //this.binder.forField(dtpDataNascimento).withConverter(new LocalDateToDateConverter()).bind("dataNasc");
        //this.binder.forField(txtEmail).bind("email");
        //this.binder.forField(passSenha).bind("senha");
        //this.binder.forField(passConfirmaSenha).bind("confirmSenha");

        binder.forField(txtNomeCompleto)
                .asRequired("'Nome completo' é obrigatório")
                .bind(Usuario::getNome, Usuario::setNome);
        binder.forField(txtLogin)
                .asRequired("'Nome de Usuário' é obrigatório")
                .bind(Usuario::getLogin, Usuario::setLogin);
        binder.forField(txtEmail)
                .asRequired("'E-mail' é obrigatório")
                .bind(Usuario::getEmail, Usuario::setEmail);
        binder.forField(dtpDataNascimento).withConverter(new LocalDateToDateConverter())
                .asRequired("'Data de Nascimento' é obrigatório")
                .bind(Usuario::getDataNasc, Usuario::setDataNasc);
        binder.forField(passSenha)
                .asRequired("'Senha' é obrigatória")
                .bind(Usuario::getSenha, Usuario::setSenha);
        binder.forField(passConfirmaSenha)
                .asRequired("'Confirimar Senha' é obrigatória")
                .bind(Usuario::getConfirmSenha, Usuario::setConfirmSenha);

        this.layoutRow = new HorizontalLayout();
        this.layoutRow.setWidth("100%");
        this.layoutRow.addClassName("gap-m");

        this.buttonCadastrar = new Button("Cadastrar");
        this.buttonCadastrar.addThemeVariants(ButtonVariant.LUMO_PRIMARY);
        this.buttonVoltar = new Button("Voltar");
        this.formLayoutCadastroUsuario.add(txtNomeCompleto, txtLogin, dtpDataNascimento, txtEmail, passSenha, passConfirmaSenha);
        this.layoutRow.add(buttonCadastrar, buttonVoltar);
        layoutCadastroUsuario.add(titulo, formLayoutCadastroUsuario, layoutRow);
        setAddClickListenerVoltar();
        setAddClickListenerCadastrar();
        add(layoutCadastroUsuario);
        showNotificationErrorDB(Notification.Position.BOTTOM_START);
    }

    @Override
    public void beforeEnter(BeforeEnterEvent event) {
        // Lógica para executar antes de entrar na view
    }

    public void setAddClickListenerCadastrar() {
        buttonCadastrar.addClickListener(e -> {
            try {
                if (this.usuario == null) {
                    this.usuario = new Usuario();
                }
                binder.writeBean(this.usuario);
                this.usuario.setSenha(passwordEncoder.encode(passSenha.getValue()));
                usuarioSB.insert(this.usuario);
                Notification.show("Data updated");
                UI.getCurrent().navigate(LoginView.class);
            } catch (OptimisticLockingFailureException | LoginJaCadastradoException | SenhaInvalidaException | CampoObrigatorioException optimisticLockingFailureException) {
                Notification n = Notification.show(
                        "Error updating the data. Somebody else has updated the record while you were making changes.");
                n.setPosition(Notification.Position.MIDDLE);
                n.addThemeVariants(NotificationVariant.LUMO_ERROR);
            } catch (ValidationException validationException) {
                Notification.show("Verifique os campos informados");
            }
        });
    }

    public void setAddClickListenerVoltar() {
        buttonVoltar.addClickListener(e -> {
            UI.getCurrent().navigate(LoginView.class);
        });
    }

    private void showNotificationErrorDB(Notification.Position position) {
        Button tentar = new Button("Tentar de novo");
        tentar.addThemeVariants(ButtonVariant.LUMO_TERTIARY_INLINE);
        var layout = new HorizontalLayout(new Text("Erro: Banco de Dados offline"), tentar);
        Notification errorDB = new Notification();
        errorDB.addThemeVariants(NotificationVariant.LUMO_ERROR);
        errorDB.setDuration(0);
        errorDB.setPosition(position);
        errorDB.add(layout);
        errorDB.open();
    }
}
