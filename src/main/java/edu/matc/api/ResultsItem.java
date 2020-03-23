package edu.matc.api;

import com.fasterxml.jackson.annotation.JsonProperty;

public class ResultsItem{

	@JsonProperty("components")
	private Components components;

	@JsonProperty("formatted")
	private String formatted;

	@JsonProperty("confidence")
	private int confidence;

	@JsonProperty("annotations")
	private Annotations annotations;

	@JsonProperty("geometry")
	private Geometry geometry;

	public void setComponents(Components components){
		this.components = components;
	}

	public Components getComponents(){
		return components;
	}

	public void setFormatted(String formatted){
		this.formatted = formatted;
	}

	public String getFormatted(){
		return formatted;
	}

	public void setConfidence(int confidence){
		this.confidence = confidence;
	}

	public int getConfidence(){
		return confidence;
	}

	public void setAnnotations(Annotations annotations){
		this.annotations = annotations;
	}

	public Annotations getAnnotations(){
		return annotations;
	}

	public void setGeometry(Geometry geometry){
		this.geometry = geometry;
	}

	public Geometry getGeometry(){
		return geometry;
	}

	@Override
 	public String toString(){
		return 
			"ResultsItem{" + 
			"components = '" + components + '\'' + 
			",formatted = '" + formatted + '\'' + 
			",confidence = '" + confidence + '\'' + 
			",annotations = '" + annotations + '\'' + 
			",geometry = '" + geometry + '\'' + 
			"}";
		}
}