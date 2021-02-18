package it.objectmethods.esercizio.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import it.objectmethods.esercizio.dao.IDaoCountries;
import it.objectmethods.esercizio.model.Country;

@Controller
public class CountryController {

	@Autowired
	private IDaoCountries dao;

	@GetMapping("/{continent}/countries")
	public String getCountries(@PathVariable("continent") String continent, ModelMap map, HttpSession session) {
		List<Country> list = new ArrayList<>();

		list = dao.getCountriesByContinent(continent);
		map.addAttribute("countries", list);
		session.setAttribute("continent", continent);

		return "countries";
	}
}
