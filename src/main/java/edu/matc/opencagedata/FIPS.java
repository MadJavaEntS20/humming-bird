package edu.matc.opencagedata;

import com.fasterxml.jackson.annotation.JsonProperty;
import javax.annotation.Generated;

@Generated("com.robohorse.robopojogenerator")
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