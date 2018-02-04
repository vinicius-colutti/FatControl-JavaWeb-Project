package br.com.fatcontrol.Util;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Data {
	
	
	
	public static String getDataPortugues (Date dt){
		
		
		String dataPt = null;
		
		SimpleDateFormat dataPortugues = new SimpleDateFormat("dd-MM-yyyy");
		
		
		dataPt = dataPortugues.format(dt);
		
		return dataPt;
		
		
		
	}
	
	
	public static String getDataMySql(Date dt){
		String dataPt = null;
		SimpleDateFormat dataPortugues = new SimpleDateFormat("yyyy-MM-dd");
		
		dataPt = dataPortugues.format(dt);
		
		return dataPt;
		
		
		
	}
	
	public static Date getData (String dt){
		
		Date dataMySQL = null;
		SimpleDateFormat dataFormatoMySQL = new SimpleDateFormat("dd-MM-yyyy");
		
		
		try{
			dataMySQL = dataFormatoMySQL.parse(dt);
			
			
			
		}catch(ParseException e){
			
			e.printStackTrace();
			
			
		}
		return dataMySQL;
		
		
		
		
	}

	
	
}


