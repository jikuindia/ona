package com.insync.constant;

public interface QueryConstant {
	String loginSql="SELECT USER_NAME,PASSWORD FROM ONA2.INTERNET_ADMIN WHERE USER_NAME=? AND PASSWORD=?";
	String imageSql="INSERT INTO ONA2.INTERNET_IMG(IMG_ID,IMG_URL) VALUES(seq_imgstore.nextval,?)";
	String storePrayer="INSERT INTO ONA2.INTERNET_IFTHAR(SR_NO,TIME1,TIME2,TIME3,TIME4,TIME5,PRAY_DATE) values(seq_ifthaar.nextval,?,?,?,?,?,?)";
	String newsArbian="INSERT INTO ONA2.INTERNET_NEWS(SR_NO,TITLE,NEWS_STATUS,HOME_DISPLAY,HOME_DESC,MAIN_DESC,NEWS_DATE,NEWS_CAT) VALUES(seq_news.nextval,?,?,?,?,?,?,?)";
	String newsEnglish="INSERT INTO ONA2.INTERNET_NEWS_ENG(SR_NO,TITLE,NEWS_STATUS,HOME_DISPLAY,HOME_DESC,MAIN_DESC,NEWS_DATE,NEWS_CAT) VALUES(seq_news.nextval,?,?,?,?,?,?,?)";
	String curEng="select HOME_DESC,MAIN_DESC from INTERNET_CUR_OIL where T_TYPE=?  and T_LANG=? ";
	String curUpdate="update INTERNET_CUR_OIL set HOME_DESC=?,MAIN_DESC=?,U_DATE=sysdate where T_TYPE=?  and T_LANG=?";
	String curHisInsert="insert into INTERNET_CUR_OIL_HIST (HOME_DESC, MAIN_DESC, T_TYPE,  T_LANG)values(?,?,?,?)";
	String changePass="update INTERNET_ADMIN set password=? where user_name='admin'";
	String displayTitleEng="select SR_NO,TITLE from INTERNET_NEWS_ENG where NEWS_STATUS=1";
	String displayTitleAra="select SR_NO,TITLE from INTERNET_NEWS where NEWS_STATUS=1";
	String retrieveNewsARB="select SR_NO,TITLE,NEWS_STATUS,HOME_DISPLAY,HOME_DESC,MAIN_DESC,NEWS_DATE,NEWS_CAT from INTERNET_NEWS where SR_NO=?";
	String retrieveNewsENG="select SR_NO,TITLE,NEWS_STATUS,HOME_DISPLAY,HOME_DESC,MAIN_DESC,NEWS_DATE,NEWS_CAT from INTERNET_NEWS_ENG where SR_NO=?";
	String changeStatusARB="update INTERNET_NEWS set NEWS_STATUS=2 where SR_NO=?";
	String changeStatusENG="update INTERNET_NEWS_ENG set NEWS_STATUS=2 where SR_NO=?";
	String updateNewENG="update INTERNET_NEWS_ENG set TITLE=?, NEWS_STATUS=?,HOME_DISPLAY=?,HOME_DESC=?,MAIN_DESC=?,NEWS_DATE=?,NEWS_CAT=? where SR_NO=?";
	String updateNewARB="update INTERNET_NEWS set TITLE=?, NEWS_STATUS=?,HOME_DISPLAY=?,HOME_DESC=?,MAIN_DESC=?,NEWS_DATE=?,NEWS_CAT=? where SR_NO=?";
	String storeEmail="INSERT INTO ONA2.INTERNET_SUBSCRIBER(NAME,PHONE_NO,EMAIL,ADDRESS,SUB_TYPE) VALUES(?,?,?,?,?)";
	String retrieveEmail="SELECT * FROM ONA2.INTERNET_SUBSCRIBER where EMAIL=?";
	String getCountry="SELECT COUNTRY,OILPRICE FROM INTERNET_OILPRICE";
	String storeOil="INSERT INTO INTERNET_OILPRICE(ID,COUNTRY,OILPRICE) VALUES(?,?,?)";
	
	String getTitleEng="select SR_NO,TITLE from ONA2.INTERNET_NEWS_ENG where NEWS_DATE=to_date(?,'mm-dd-yyyy')";
	String getTitleAra="select SR_NO,TITLE from ONA2.INTERNET_NEWS where NEWS_DATE=to_date(?,'mm-dd-yyyy')";
	String getNewsDescEng="select TITLE,MAIN_DESC from INTERNET_NEWS_ENG where SR_NO=?";
	String getNewsDescArb="select TITLE,MAIN_DESC from INTERNET_NEWS where SR_NO=?";
	String prayerTime="select TIME1,TIME2,TIME3,TIME4,TIME5 from internet_ifthar where PRAY_DATE between ? and ?" ;
    String imageFile="select IMG_URL from INTERNET_IMG where CREATED_DATE=to_date(?,'mm-dd-yyyy')";
    String serchPhoto="select IMG_URL from INTERNET_IMG where created_date between to_date(?,'mm/dd/yyyy') and to_date(?,'mm/dd/yyyy')+1 order by IMG_ID desc";

}

