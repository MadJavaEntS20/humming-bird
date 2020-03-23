package edu.matc.api;

import java.util.List;
import com.fasterxml.jackson.annotation.JsonProperty;

public class Currency{

	@JsonProperty("thousands_separator")
	private String thousandsSeparator;

	@JsonProperty("symbol")
	private String symbol;

	@JsonProperty("alternate_symbols")
	private List<String> alternateSymbols;

	@JsonProperty("symbol_first")
	private int symbolFirst;

	@JsonProperty("subunit_to_unit")
	private int subunitToUnit;

	@JsonProperty("html_entity")
	private String htmlEntity;

	@JsonProperty("disambiguate_symbol")
	private String disambiguateSymbol;

	@JsonProperty("subunit")
	private String subunit;

	@JsonProperty("smallest_denomination")
	private int smallestDenomination;

	@JsonProperty("decimal_mark")
	private String decimalMark;

	@JsonProperty("iso_numeric")
	private String isoNumeric;

	@JsonProperty("name")
	private String name;

	@JsonProperty("iso_code")
	private String isoCode;

	public void setThousandsSeparator(String thousandsSeparator){
		this.thousandsSeparator = thousandsSeparator;
	}

	public String getThousandsSeparator(){
		return thousandsSeparator;
	}

	public void setSymbol(String symbol){
		this.symbol = symbol;
	}

	public String getSymbol(){
		return symbol;
	}

	public void setAlternateSymbols(List<String> alternateSymbols){
		this.alternateSymbols = alternateSymbols;
	}

	public List<String> getAlternateSymbols(){
		return alternateSymbols;
	}

	public void setSymbolFirst(int symbolFirst){
		this.symbolFirst = symbolFirst;
	}

	public int getSymbolFirst(){
		return symbolFirst;
	}

	public void setSubunitToUnit(int subunitToUnit){
		this.subunitToUnit = subunitToUnit;
	}

	public int getSubunitToUnit(){
		return subunitToUnit;
	}

	public void setHtmlEntity(String htmlEntity){
		this.htmlEntity = htmlEntity;
	}

	public String getHtmlEntity(){
		return htmlEntity;
	}

	public void setDisambiguateSymbol(String disambiguateSymbol){
		this.disambiguateSymbol = disambiguateSymbol;
	}

	public String getDisambiguateSymbol(){
		return disambiguateSymbol;
	}

	public void setSubunit(String subunit){
		this.subunit = subunit;
	}

	public String getSubunit(){
		return subunit;
	}

	public void setSmallestDenomination(int smallestDenomination){
		this.smallestDenomination = smallestDenomination;
	}

	public int getSmallestDenomination(){
		return smallestDenomination;
	}

	public void setDecimalMark(String decimalMark){
		this.decimalMark = decimalMark;
	}

	public String getDecimalMark(){
		return decimalMark;
	}

	public void setIsoNumeric(String isoNumeric){
		this.isoNumeric = isoNumeric;
	}

	public String getIsoNumeric(){
		return isoNumeric;
	}

	public void setName(String name){
		this.name = name;
	}

	public String getName(){
		return name;
	}

	public void setIsoCode(String isoCode){
		this.isoCode = isoCode;
	}

	public String getIsoCode(){
		return isoCode;
	}

	@Override
 	public String toString(){
		return 
			"Currency{" + 
			"thousands_separator = '" + thousandsSeparator + '\'' + 
			",symbol = '" + symbol + '\'' + 
			",alternate_symbols = '" + alternateSymbols + '\'' + 
			",symbol_first = '" + symbolFirst + '\'' + 
			",subunit_to_unit = '" + subunitToUnit + '\'' + 
			",html_entity = '" + htmlEntity + '\'' + 
			",disambiguate_symbol = '" + disambiguateSymbol + '\'' + 
			",subunit = '" + subunit + '\'' + 
			",smallest_denomination = '" + smallestDenomination + '\'' + 
			",decimal_mark = '" + decimalMark + '\'' + 
			",iso_numeric = '" + isoNumeric + '\'' + 
			",name = '" + name + '\'' + 
			",iso_code = '" + isoCode + '\'' + 
			"}";
		}
}