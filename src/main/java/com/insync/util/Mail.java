package com.insync.util;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class Mail {
	public static String randomCode;
	public static String emailid;
	public static String to[] = new String[30];

	public boolean sendMailToUser(String cemail) {
		emailid = cemail;

		String confirmMessage = "Hi " + "<br/ ><br/> " + "Thanks for subcribe,";
		boolean sendmailflag = Mail.sendMail("goutam.pati143@gmail.com",
				"goutam123", "smtp.gmail.com", "465", "true", "true", true,
				"javax.net.ssl.SSLSocketFactory", "false", "Oman News Agency", "hi",
				confirmMessage);
		if (sendmailflag) {
			System.out.println("success");
		} else {
			System.err.println("********fail*************");
		}

		return sendmailflag;
	}

	public synchronized static boolean sendMail(String userName,
			String passWord, String host, String port, String starttls,
			String auth, boolean debug, String socketFactoryClass,
			String fallback, String subject, String messageText,
			String htmlMessage) {
		Properties props = new Properties();
		System.err.println("***********************************");
		// Properties props=System.getProperties();
		props.put("mail.smtp.user", userName);
		props.put("mail.smtp.host", host);
		if (!"".equals(port))
			props.put("mail.smtp.port", port);
		if (!"".equals(starttls))
			props.put("mail.smtp.starttls.enable", starttls);
		props.put("mail.smtp.auth", auth);
		if (debug) {
			props.put("mail.smtp.debug", "true");
		} else {
			props.put("mail.smtp.debug", "false");
		}
		if (!"".equals(port))
			props.put("mail.smtp.socketFactory.port", port);
		if (!"".equals(socketFactoryClass))
			props.put("mail.smtp.socketFactory.class", socketFactoryClass);
		if (!"".equals(fallback))
			props.put("mail.smtp.socketFactory.fallback", fallback);

		try {
			Session session = Session.getDefaultInstance(props);
			session.setDebug(debug);
			MimeMessage msg = new MimeMessage(session);

			msg.setText(messageText);
			msg.setSubject(subject);
			msg.setFrom(new InternetAddress("goutam.pati143@gmail.com"));
			msg.addRecipient(Message.RecipientType.TO, new InternetAddress(
					emailid));
			msg.setContent(htmlMessage, "text/html");
			msg.saveChanges();
			Transport transport = session.getTransport("smtp");
			transport.connect("smtp.gmail.com", "goutam.pati143@gmail.com",
					"goutam123");

			transport.sendMessage(msg, msg.getAllRecipients());
			transport.close();
			return true;
		} catch (Exception mex) {
			mex.printStackTrace();
			return false;
		}

	}

}