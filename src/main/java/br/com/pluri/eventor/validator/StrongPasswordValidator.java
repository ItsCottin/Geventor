package br.com.pluri.eventor.validator;

import com.nulabinc.zxcvbn.Strength;
import com.nulabinc.zxcvbn.Zxcvbn;
import jakarta.validation.ConstraintValidator;
import jakarta.validation.ConstraintValidatorContext;

public class StrongPasswordValidator implements ConstraintValidator<StrongPassword, String> {

    private Zxcvbn zxcvbn;

    @Override
    public void initialize(StrongPassword constraintAnnotation) {
        this.zxcvbn = new Zxcvbn();
    }

    @Override
    public boolean isValid(String object, ConstraintValidatorContext constraintContext) {
        Strength strength = zxcvbn.measure(object);

        if (strength.getScore() < 4) {
            constraintContext
                    .buildConstraintViolationWithTemplate(
                            strength.getFeedback().getWarning())
                    .addConstraintViolation();
            return false;
        }

        return true;
    }
}
