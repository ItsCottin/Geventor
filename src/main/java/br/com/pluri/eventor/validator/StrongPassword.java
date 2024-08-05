package br.com.pluri.eventor.validator;

import jakarta.validation.Constraint;
import jakarta.validation.Payload;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Retention(RetentionPolicy.RUNTIME)
@Target({ ElementType.METHOD, ElementType.FIELD, ElementType.ANNOTATION_TYPE, ElementType.CONSTRUCTOR, ElementType.PARAMETER, ElementType.TYPE_USE })
@Constraint(validatedBy = { StrongPasswordValidator.class })
public @interface StrongPassword {

    // min required password strength on the scale from 1 to 5
    int minStrength() default 8;

    String message() default "Sua senha irá lutar, digite uma senha Forte =)";
    Class<?>[] groups() default { };
    Class<? extends Payload>[] payload() default { };
}
