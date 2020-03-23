package edu.matc.api;

import com.fasterxml.jackson.annotation.JsonProperty;

public class DMS{

	@JsonProperty("lng")
	private String lng;

	@JsonProperty("lat")
	private String lat;

	public void setLng(String lng){
		this.lng = lng;
	}

	public String getLng(){
		return lng;
	}

	public void setLat(String lat){
		this.lat = lat;
	}

	public String getLat(){
		return lat;
	}

	@Override
 	public String toString(){
		return 
			"DMS{" + 
			"lng = '" + lng + '\'' + 
			",lat = '" + lat + '\'' + 
			"}";
		}
}