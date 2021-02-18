package it.objectmethods.esercizio.nazioni;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan({"it.objectmethods.esercizio.controller","it.objectmethods.esercizio.dao"})

public class NazioniApplication {

	public static void main(String[] args) {
		SpringApplication.run(NazioniApplication.class, args);
	}

}
