package it.objectmethods.esercizio.dao;

import java.util.List;

import it.objectmethods.esercizio.model.City;

public interface IDaoCities {

	public List<City> getCitiesByCountryCode(String code);
	public List<City> getCityByNameAndCountry(String name, String code);
	public int updateCityById(long id, City city);
	public int addCity(City city); 
}
