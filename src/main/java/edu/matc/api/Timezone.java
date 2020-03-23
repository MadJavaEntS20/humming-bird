package edu.matc.api;

import com.fasterxml.jackson.annotation.JsonProperty;

public class Timezone{

	@JsonProperty("name")
	private String name;

	@JsonProperty("now_in_dst")
	private int nowInDst;

	@JsonProperty("short_name")
	private String shortName;

	@JsonProperty("offset_sec")
	private int offsetSec;

	@JsonProperty("offset_string")
	private String offsetString;

	public void setName(String name){
		this.name = name;
	}

	public String getName(){
		return name;
	}

	public void setNowInDst(int nowInDst){
		this.nowInDst = nowInDst;
	}

	public int getNowInDst(){
		return nowInDst;
	}

	public void setShortName(String shortName){
		this.shortName = shortName;
	}

	public String getShortName(){
		return shortName;
	}

	public void setOffsetSec(int offsetSec){
		this.offsetSec = offsetSec;
	}

	public int getOffsetSec(){
		return offsetSec;
	}

	public void setOffsetString(String offsetString){
		this.offsetString = offsetString;
	}

	public String getOffsetString(){
		return offsetString;
	}

	@Override
 	public String toString(){
		return 
			"Timezone{" + 
			"name = '" + name + '\'' + 
			",now_in_dst = '" + nowInDst + '\'' + 
			",short_name = '" + shortName + '\'' + 
			",offset_sec = '" + offsetSec + '\'' + 
			",offset_string = '" + offsetString + '\'' + 
			"}";
		}
}