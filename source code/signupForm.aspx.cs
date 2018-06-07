using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;


public partial class signupForm : System.Web.UI.Page //parent classs
{
    int countOfUser = 0;
    bool flag = true;
    UserInfo aUser = new UserInfo();
   
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void userLoginVisibility(object sender, EventArgs e)
    {
        Response.Redirect("default.aspx");
    }


    protected void createAccountVisibility(object sender, EventArgs e)
    {
        Response.Redirect("default.aspx");
    }
  
    protected void transaction_Details(object sender, EventArgs e)
    {
        Response.Redirect("transactionDetails.aspx");
    }
    protected void CancelButton(object sender, EventArgs e)
    {
        Response.Redirect("default.aspx");
    }

    protected void button_action(object sender, EventArgs e)
    {
        Response.Redirect("default.aspx");
    }
    protected void privacy_policy_page(object sender, EventArgs e)
    {
        Response.Redirect("PrivacyPolicy.html");
    }
    protected void validateCreate(object sender, EventArgs e)
    { if (privacy_checkbox.Checked)
        {
            aUser.StateOrProvince = state_text_box.SelectedValue;
            aUser.StreetAddress = cust_mail_address.Text;
            aUser.ZipCode = zipcode.Text;
            aUser.FirstName = first_name.Text;
            aUser.LastName = last_name.Text;
            aUser.Homephone = homephone.Text;
            aUser.CellPhone = cellphone.Text;
            aUser.EmailAddress = email_signup.Text;
            aUser.Password = password_signup.Text;
            aUser.SecurityQuestion = security_questions.SelectedValue;
            aUser.SecurityQuestionAnswer = security_answers.Text;
            
            ((List<UserInfo>)Application["AllUsersList"]).Add(aUser);
                            string msgTo = email_signup.Text;
                            string msgSubject = "New Signing Up Notification";
                            string msgBody = "Dear User " + msgTo + ",<br /><br />" +
                                      "Thank you for signing up with us. <br/> <br />"+
                                      "You can now access your Rapid Bill Pay account at <a href='http://dcm.uhcl.edu/c432017fa01tirunagarus/'>Rapid Bill Pay </a> " +
                                       "<br /><br />" +
                                       "Thank you again for your Signing Up. If you have any questions, please contact us at"+
                                       "<a href='http://dcm.uhcl.edu/c432017fa01tirunagarus/contactus.aspx'>Contact Us </a> " +
                                       "<br /><br />" +
                                       "With Best Wishes, <br />" +
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

            //db updating


            MySql.Data.MySqlClient.MySqlConnection co;
            string connection = System.Configuration.ConfigurationManager.ConnectionStrings["MySqlConnectionString"].ToString();
            co = new MySql.Data.MySqlClient.MySqlConnection(connection);
            co.Open();

            string query = "INSERT INTO `c432017fa01tirunagarus`.`tirunagarus_WADfl17_UserInfo`(`emailAddress`,`lastName`,`firstName`,`homePhone`,`password`,`cellPhone`,`securityQuestion`,`securityQuestionAnswer`,`StreetAddress`,`ZipCode`) VALUES ('" + aUser.EmailAddress + "','" + aUser.FirstName + "','" + aUser.LastName + "','" + aUser.Homephone + "','" + aUser.Password + "','" + aUser.CellPhone + "','" + aUser.SecurityQuestion + "','" + aUser.SecurityQuestionAnswer + "','" + aUser.StreetAddress + "','" + aUser.ZipCode + "') ";


            MySql.Data.MySqlClient.MySqlCommand command = new MySql.Data.MySqlClient.MySqlCommand(query, co);

           int rows=  command.ExecuteNonQuery();
            co.Close();





            string strconfirm = "<script>if(window.confirm('Thanks your for signing up. You can now login using the Log in option. An email has also been sent to email address you provided during sign up')){window.location.href='default.aspx'}</script>";
            ClientScript.RegisterStartupScript(this.GetType(), "Confirm", strconfirm, false);

        }
        else
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please Accept Terms And Conditions')", true);
        }
    }


    protected void cancelSignup(object sender, EventArgs e)
    {
        Response.Redirect("~/signupForm.aspx");
    }

    protected void emailAddressCheck2(object sender, EventArgs e)
    {
        foreach (UserInfo ui in ((List<UserInfo>)Application["AllUsersList"]))
        {
            countOfUser++;
            aUser.EmailAddress = email_signup.Text;
            if (aUser.EmailAddress == ui.EmailAddress)
            {
                flag = false;
                break;
            }
            else
            {
                flag = true;
            }
        }
        if (!flag)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('User " + aUser.EmailAddress + " already exists. Please Login');", true);
           // Response.Redirect("default.aspx");
        }
    }
    
}