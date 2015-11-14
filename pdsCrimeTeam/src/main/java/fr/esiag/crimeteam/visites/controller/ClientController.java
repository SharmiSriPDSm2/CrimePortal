package fr.esiag.crimeteam.visites.controller;

import fr.esiag.crimeteam.visites.model.Client;
import fr.esiag.crimeteam.visites.validator.ClientValidator;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.support.SessionStatus;

@Controller
@RequestMapping("/client")
public class ClientController {
// A l'entr�e, on d�clare le variable clientValidator 
    ClientValidator clientValidator;

    @Autowired
    public ClientController(ClientValidator clientValidator) {
        this.clientValidator = clientValidator;
    }
//Le mod�le attribut est cr��
    @RequestMapping(method = RequestMethod.POST)
    public String processSubmit(
            @ModelAttribute("client") Client client,
            BindingResult result, SessionStatus status) {

        clientValidator.validate(client, result);

        if (result.hasErrors()) {
            //if validator failed
            return "ClientForm";
        } else {
            status.setComplete();
            //form success
            return "ClientSuccess";
        }
    }
  
    @RequestMapping(method = RequestMethod.GET)
    public String initForm(ModelMap model) {

        Client client = new Client();

        // Identifiant

        // Prénom
        client.setFirstname("Prénom");

        // Nom
        client.setLastname("Nom");

        //command object
        model.addAttribute("client", client);

        return "ClientForm";
    }

}