package edu.matc.api;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
@JsonIgnoreProperties(ignoreUnknown = true)

public class What3words{

	@JsonProperty("words")
	private String words;

	public void setWords(String words){
		this.words = words;
	}

	public String getWords(){
		return words;
	}

	@Override
 	public String toString(){
		return 
			"What3words{" + 
			"words = '" + words + '\'' + 
			"}";
		}
}