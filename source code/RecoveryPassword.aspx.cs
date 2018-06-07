using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class RecoveryPassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
     protected void CancelButton(object sender, EventArgs e)
    {
        Response.Redirect("default.aspx");
    }
    protected void button_action(object sender, EventArgs e)
    {
        Response.Redirect("default.aspx");
    }

    protected void RecoveryButton(object sender, EventArgs e) //got code from login.aspx
    {
        string username = email_text_box.Text;
        string pass = "";
        
        MySql.Data.MySqlClient.MySqlConnection co;
        string connection = System.Configuration.ConfigurationManager.ConnectionStrings["MySqlConnectionString"].ToString();

        try
        {
            using (co = new MySql.Data.MySqlClient.MySqlConnection(connection))
            {
                co.Open();
                MySql.Data.MySqlClient.MySqlCommand command = new MySql.Data.MySqlClient.MySqlCommand("select emailAddress,password from tirunagarus_WADfl17_UserInfo where emailAddress='" + username + "'", co);

                MySql.Data.MySqlClient.MySqlDataReader sqlReader = command.ExecuteReader();
                if (sqlReader.HasRows == true)
                {
                    while (sqlReader.Read())
                    {
                     //  string email = ((string)sqlReader["emailAddress"]);
                     //   if (email == username)
                       // {
                            pass = ((string)sqlReader["Password"]);
                            sendMail(sender, e, pass);
                        //}
                    }
                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Sorry we cannot find a matching email. Please Sign Up');", true);

                }
            }     
        }
        catch { }

    }



    protected void sendMail(object sender, EventArgs e, string pwd)
    {
        string msgTo = email_text_box.Text;
        string msgSubject = "We have recovered your password ! ";
        string msgBody = "Dear User <" + msgTo +"> ,<br />" + 
            "<br /> You have received this email because you requested to recover your password.<br /><br />" +
            "" +
             "Your current password is: " + pwd + "<br /><br />"+
            "Thank You.<br />" +
            "Sumanjali Tirunagaru";

        MailMessage mailObj = new MailMessage();
        mailObj.Body = msgBody;
        mailObj.From = new MailAddress("sumawadfall2017@gmail.com", "Admin Team");
        mailObj.To.Add(new MailAddress(msgTo));
        mailObj.Subject = msgSubject;
        mailObj.IsBodyHtml = true;

        SmtpClient smtpClient = new System.Net.Mail.SmtpClient("smtp.gmail.com", 587);
        smtpClient.UseDefaultCredentials = false;
        smtpClient.Credentials = new System.Net.NetworkCredential("sumawadfall2017@gmail.com", "!hahahaha");
        smtpClient.EnableSsl = true;

        try
        {
            smtpClient.Send(mailObj);
        }

        catch (Exception ex)
        {
          
        }
        ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Thank you. An Email Notification has also been sent to the address we have in the database.');", true);
        email_text_box.Text = "";

    }//end of send mail








}