package edu.matc.api;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
@JsonIgnoreProperties(ignoreUnknown = true)

public class FIPS{

	@JsonProperty("county")
	private String county;

	@JsonProperty("state")
	private String state;

	public void setCounty(String county){
		this.county = county;
	}

	public String getCounty(){
		return county;
	}

	public void setState(String state){
		this.state = state;
	}

	public String getState(){
		return state;
	}

	@Override
 	public String toString(){
		return 
			"FIPS{" + 
			"county = '" + county + '\'' + 
			",state = '" + state + '\'' + 
			"}";
		}
}