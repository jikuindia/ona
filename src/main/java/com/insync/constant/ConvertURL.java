package com.insync.constant;

import java.net.URL;
import java.util.ArrayList;
import java.util.List;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import com.insync.model.IftharCommand;

public class ConvertURL {
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		try {
			getContents();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
		
		public static List<String> getContents() throws Exception {
		 URL url=new URL("http://www.cbo-oman.org/fixrates.html?number=1000");
	    Document doc = Jsoup.connect("http://www.cbo-oman.org/fixrates.html?number=1000").get();
	    StringBuffer countryList = new StringBuffer("[");
	    StringBuffer buyList = new StringBuffer("[");
	    StringBuffer sellList = new StringBuffer("[");
	    List<String> currencyDataList=new ArrayList<String>();
		    Elements trs = doc.getElementsByTag("tr");
	    
		    for (Element tr : trs) {
		    	
		    
		    	Elements tds =tr.getElementsByIndexGreaterThan(5);
		    	
		    	 for (Element td : tds)
		    	 {
		    		 
		    		 Elements countryElement=td.getElementsByIndexEquals(0);
		    		 String countryString=countryElement.text().trim();
		    		 
		    		 Elements buyElement=td.getElementsByIndexEquals(2);
		    		 String buyString=buyElement.text().trim();
		    		 
		    		 Elements sellElement=td.getElementsByIndexEquals(3);
		    		 String sellString=sellElement.text().trim();
		    		 System.out.println(countryString.length());
		    		 if(countryString.equals("USD") || countryString.equals("SAR") || countryString.equals("AED") || countryString.equals("EUR") || countryString.equals("CNY") || countryString.equals("INR"))
		    		 {
		    		 if(countryString.length()>1) 
		    		 countryList.append("'").append(countryString).append("',");
		    		 if(buyString.length()>1)
		    		 buyList.append(buyString).append(",");
		    		 if(sellString.length()>1)
		    		 sellList.append(sellString).append(",");
		    		 }
		 		  }
	     // Elements linkHref = link.getElementsByIndexEquals(5);
	    //  System.out.println(tr);
	    }
		    countryList.deleteCharAt(countryList.lastIndexOf(","));
			countryList.append("]");
			buyList.deleteCharAt(buyList.lastIndexOf(","));
			buyList.append("]");
			sellList.deleteCharAt(sellList.lastIndexOf(","));
			sellList.append("]");
			currencyDataList.add(countryList.toString());
			currencyDataList.add(buyList.toString());
			currencyDataList.add(sellList.toString());
				
	    return currencyDataList;
	  }
		public static IftharCommand getPrayerData() throws Exception {
			IftharCommand prayerTime=new IftharCommand();
			
			Document doc = Jsoup.connect("http://www.awqafoman.net/calendar/calendar1.asp").get();
		        Element table=doc.getElementById("table2");
			    Elements trs=table.getElementsByTag("tr");
			    Element tr=trs.get(4);
			 	String date=tr.child(0).text();
			 	
			           	String prayer1=tr.child(1).text();
			      	String prayer2=tr.child(2).text();
			      	String prayer3=tr.child(3).text();
			      	String prayer4=tr.child(4).text();
			     	String prayer5=tr.child(5).text();
			     	String prayer6=tr.child(6).text();
			     	
			     	prayerTime.setPrayer1(prayer1);
			     	prayerTime.setPrayer2(prayer2);
			     	prayerTime.setPrayer3(prayer3);
			     	prayerTime.setPrayer4(prayer4);
			     	prayerTime.setPrayer5(prayer5);
			     	prayerTime.setPrayer6(prayer6);
			     	
				    System.out.println(prayer1);
					   
		    return prayerTime;
		  }
	}
