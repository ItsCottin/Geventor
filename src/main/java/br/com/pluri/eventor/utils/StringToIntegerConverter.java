package br.com.pluri.eventor.utils;

import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.type.TypeFactory;
import com.fasterxml.jackson.databind.util.Converter;
import com.vaadin.flow.data.binder.Result;
import com.vaadin.flow.data.binder.ValueContext;

public class StringToIntegerConverter implements Converter<String, Integer> {

    public Result<Integer> convertToModel(String value, ValueContext context) {
        if (value == null || value.isEmpty()) {
            return Result.ok(null);
        }
        try {
            return Result.ok(Integer.parseInt(value));
        } catch (NumberFormatException e) {
            return Result.error("Please enter a valid number");
        }
    }

    public String convertToPresentation(Integer value, ValueContext context) {
        if (value == null) {
            return "";
        }
        return String.valueOf(value);
    }

    public Class<Integer> getPresentationType() {
        return Integer.class;
    }

    public Class<String> getModelType() {
        return String.class;
    }

    @Override
    public Integer convert(String s) {
        return 0;
    }

    @Override
    public JavaType getInputType(TypeFactory typeFactory) {
        return null;
    }

    @Override
    public JavaType getOutputType(TypeFactory typeFactory) {
        return null;
    }
}
