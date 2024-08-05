package br.com.pluri.eventor.utils;

import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.type.TypeFactory;
import com.fasterxml.jackson.databind.util.Converter;
import com.vaadin.flow.data.binder.ErrorMessageProvider;
import com.vaadin.flow.data.binder.Result;
import com.vaadin.flow.data.binder.ValueContext;
import com.vaadin.flow.data.converter.AbstractStringToNumberConverter;

public class DoubleToIntegerConverter extends AbstractStringToNumberConverter<Integer> {

    protected DoubleToIntegerConverter(Integer emptyValue, ErrorMessageProvider errorMessageProvider) {
        super(emptyValue, errorMessageProvider);
    }

    public Result<Integer> convertToModel(Double value, ValueContext context) {
        if (value == null) {
            return Result.ok(null);
        }
        return Result.ok(value.intValue());
    }

    @Override
    public Result<Integer> convertToModel(String s, ValueContext valueContext) {
        return null;
    }

    public Class<Integer> getPresentationType() {
        return Integer.class;
    }

    public Class<Double> getModelType() {
        return Double.class;
    }

    public Integer convert(Double aDouble) {
        return 0;
    }

    public JavaType getInputType(TypeFactory typeFactory) {
        return null;
    }

    public JavaType getOutputType(TypeFactory typeFactory) {
        return null;
    }
}
