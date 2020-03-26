package edu.matc.opencagedata;

import java.util.List;
import com.fasterxml.jackson.annotation.JsonProperty;
import javax.annotation.Generated;

@Generated("com.robohorse.robopojogenerator")
public class UNM49{

	@JsonProperty("regions")
	private Regions regions;

	@JsonProperty("statistical_groupings")
	private List<String> statisticalGroupings;

	public void setRegions(Regions regions){
		this.regions = regions;
	}

	public Regions getRegions(){
		return regions;
	}

	public void setStatisticalGroupings(List<String> statisticalGroupings){
		this.statisticalGroupings = statisticalGroupings;
	}

	public List<String> getStatisticalGroupings(){
		return statisticalGroupings;
	}

	@Override
 	public String toString(){
		return 
			"UNM49{" + 
			"regions = '" + regions + '\'' + 
			",statistical_groupings = '" + statisticalGroupings + '\'' + 
			"}";
		}
}