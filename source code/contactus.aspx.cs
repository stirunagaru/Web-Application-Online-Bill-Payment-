using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class contactus : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void sendEmail(object sender, EventArgs e)
    {
        string msgTo = detailsform2_email.Text;
        string msgSubject = "We have received your message!";
        string msgBody = "Dear User "+ msgTo + ",<br /><br />" +
            " You are receiving this email because you contacted us with a comment, question(s) and/or concerns.<br /><br />" +
            "" +
            " Our support staff will respond within next 48 hours.<br /><br />" +
            "Thank You.<br />" +
            "Sumanjali Tirunagaru";
        
                MailMessage mailObj = new MailMessage();
                MailMessage bcc = new MailMessage();
                mailObj.Body = msgBody;
                mailObj.From = new MailAddress("sumawadfall2017@gmail.com", "Admin Team");
                mailObj.To.Add(new MailAddress(msgTo));
                mailObj.Subject = msgSubject;
                mailObj.IsBodyHtml = true;

                bcc.Body = msgBody; // bcc ing to the admin mail id to check
                bcc.From = new MailAddress("sumawadfall2017@gmail.com", "Admin Team");
                bcc.To.Add(new MailAddress("sumawadfall2017@gmail.com"));
                bcc.Subject = msgSubject;
                bcc.IsBodyHtml = true;


                SmtpClient smtpClient = new System.Net.Mail.SmtpClient("smtp.gmail.com", 587);
                smtpClient.UseDefaultCredentials = false;
                smtpClient.Credentials = new System.Net.NetworkCredential("sumawadfall2017@gmail.com", "!hahahaha");
                smtpClient.EnableSsl = true;

                try
                {
                    //smtpClient.Send("motelgroup3@gmail.com",msgTo,"thanks subject",msgBody);
                    smtpClient.Send(mailObj);
                    smtpClient.Send(bcc);
                }

                catch (Exception ex)
                {
         
                }
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Thank you for your comments. An email has been sent to the Email Address you entered. Please feel free to contact us anytime in the future, so we will address your concerns');", true);
                Response.Redirect("contactus.aspx");

    }
}