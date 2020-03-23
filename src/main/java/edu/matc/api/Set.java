package edu.matc.api;

import com.fasterxml.jackson.annotation.JsonProperty;

public class Set{

	@JsonProperty("astronomical")
	private int astronomical;

	@JsonProperty("civil")
	private int civil;

	@JsonProperty("apparent")
	private int apparent;

	@JsonProperty("nautical")
	private int nautical;

	public void setAstronomical(int astronomical){
		this.astronomical = astronomical;
	}

	public int getAstronomical(){
		return astronomical;
	}

	public void setCivil(int civil){
		this.civil = civil;
	}

	public int getCivil(){
		return civil;
	}

	public void setApparent(int apparent){
		this.apparent = apparent;
	}

	public int getApparent(){
		return apparent;
	}

	public void setNautical(int nautical){
		this.nautical = nautical;
	}

	public int getNautical(){
		return nautical;
	}

	@Override
 	public String toString(){
		return 
			"Set{" + 
			"astronomical = '" + astronomical + '\'' + 
			",civil = '" + civil + '\'' + 
			",apparent = '" + apparent + '\'' + 
			",nautical = '" + nautical + '\'' + 
			"}";
		}
}