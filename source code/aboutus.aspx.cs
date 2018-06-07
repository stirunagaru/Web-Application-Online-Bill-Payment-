using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class aboutus : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["currentUser"] == null)
        {
            login1.Text = "USER LOGIN";
            signup.Enabled = true;
        }
        else
        {
            login1.Text = "LOGOUT";
            signup.Enabled = false;
        }

    }

    protected void userLoginVisibility(object sender, EventArgs e)
    {

        if (Session["currentUser"] == null)
        {
            login1.Text = "USER LOGIN";
            signup.Enabled = true;
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
        Response.Redirect("default.aspx");
    }
}