package edu.matc.opencagedata;

import java.util.List;
import com.fasterxml.jackson.annotation.JsonProperty;
import javax.annotation.Generated;

@Generated("com.robohorse.robopojogenerator")
public class OpenCageResponse{

	@JsonProperty("thanks")
	private String thanks;

	@JsonProperty("licenses")
	private List<LicensesItem> licenses;

	@JsonProperty("rate")
	private Rate rate;

	@JsonProperty("documentation")
	private String documentation;

	@JsonProperty("stay_informed")
	private StayInformed stayInformed;

	@JsonProperty("results")
	private List<ResultsItem> results;

	@JsonProperty("status")
	private Status status;

	@JsonProperty("timestamp")
	private Timestamp timestamp;

	@JsonProperty("total_results")
	private int totalResults;

	public void setThanks(String thanks){
		this.thanks = thanks;
	}

	public String getThanks(){
		return thanks;
	}

	public void setLicenses(List<LicensesItem> licenses){
		this.licenses = licenses;
	}

	public List<LicensesItem> getLicenses(){
		return licenses;
	}

	public void setRate(Rate rate){
		this.rate = rate;
	}

	public Rate getRate(){
		return rate;
	}

	public void setDocumentation(String documentation){
		this.documentation = documentation;
	}

	public String getDocumentation(){
		return documentation;
	}

	public void setStayInformed(StayInformed stayInformed){
		this.stayInformed = stayInformed;
	}

	public StayInformed getStayInformed(){
		return stayInformed;
	}

	public void setResults(List<ResultsItem> results){
		this.results = results;
	}

	public List<ResultsItem> getResults(){
		return results;
	}

	public void setStatus(Status status){
		this.status = status;
	}

	public Status getStatus(){
		return status;
	}

	public void setTimestamp(Timestamp timestamp){
		this.timestamp = timestamp;
	}

	public Timestamp getTimestamp(){
		return timestamp;
	}

	public void setTotalResults(int totalResults){
		this.totalResults = totalResults;
	}

	public int getTotalResults(){
		return totalResults;
	}

	@Override
 	public String toString(){
		return 
			"OpenCageResponse{" + 
			"thanks = '" + thanks + '\'' + 
			",licenses = '" + licenses + '\'' + 
			",rate = '" + rate + '\'' + 
			",documentation = '" + documentation + '\'' + 
			",stay_informed = '" + stayInformed + '\'' + 
			",results = '" + results + '\'' + 
			",status = '" + status + '\'' + 
			",timestamp = '" + timestamp + '\'' + 
			",total_results = '" + totalResults + '\'' + 
			"}";
		}
}