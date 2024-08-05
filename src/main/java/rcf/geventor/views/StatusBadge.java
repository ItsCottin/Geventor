package rcf.geventor.views;
import com.vaadin.flow.component.html.Span;
import com.vaadin.flow.component.shared.Tooltip;
import com.vaadin.flow.theme.lumo.LumoIcon;
import com.vaadin.flow.theme.lumo.LumoUtility;

public class StatusBadge extends Span {

    public StatusBadge() {
        super(LumoIcon.ERROR.create());
        getElement().getThemeList().add("badge error");
        addClassNames(LumoUtility.AlignSelf.START, LumoUtility.Margin.Top.AUTO, LumoUtility.Display.FLEX);

        Tooltip tooltip = Tooltip.forComponent(this).withText("Banco de dados offline");
    }
}

