package it.objectmethods.esercizio.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import it.objectmethods.esercizio.dao.IDaoCities;
import it.objectmethods.esercizio.model.City;

@Controller
public class CityController {

	@Autowired
	private IDaoCities dao;

	@GetMapping("/{code}/cities")
	public String getCities(@PathVariable("code") String code, ModelMap map) {
		List<City> list = new ArrayList<>();

		list = dao.getCitiesByCountryCode(code);

		map.addAttribute("cities", list);
		return "cities";
	}

	@GetMapping("/searchcity")
	public String searchCityForm(ModelMap map) {

		return "searchcity";
	}

	@PostMapping("/searchcity")
	public String getCity(@RequestParam("name") String name, @RequestParam("country") String country, ModelMap map) {

		List<City> list = new ArrayList<City>();

		list = dao.getCityByNameAndCountry(name, country);

		map.addAttribute("cities", list);

		return "searchcity";
	}

	@GetMapping("/updatecity/{id}/{name}/{region}/{population}/{code}")
	
	public String updateForm(@PathVariable("id") long id, @PathVariable("name") String name,
			@PathVariable("region") String region, @PathVariable("population") long population,
			@PathVariable("code") String code, ModelMap map) {
		City city = new City();
		city.setName(name);
		city.setCountryCode(code);
		city.setDistrict(region);
		city.setPopulation(population);
		city.setId(id);

		map.addAttribute("city", city);
		return "cityform";

	}

	@GetMapping("/addform")
	public String addForm(ModelMap map) {
		return "cityform";
	}
	


	@PostMapping("/updatecity")
	
	public String updateCity(@RequestParam("name") String name, @RequestParam("country") String code,
			@RequestParam("population") long population, @RequestParam("region") String region,
			@RequestParam("id") String id, ModelMap map) {
		int res = 0;
		City city = new City();
		city.setName(name);
		city.setCountryCode(code);
		city.setDistrict(region);
		city.setPopulation(population);

		if (id != "") {
			city.setId(Long.parseLong(id));
			res = dao.updateCityById(Long.parseLong(id), city);
		} else {
			res = dao.addCity(city);
		}

		map.addAttribute("res", "Colonne modificate" + res);

		return "index";
	}

}
