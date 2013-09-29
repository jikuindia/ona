package com.insync.constant;

import java.net.URL;
import java.util.ArrayList;
import java.util.List;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

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
		    		 
		    		 Elements countryElement=td.getElementsByIndexEquals(1);
		    		 String countryString=countryElement.text().trim();
		    		 
		    		 Elements buyElement=td.getElementsByIndexEquals(2);
		    		 String buyString=buyElement.text().trim();
		    		 
		    		 Elements sellElement=td.getElementsByIndexEquals(3);
		    		 String sellString=sellElement.text().trim();
		    		 System.out.println(countryString.length());
		    		 
		    		 if(td.getElementsByIndexEquals(0).text().equals("USD")||td.getElementsByIndexEquals(0).text().equals("SAR") ||td.getElementsByIndexEquals(0).text().equals("QAR")||td.getElementsByIndexEquals(0).text().equals("KWD"))
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
	}
