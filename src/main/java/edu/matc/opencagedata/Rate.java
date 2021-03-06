package edu.matc.opencagedata;

import com.fasterxml.jackson.annotation.JsonProperty;
import javax.annotation.Generated;

@Generated("com.robohorse.robopojogenerator")
public class Rate{

	@JsonProperty("limit")
	private int limit;

	@JsonProperty("reset")
	private int reset;

	@JsonProperty("remaining")
	private int remaining;

	public void setLimit(int limit){
		this.limit = limit;
	}

	public int getLimit(){
		return limit;
	}

	public void setReset(int reset){
		this.reset = reset;
	}

	public int getReset(){
		return reset;
	}

	public void setRemaining(int remaining){
		this.remaining = remaining;
	}

	public int getRemaining(){
		return remaining;
	}

	@Override
 	public String toString(){
		return 
			"Rate{" + 
			"limit = '" + limit + '\'' + 
			",reset = '" + reset + '\'' + 
			",remaining = '" + remaining + '\'' + 
			"}";
		}
}