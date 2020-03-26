package edu.matc.opencagedata;

import com.fasterxml.jackson.annotation.JsonProperty;
import javax.annotation.Generated;

@Generated("com.robohorse.robopojogenerator")
public class Mercator{

	@JsonProperty("x")
	private double X;

	@JsonProperty("y")
	private double Y;

	public void setX(double X){
		this.X = X;
	}

	public double getX(){
		return X;
	}

	public void setY(double Y){
		this.Y = Y;
	}

	public double getY(){
		return Y;
	}

	@Override
 	public String toString(){
		return 
			"Mercator{" + 
			"x = '" + X + '\'' + 
			",y = '" + Y + '\'' + 
			"}";
		}
}