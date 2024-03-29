package edu.matc.opencagedata;

import com.fasterxml.jackson.annotation.JsonProperty;
import javax.annotation.Generated;

@Generated("com.robohorse.robopojogenerator")
public class Roadinfo{

	@JsonProperty("drive_on")
	private String driveOn;

	@JsonProperty("speed_in")
	private String speedIn;

	public void setDriveOn(String driveOn){
		this.driveOn = driveOn;
	}

	public String getDriveOn(){
		return driveOn;
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
			",speed_in = '" + speedIn + '\'' + 
			"}";
		}
}