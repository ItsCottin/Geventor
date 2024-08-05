package rcf.geventor.views.login;

import com.vaadin.flow.component.UI;
import com.vaadin.flow.component.button.Button;
import com.vaadin.flow.component.button.ButtonVariant;
import com.vaadin.flow.component.html.H1;
import com.vaadin.flow.component.html.Span;
import com.vaadin.flow.component.login.LoginForm;
import com.vaadin.flow.component.orderedlayout.VerticalLayout;
import com.vaadin.flow.component.shared.Tooltip;
import com.vaadin.flow.router.BeforeEnterEvent;
import com.vaadin.flow.router.BeforeEnterObserver;
import com.vaadin.flow.router.PageTitle;
import com.vaadin.flow.router.Route;
import com.vaadin.flow.server.auth.AnonymousAllowed;
import com.vaadin.flow.theme.lumo.LumoIcon;
import com.vaadin.flow.theme.lumo.LumoUtility;
import rcf.geventor.views.StatusBadge;
import rcf.geventor.views.cadastro.UsuarioView;


@AnonymousAllowed
@PageTitle("Login")
@Route(value = "login")
public class LoginView extends VerticalLayout implements BeforeEnterObserver {

    private final LoginForm login = new LoginForm();
    private final Button buttonRegistrar;

    public LoginView(){
        VerticalLayout loginLayout = new VerticalLayout();
        addClassName("login-view");
        setSizeFull();
        setAlignItems(Alignment.CENTER);
        setJustifyContentMode(JustifyContentMode.CENTER);

        loginLayout.addClassName("login-view");
        loginLayout.setSizeFull();
        loginLayout.setAlignItems(Alignment.CENTER);
        loginLayout.setJustifyContentMode(JustifyContentMode.CENTER);

        login.setAction("login");
        login.addForgotPasswordListener(event -> {
            UI.getCurrent().navigate(UsuarioView.class);
        });
        buttonRegistrar = new Button("Cadastre-se aqui");
        buttonRegistrar.addThemeVariants(ButtonVariant.LUMO_SMALL);

        loginLayout.add(new H1("Geventor"));
        loginLayout.add(login);
        loginLayout.add(buttonRegistrar);
        setAddClickListenerRegister();

        add(loginLayout);
        add(new StatusBadge());

    }

    public void setAddClickListenerRegister() {
        buttonRegistrar.addClickListener(e -> {
            UI.getCurrent().navigate(UsuarioView.class);
        });
    }

    @Override
    public void beforeEnter(BeforeEnterEvent beforeEnterEvent) {
        // Informar o usuário sobre um erro de autenticação
        if(beforeEnterEvent.getLocation()
                .getQueryParameters()
                .getParameters()
                .containsKey("error")) {
            login.setError(true);
        }
    }
}
