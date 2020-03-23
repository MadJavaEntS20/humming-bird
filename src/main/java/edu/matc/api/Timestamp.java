package edu.matc.api;

import com.fasterxml.jackson.annotation.JsonProperty;

public class Timestamp{

	@JsonProperty("created_unix")
	private int createdUnix;

	@JsonProperty("created_http")
	private String createdHttp;

	public void setCreatedUnix(int createdUnix){
		this.createdUnix = createdUnix;
	}

	public int getCreatedUnix(){
		return createdUnix;
	}

	public void setCreatedHttp(String createdHttp){
		this.createdHttp = createdHttp;
	}

	public String getCreatedHttp(){
		return createdHttp;
	}

	@Override
 	public String toString(){
		return 
			"Timestamp{" + 
			"created_unix = '" + createdUnix + '\'' + 
			",created_http = '" + createdHttp + '\'' + 
			"}";
		}
}