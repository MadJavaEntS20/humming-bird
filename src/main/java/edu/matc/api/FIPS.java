package edu.matc.api;

import com.fasterxml.jackson.annotation.JsonProperty;

public class FIPS{

	@JsonProperty("state")
	private String state;

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
			"state = '" + state + '\'' + 
			"}";
		}
}