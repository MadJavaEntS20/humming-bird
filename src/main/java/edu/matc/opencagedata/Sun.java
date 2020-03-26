package edu.matc.opencagedata;

import com.fasterxml.jackson.annotation.JsonProperty;
import javax.annotation.Generated;

@Generated("com.robohorse.robopojogenerator")
public class Sun{

	@JsonProperty("set")
	private Set set;

	@JsonProperty("rise")
	private Rise rise;

	public void setSet(Set set){
		this.set = set;
	}

	public Set getSet(){
		return set;
	}

	public void setRise(Rise rise){
		this.rise = rise;
	}

	public Rise getRise(){
		return rise;
	}

	@Override
 	public String toString(){
		return 
			"Sun{" + 
			"set = '" + set + '\'' + 
			",rise = '" + rise + '\'' + 
			"}";
		}
}