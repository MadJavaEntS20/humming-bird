package edu.matc.api;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
@JsonIgnoreProperties(ignoreUnknown = true)

public class OSM{

	@JsonProperty("note_url")
	private String noteUrl;

	@JsonProperty("edit_url")
	private String editUrl;

	@JsonProperty("url")
	private String url;

	public void setNoteUrl(String noteUrl){
		this.noteUrl = noteUrl;
	}

	public String getNoteUrl(){
		return noteUrl;
	}

	public void setEditUrl(String editUrl){
		this.editUrl = editUrl;
	}

	public String getEditUrl(){
		return editUrl;
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
			",edit_url = '" + editUrl + '\'' + 
			",url = '" + url + '\'' + 
			"}";
		}
}