package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Mail
 */
@WebServlet("/Mail")
public class Mail extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static String SUCCESS = "/emailsuccess.html";
	private static String FAIL = "/emailerror.html";
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Mail() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String forward = "";
		
		// grab input data from index.jsp
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String number = request.getParameter("contact_number");
		String message = request.getParameter("message");
		
		String subject =  "[Site] Received Email from " + name.toUpperCase() 
				+ " with Email Address " + email;
		message = decorateMsg(message, name, email, number);
		
		//System.out.println("subject is: " + subject);
		//System.out.println("message is: " + message);
		
		Runnable r = new EmailThread(subject, message);
		Thread sentEmail = new Thread(r);
		sentEmail.start();
		
		if(sentEmail.isAlive()) {
			forward = SUCCESS;			
		}
		else {
			forward = FAIL;
		}
		
		RequestDispatcher view = request.getRequestDispatcher(forward);
		view.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	
	private String decorateMsg(String message, String name, String email, String number) {
		String mailedText = "<p>Dear Benjamin" + "\nHi! </p>" +
				"<p>You have received a message from your personal site</p>" +
				"<div style=\"border: solid 1px black; width: 500px;\">" +
				"<table style=\"margin-left: auto;margin-right: auto;\">" +
					"<tr>" +
						"<td colspan=\"2\" style=\"text-align: center;\">" +
						"<h3><b>The Following is the Message Sender's Basic Info</b></h3></td>" +
					"</tr>" +
					"<tr>" +
						"<td style=\"text-align: right; padding-right: 20px;\">Full Name</td>" +
						"<td style=\"color: #DC143C;\">" + name.toUpperCase() + "</td>" +
					"</tr>" +
					"<tr>" +
					"<td style=\"text-align: right; padding-right: 20px;\">Email Address</td>" +
					"<td>" + email + "</td>" +
					"</tr>" +
					"<tr>" +
					"<td style=\"text-align: right; padding-right: 20px;\">Phone Number</td>" +
					"<td>" + number + "</td>" +
					"</tr>" +
					"<tr>" +
					"<td style=\"text-align: right; padding-right: 20px;\">Message</td>" +
					"<td style=\"color: #000080;\">" + message + "</td>" +
					"</tr>" +
					"</table>" +
					"</div>" +
					"<p>Enjoy yourself in reading this email, " +
					"but be very cautious about spams!</p>";
		return mailedText;
	}
}
