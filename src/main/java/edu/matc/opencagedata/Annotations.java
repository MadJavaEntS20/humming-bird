package edu.matc.opencagedata;

import com.fasterxml.jackson.annotation.JsonProperty;
import javax.annotation.Generated;

@Generated("com.robohorse.robopojogenerator")
public class Annotations{

	@JsonProperty("flag")
	private String flag;

	@JsonProperty("FIPS")
	private FIPS fIPS;

	@JsonProperty("Mercator")
	private Mercator mercator;

	@JsonProperty("timezone")
	private Timezone timezone;

	@JsonProperty("what3words")
	private What3words what3words;

	@JsonProperty("OSM")
	private OSM oSM;

	@JsonProperty("DMS")
	private DMS dMS;

	@JsonProperty("sun")
	private Sun sun;

	@JsonProperty("UN_M49")
	private UNM49 uNM49;

	@JsonProperty("Maidenhead")
	private String maidenhead;

	@JsonProperty("callingcode")
	private int callingcode;

	@JsonProperty("qibla")
	private double qibla;

	@JsonProperty("geohash")
	private String geohash;

	@JsonProperty("currency")
	private Currency currency;

	@JsonProperty("roadinfo")
	private Roadinfo roadinfo;

	@JsonProperty("wikidata")
	private String wikidata;

	@JsonProperty("MGRS")
	private String mGRS;

	public void setFlag(String flag){
		this.flag = flag;
	}

	public String getFlag(){
		return flag;
	}

	public void setFIPS(FIPS fIPS){
		this.fIPS = fIPS;
	}

	public FIPS getFIPS(){
		return fIPS;
	}

	public void setMercator(Mercator mercator){
		this.mercator = mercator;
	}

	public Mercator getMercator(){
		return mercator;
	}

	public void setTimezone(Timezone timezone){
		this.timezone = timezone;
	}

	public Timezone getTimezone(){
		return timezone;
	}

	public void setWhat3words(What3words what3words){
		this.what3words = what3words;
	}

	public What3words getWhat3words(){
		return what3words;
	}

	public void setOSM(OSM oSM){
		this.oSM = oSM;
	}

	public OSM getOSM(){
		return oSM;
	}

	public void setDMS(DMS dMS){
		this.dMS = dMS;
	}

	public DMS getDMS(){
		return dMS;
	}

	public void setSun(Sun sun){
		this.sun = sun;
	}

	public Sun getSun(){
		return sun;
	}

	public void setUNM49(UNM49 uNM49){
		this.uNM49 = uNM49;
	}

	public UNM49 getUNM49(){
		return uNM49;
	}

	public void setMaidenhead(String maidenhead){
		this.maidenhead = maidenhead;
	}

	public String getMaidenhead(){
		return maidenhead;
	}

	public void setCallingcode(int callingcode){
		this.callingcode = callingcode;
	}

	public int getCallingcode(){
		return callingcode;
	}

	public void setQibla(double qibla){
		this.qibla = qibla;
	}

	public double getQibla(){
		return qibla;
	}

	public void setGeohash(String geohash){
		this.geohash = geohash;
	}

	public String getGeohash(){
		return geohash;
	}

	public void setCurrency(Currency currency){
		this.currency = currency;
	}

	public Currency getCurrency(){
		return currency;
	}

	public void setRoadinfo(Roadinfo roadinfo){
		this.roadinfo = roadinfo;
	}

	public Roadinfo getRoadinfo(){
		return roadinfo;
	}

	public void setWikidata(String wikidata){
		this.wikidata = wikidata;
	}

	public String getWikidata(){
		return wikidata;
	}

	public void setMGRS(String mGRS){
		this.mGRS = mGRS;
	}

	public String getMGRS(){
		return mGRS;
	}

	@Override
 	public String toString(){
		return 
			"Annotations{" + 
			"flag = '" + flag + '\'' + 
			",fIPS = '" + fIPS + '\'' + 
			",mercator = '" + mercator + '\'' + 
			",timezone = '" + timezone + '\'' + 
			",what3words = '" + what3words + '\'' + 
			",oSM = '" + oSM + '\'' + 
			",dMS = '" + dMS + '\'' + 
			",sun = '" + sun + '\'' + 
			",uN_M49 = '" + uNM49 + '\'' + 
			",maidenhead = '" + maidenhead + '\'' + 
			",callingcode = '" + callingcode + '\'' + 
			",qibla = '" + qibla + '\'' + 
			",geohash = '" + geohash + '\'' + 
			",currency = '" + currency + '\'' + 
			",roadinfo = '" + roadinfo + '\'' + 
			",wikidata = '" + wikidata + '\'' + 
			",mGRS = '" + mGRS + '\'' + 
			"}";
		}
}