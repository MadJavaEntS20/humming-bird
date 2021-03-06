package edu.matc.opencagedata;

import com.fasterxml.jackson.annotation.JsonProperty;
import javax.annotation.Generated;

@Generated("com.robohorse.robopojogenerator")
public class StayInformed{

	@JsonProperty("twitter")
	private String twitter;

	@JsonProperty("blog")
	private String blog;

	public void setTwitter(String twitter){
		this.twitter = twitter;
	}

	public String getTwitter(){
		return twitter;
	}

	public void setBlog(String blog){
		this.blog = blog;
	}

	public String getBlog(){
		return blog;
	}

	@Override
 	public String toString(){
		return 
			"StayInformed{" + 
			"twitter = '" + twitter + '\'' + 
			",blog = '" + blog + '\'' + 
			"}";
		}
}