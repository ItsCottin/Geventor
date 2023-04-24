package br.com.pluri.eventor.utils;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.TimeZone;

import javax.faces.component.UIComponent;
import javax.faces.context.FacesContext;
import javax.faces.convert.Converter;
import javax.faces.convert.ConverterException;
import javax.faces.convert.FacesConverter;

@FacesConverter(forClass = java.util.Date.class)
public class ConversorDateView implements Converter {

	private SimpleDateFormat format = new SimpleDateFormat("dd/MM/yyyy");
    private TimeZone timeZone = TimeZone.getTimeZone("UTC");
 
    public Object getAsObject(FacesContext context, UIComponent component, String value) {
        format.setTimeZone(timeZone);
        try {
            return format.parse(value);
        } catch (ParseException e) {
            throw new ConverterException("N�o foi poss�vel converter a data.", e);
        }
    }
 
    public String getAsString(FacesContext context, UIComponent component, Object value) {
        format.setTimeZone(timeZone);
        return format.format((Date) value);
    }
}

