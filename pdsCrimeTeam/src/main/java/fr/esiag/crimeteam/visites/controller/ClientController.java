package fr.esiag.crimeteam.visites.controller;

import java.util.List;

import fr.esiag.crimeteam.visites.model.Client;
import fr.esiag.crimeteam.visites.model.Clients;
import fr.esiag.crimeteam.visites.model.HibernateUtil;
import fr.esiag.crimeteam.visites.validator.ClientValidator;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.support.SessionStatus;
//test bohbot
//ceci est un tzqt JLI

// test BNG
// this is test Marouane
//c'est le test de Eve pck ca marche !! ou pas
//toto
@Controller
@RequestMapping("/client")
public class ClientController {
// A l'entr�e, on d�clare le variable clientValidator 
    ClientValidator clientValidator;
// test RDurand
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
            Clients clients=new Clients();
            clients.addClient(client);
            List<Client> liste=clients.listClients();
            for(int i=0;i<liste.size();i++){
            System.out.print(liste.get(i).getFirstname()+ " "+liste.get(i).getLastname());
            }
            
            return "ClientSuccess";
        }
    }
  //Il s'agit d'un test
    @RequestMapping(method = RequestMethod.GET)
    public String initForm(ModelMap model) {

        Client client = new Client();

        // Identifiant

        // Prénom
        client.setFirstname("");

        // Nom
        client.setLastname("");

        //command object
        model.addAttribute("client", client);

        return "ClientForm";
    }

}
