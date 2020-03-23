package edu.matc.api;

import com.fasterxml.jackson.annotation.JsonProperty;

public class OSM{

	@JsonProperty("note_url")
	private String noteUrl;

	@JsonProperty("url")
	private String url;

	public void setNoteUrl(String noteUrl){
		this.noteUrl = noteUrl;
	}

	public String getNoteUrl(){
		return noteUrl;
	}

	public void setUrl(String url){
		this.url = url;
	}

	public String getUrl(){
		return url;
	}

	@Override
 	public String toString(){
		return 
			"OSM{" + 
			"note_url = '" + noteUrl + '\'' + 
			",url = '" + url + '\'' + 
			"}";
		}
}