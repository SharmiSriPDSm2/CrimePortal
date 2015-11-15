package fr.esiag.crimeteam.visites.validator;

import fr.esiag.crimeteam.visites.model.Client;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;


public class ClientValidator implements Validator {

    public boolean supports(Class clazz) {
        //just validate the Customer instances
        return Client.class.isAssignableFrom(clazz);
    }

    public void validate(Object target, Errors errors) {

        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "lastname",
                "required.svisitepren", "Champ Prénom est requis.");

        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "firstname",
                "required.svisitenom", "Champ Nom est requis.");

        Client inscript = (Client) target;

    }
}