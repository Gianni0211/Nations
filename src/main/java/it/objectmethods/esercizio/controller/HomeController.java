package it.objectmethods.esercizio.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import it.objectmethods.esercizio.dao.IDaoContinents;
import it.objectmethods.esercizio.dao.IDaoCountries;
import it.objectmethods.esercizio.model.Country;

@Controller
public class HomeController {

	@Autowired
	private IDaoCountries countryDao;

	@Autowired
	private IDaoContinents contDao;

	@RequestMapping("/index")
	public String index(ModelMap map, HttpSession session) {
		List<Country> countries = new ArrayList<>();

		countries = countryDao.getAllCountries();

		session.setAttribute("countries", countries);

		List<String> conts = contDao.getAllContinents();
		session.setAttribute("continents", conts);
		//map.addAttribute("continents", conts);

		return "index";
	}

}
