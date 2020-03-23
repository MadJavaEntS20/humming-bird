package edu.matc.api;

import com.fasterxml.jackson.annotation.JsonProperty;

public class Components{

	@JsonProperty("continent")
	private String continent;

	@JsonProperty("country")
	private String country;

	@JsonProperty("country_code")
	private String countryCode;

	@JsonProperty("town")
	private String town;

	@JsonProperty("road")
	private String road;

	@JsonProperty("_type")
	private String type;

	@JsonProperty("ISO_3166-1_alpha-2")
	private String iSO31661Alpha2;

	@JsonProperty("_category")
	private String category;

	@JsonProperty("ISO_3166-1_alpha-3")
	private String iSO31661Alpha3;

	@JsonProperty("state")
	private String state;

	@JsonProperty("state_code")
	private String stateCode;

	public void setContinent(String continent){
		this.continent = continent;
	}

	public String getContinent(){
		return continent;
	}

	public void setCountry(String country){
		this.country = country;
	}

	public String getCountry(){
		return country;
	}

	public void setCountryCode(String countryCode){
		this.countryCode = countryCode;
	}

	public String getCountryCode(){
		return countryCode;
	}

	public void setTown(String town){
		this.town = town;
	}

	public String getTown(){
		return town;
	}

	public void setRoad(String road){
		this.road = road;
	}

	public String getRoad(){
		return road;
	}

	public void setType(String type){
		this.type = type;
	}

	public String getType(){
		return type;
	}

	public void setISO31661Alpha2(String iSO31661Alpha2){
		this.iSO31661Alpha2 = iSO31661Alpha2;
	}

	public String getISO31661Alpha2(){
		return iSO31661Alpha2;
	}

	public void setCategory(String category){
		this.category = category;
	}

	public String getCategory(){
		return category;
	}

	public void setISO31661Alpha3(String iSO31661Alpha3){
		this.iSO31661Alpha3 = iSO31661Alpha3;
	}

	public String getISO31661Alpha3(){
		return iSO31661Alpha3;
	}

	public void setState(String state){
		this.state = state;
	}

	public String getState(){
		return state;
	}

	public void setStateCode(String stateCode){
		this.stateCode = stateCode;
	}

	public String getStateCode(){
		return stateCode;
	}

	@Override
 	public String toString(){
		return 
			"Components{" + 
			"continent = '" + continent + '\'' + 
			",country = '" + country + '\'' + 
			",country_code = '" + countryCode + '\'' + 
			",town = '" + town + '\'' + 
			",road = '" + road + '\'' + 
			",_type = '" + type + '\'' + 
			",iSO_3166-1_alpha-2 = '" + iSO31661Alpha2 + '\'' + 
			",_category = '" + category + '\'' + 
			",iSO_3166-1_alpha-3 = '" + iSO31661Alpha3 + '\'' + 
			",state = '" + state + '\'' + 
			",state_code = '" + stateCode + '\'' + 
			"}";
		}
}