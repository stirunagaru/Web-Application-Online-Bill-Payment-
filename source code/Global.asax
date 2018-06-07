<%@ Application Language="C#" %>

<script runat="server">

    void Application_Start(object sender, EventArgs e)
    {
        // Code that runs on application startup
        Application["AllUsersList"] = new List<UserInfo>();
        MySql.Data.MySqlClient.MySqlConnection co;
        string connection = System.Configuration.ConfigurationManager.ConnectionStrings["MySqlConnectionString"].ToString();

        try
        {
            using (co = new MySql.Data.MySqlClient.MySqlConnection(connection))
            {
                co.Open();
                MySql.Data.MySqlClient.MySqlCommand command = new MySql.Data.MySqlClient.MySqlCommand("select emailAddress, firstName, lastName, homePhone, password, cellphone, securityQuestion, securityQuestionAnswer, StreetAddress, ZipCode from tirunagarus_WADfl17_UserInfo",co);


                MySql.Data.MySqlClient.MySqlDataReader sqlReader = command.ExecuteReader();
                while (sqlReader.Read())
                {
                    UserInfo aUserInfor = new UserInfo();

                    aUserInfor.EmailAddress = ((string)sqlReader["emailAddress"]);
                    aUserInfor.FirstName= ((string)sqlReader["firstName"]);
                    aUserInfor.LastName=((string)sqlReader["lastName"]);
                    aUserInfor.Homephone = ((string)sqlReader["homePhone"]);
                    aUserInfor.Password = ((string)sqlReader["Password"]);
                    aUserInfor.CellPhone = ((string)sqlReader["cellphone"]);
                    aUserInfor.SecurityQuestion = ((string)sqlReader["securityQuestion"]);
                    aUserInfor.SecurityQuestionAnswer = ((string)sqlReader["securityQuestionAnswer"]);
                    aUserInfor.StreetAddress=((string)sqlReader["streetAddress"]);
                    aUserInfor.ZipCode=((string)sqlReader["zipcode"]);

                    ((List<UserInfo>)Application["AllUsersList"]).Add(aUserInfor);
                    Console.WriteLine(aUserInfor.EmailAddress + aUserInfor.Password+aUserInfor.FirstName+aUserInfor.LastName+aUserInfor.SecurityQuestion+aUserInfor.SecurityQuestionAnswer);

                }




            }
        }
        catch { }
    }

    void Application_End(object sender, EventArgs e)
    {
        //  Code that runs on application shutdown

    }

    void Application_Error(object sender, EventArgs e)
    {
        // Code that runs when an unhandled error occurs

    }

    void Session_Start(object sender, EventArgs e)
    {
        // Code that runs when a new session is started

        Application["AllUsersList"] = new List<UserInfo>();
        MySql.Data.MySqlClient.MySqlConnection co;
        string connection = System.Configuration.ConfigurationManager.ConnectionStrings["MySqlConnectionString"].ToString();

        try
        {
            using (co = new MySql.Data.MySqlClient.MySqlConnection(connection))
            {
                co.Open();
                MySql.Data.MySqlClient.MySqlCommand command = new MySql.Data.MySqlClient.MySqlCommand("select emailAddress, firstName, lastName, homePhone, password, cellphone, securityQuestion, securityQuestionAnswer, StreetAddress, ZipCode from tirunagarus_WADfl17_UserInfo",co);


                MySql.Data.MySqlClient.MySqlDataReader sqlReader = command.ExecuteReader();
                while (sqlReader.Read())
                {
                    UserInfo aUserInfor = new UserInfo();

                    aUserInfor.EmailAddress = ((string)sqlReader["emailAddress"]);
                    aUserInfor.FirstName= ((string)sqlReader["firstName"]);
                    aUserInfor.LastName=((string)sqlReader["lastName"]);
                    aUserInfor.Homephone = ((string)sqlReader["homePhone"]);
                    aUserInfor.Password = ((string)sqlReader["Password"]);
                    aUserInfor.CellPhone = ((string)sqlReader["cellphone"]);
                    aUserInfor.SecurityQuestion = ((string)sqlReader["securityQuestion"]);
                    aUserInfor.SecurityQuestionAnswer = ((string)sqlReader["securityQuestionAnswer"]);
                    aUserInfor.StreetAddress=((string)sqlReader["streetAddress"]);
                    aUserInfor.ZipCode=((string)sqlReader["zipcode"]);

                    ((List<UserInfo>)Application["AllUsersList"]).Add(aUserInfor);
                    Console.WriteLine(aUserInfor.EmailAddress + aUserInfor.Password+aUserInfor.FirstName+aUserInfor.LastName+aUserInfor.SecurityQuestion+aUserInfor.SecurityQuestionAnswer);

                }




            }
        }
        catch { }





    }

    void Session_End(object sender, EventArgs e)
    {
        // Code that runs when a session ends. 
        // Note: The Session_End event is raised only when the sessionstate mode
        // is set to InProc in the Web.config file. If session mode is set to StateServer 
        // or SQLServer, the event is not raised.

        UserInfo temp = (UserInfo)Session["currentUser"];

        MySql.Data.MySqlClient.MySqlConnection co;
        string connection = System.Configuration.ConfigurationManager.ConnectionStrings["MySqlConnectionString"].ToString();
        co = new MySql.Data.MySqlClient.MySqlConnection(connection);
        co.Open();
        int status = 1;
        try
        {
            string updateQuery = "update `c432017fa01tirunagarus`.`tirunagarus_WADfl17_RapidBillPay` set status = @status where emailAddress = @emailAddress;";
            string commit = "commit;";
           
            MySql.Data.MySqlClient.MySqlCommand command = new MySql.Data.MySqlClient.MySqlCommand(updateQuery, co);
            MySql.Data.MySqlClient.MySqlCommand command1 = new MySql.Data.MySqlClient.MySqlCommand(commit, co);

            command.Parameters.AddWithValue("@status", status);
            command.Parameters.AddWithValue("@emailAddress", temp.EmailAddress);

            int rows=  command.ExecuteNonQuery();
            command1.ExecuteNonQuery();
            co.Close();

        }

        catch(Exception ex)
        {

            Response.Write("session abandon: "+ex.Message);
        }
        Session.Abandon();

    }
</script>
