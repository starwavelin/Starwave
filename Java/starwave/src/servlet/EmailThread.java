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

public class EmailThread implements Runnable {

	private String subject;
	private String message;

	public EmailThread(String subject, String message) {
		this.subject = subject;
		this.message = message;
	}

	@Override
	public void run() {

		final String username = "USE_YOUR_OWN_SENDER_EMAIL_ADDRESS";
		final String pwd = "USE_YOUR_OWN_SENDER_EMAIL_PWD";

		// Get a Properties object SSL
		Properties props = new Properties();
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.socketFactory.port", "465");
		props.put("mail.smtp.socketFactory.class",
				"javax.net.ssl.SSLSocketFactory");
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.port", "465");
		System.out
				.println("Mail Server Properties have been setup successfully!");

		Session session = Session.getDefaultInstance(props,
				new javax.mail.Authenticator() {
					protected PasswordAuthentication getPasswordAuthentication() {
						return new PasswordAuthentication(username, pwd);
					}
				});

		try {

			Message msg = new MimeMessage(session);

			// Set the sender
			msg.setFrom(new InternetAddress("USE_YOUR_OWN_SENDER_EMAIL_ADDRESS"));

			// Set the recipient
			msg.setRecipients(Message.RecipientType.TO,
					InternetAddress.parse("USE_YOUR_OWN_RECEIVER_EMAIL_ADDRESS"));

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
