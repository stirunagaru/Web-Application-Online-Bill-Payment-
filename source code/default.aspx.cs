using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _default : System.Web.UI.Page
{
    int countOfUser = 0;
    bool flag = true;
    UserInfo aUser = new UserInfo();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["currentUser"] == null)
        {
            login1.Text = "USER LOGIN";
            signup.Enabled = true;
        }
        else
        {
            contact_form.Visible = false;
            contact_form_create.Visible = false;
            login1.Text = "LOGOUT";
            signup.Enabled = false;
        }

    }
    protected void notActive(object sender, EventArgs e)
    {
        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Work in Progress ! ')", true);

    }
    protected void UserloginNavigation(object sender, EventArgs e)
    {
        string username = emailaddress.Text;
        string loginpassword = password.Text;
        int countUsers = 0;

        foreach(UserInfo ui in ((List<UserInfo>)Application["AllUsersList"]))
        {
            countUsers++;
            if((ui.EmailAddress==username) && (ui.Password==loginpassword))
            { 
            int index = ((List<UserInfo>)Application["AllUsersList"]).IndexOf(ui);
            Session["currentUser"] = ui;
            Session["username"] = ui.FirstName + " " + ui.LastName;
            Response.Redirect("~/transactionDetails.aspx");
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('It appears this user is not in our database. Or a wrong password has been given. Please go to the Sign Up page');", true);

            }
        }
        if (countUsers == 0)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('It appears this user is not in our database. Please go to the Sign Up page');window.location.replace('Default.aspx');",true);
            Response.Redirect("Default.aspx");

           // string strconfirm = "<script>if(window.confirm('It appears this user is not in our database. Please go to the Sign Up page. Are you sure?')){window.location.href='Default.aspx'}</script>";
           // ClientScript.RegisterStartupScript(this.GetType(), "Confirm", strconfirm, false);

        }


    }
    

    
    protected void login_contactform2(object sender, EventArgs e)
    {
        contact_form.Visible = true;
        contact_form_create.Visible = false;
    }

    protected void userLoginVisibility(object sender, EventArgs e)
    {
      
        if (Session["currentUser"] == null)
        {
            contact_form.Visible = true;
            contact_form_create.Visible = false;

        }
        else
        {

            if (login1.Text == "USER LOGIN" || login1.Text == "LOGOUT")
            {
                login1.Text = "USER LOGIN";
                signup.Enabled = true;
                Session.Abandon();
                string strconfirm = "<script>if(window.confirm('You are now signed out')){window.location.href='Default.aspx'}</script>";
                ClientScript.RegisterStartupScript(this.GetType(), "Confirm", strconfirm, false);                
            }
            else
            {
                Response.Redirect("default.aspx");
            }
        }
    }


    protected void createAccountVisibility(object sender, EventArgs e)
    {
        
            contact_form.Visible = false;
            contact_form_create.Visible = true;
        
    }
    protected void  RecoverPasswordVisibility(object sender, EventArgs e)
    {
        Response.Redirect("~/RecoveryPassword.aspx");
    }
    protected void SignupRedirect(object sender, EventArgs e)
    {
        Response.Redirect("~/signupForm.aspx");
    }



    protected void emailAddressCheck(object sender, EventArgs e)
    {
        foreach (UserInfo ui in ((List<UserInfo>)Application["AllUsersList"]))
        {
            countOfUser++;
            aUser.EmailAddress = emailaddress_create.Text;
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
        }
    }

    protected void emailAddressCheck2(object sender, EventArgs e)
    {
        foreach (UserInfo ui in ((List<UserInfo>)Application["AllUsersList"]))
        {
            countOfUser++;
            aUser.EmailAddress = emailaddress.Text;
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
        if (flag)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('User " + aUser.EmailAddress + " does not exists. Please signup');", true);
        }
    }
}