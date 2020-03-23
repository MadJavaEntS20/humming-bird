package edu.matc.api;

import com.fasterxml.jackson.annotation.JsonProperty;

public class Roadinfo{

	@JsonProperty("drive_on")
	private String driveOn;

	@JsonProperty("road")
	private String road;

	@JsonProperty("speed_in")
	private String speedIn;

	public void setDriveOn(String driveOn){
		this.driveOn = driveOn;
	}

	public String getDriveOn(){
		return driveOn;
	}

	public void setRoad(String road){
		this.road = road;
	}

	public String getRoad(){
		return road;
	}

	public void setSpeedIn(String speedIn){
		this.speedIn = speedIn;
	}

	public String getSpeedIn(){
		return speedIn;
	}

	@Override
 	public String toString(){
		return 
			"Roadinfo{" + 
			"drive_on = '" + driveOn + '\'' + 
			",road = '" + road + '\'' + 
			",speed_in = '" + speedIn + '\'' + 
			"}";
		}
}