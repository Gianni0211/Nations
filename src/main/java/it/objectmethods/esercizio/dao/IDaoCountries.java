package it.objectmethods.esercizio.dao;

import java.util.List;

import it.objectmethods.esercizio.model.Country;

public interface IDaoCountries {

	public List<Country> getCountriesByContinent(String continent);
	public List<Country> getAllCountries();
}
