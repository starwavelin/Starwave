package servlet;

import java.security.Security;
import java.util.Properties;

import javax.mail.Address;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import common.IConstant;

public class EmailThread implements Runnable {

	private String subject;
	private String message;

	public EmailThread(String subject, String message) {
		this.subject = subject;
		this.message = message;
	}

	@Override
	public void run() {

		// Get a Properties object SSL
		Properties props = new Properties();
		
		/* Use TLS to send Mail */
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.port", 587);
		
		
		/* Following is the old SSL way of sending Mails
		 * 
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.socketFactory.port", "465");
		props.put("mail.smtp.socketFactory.class",
				"javax.net.ssl.SSLSocketFactory");
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.port", "465");
		
		*/
		
		System.out
				.println("Mail Server Properties have been setup successfully!");

		Session session = Session.getDefaultInstance(props,
				new javax.mail.Authenticator() {
					protected PasswordAuthentication getPasswordAuthentication() {
						return new PasswordAuthentication(IConstant.SENDER_ADDRESS, IConstant.SENDER_PWD);
					}
				});

		try {

			Message msg = new MimeMessage(session);

			// Set the sender
			msg.setFrom(new InternetAddress(IConstant.SENDER_ADDRESS));

			// Set the recipient
			msg.setRecipients(Message.RecipientType.TO,
					InternetAddress.parse(IConstant.RECEIVER_ADDRESS));

			// Create mail subject
			msg.setSubject(subject);

			// create mail body
			//msg.setText(message);
			msg.setContent(message, "text/html;charset=UTF-8");

			System.out.println("Mail Session has been created successfully!");

			Transport.send(msg);

			System.out.println("Msg sent!!");

		} catch (MessagingException e) {
			throw new RuntimeException(e);
		}
	} // end of run()
}
