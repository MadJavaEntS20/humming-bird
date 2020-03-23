package edu.matc.api;

import com.fasterxml.jackson.annotation.JsonProperty;

public class Regions{

	@JsonProperty("AMERICAS")
	private String aMERICAS;

	@JsonProperty("NORTHERN_AMERICA")
	private String nORTHERNAMERICA;

	@JsonProperty("WORLD")
	private String wORLD;

	@JsonProperty("US")
	private String uS;

	public void setAMERICAS(String aMERICAS){
		this.aMERICAS = aMERICAS;
	}

	public String getAMERICAS(){
		return aMERICAS;
	}

	public void setNORTHERNAMERICA(String nORTHERNAMERICA){
		this.nORTHERNAMERICA = nORTHERNAMERICA;
	}

	public String getNORTHERNAMERICA(){
		return nORTHERNAMERICA;
	}

	public void setWORLD(String wORLD){
		this.wORLD = wORLD;
	}

	public String getWORLD(){
		return wORLD;
	}

	public void setUS(String uS){
		this.uS = uS;
	}

	public String getUS(){
		return uS;
	}

	@Override
 	public String toString(){
		return 
			"Regions{" + 
			"aMERICAS = '" + aMERICAS + '\'' + 
			",nORTHERN_AMERICA = '" + nORTHERNAMERICA + '\'' + 
			",wORLD = '" + wORLD + '\'' + 
			",uS = '" + uS + '\'' + 
			"}";
		}
}