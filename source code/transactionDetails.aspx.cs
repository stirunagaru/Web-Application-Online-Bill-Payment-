using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class transactionDetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {      
            if (Session["currentUser"] == null)
            {
              //  Response.Redirect("default.aspx");
            }
            else
            {
                                UserInfo populate = (UserInfo)Session["currentuser"];
                                string emailid = populate.EmailAddress;
                                MySql.Data.MySqlClient.MySqlConnection co;
                                string connection = System.Configuration.ConfigurationManager.ConnectionStrings["MySqlConnectionString"].ToString();
                                try
                                    {
                                        using (co = new MySql.Data.MySqlClient.MySqlConnection(connection))
                                        {
                                            co.Open();
                                            MySql.Data.MySqlClient.MySqlCommand command = new MySql.Data.MySqlClient.MySqlCommand
                                                ("select * from tirunagarus_WADfl17_RapidBillPay where EmailAddress='" + emailid + "'", co);


                                            MySql.Data.MySqlClient.MySqlDataReader sqlReader = command.ExecuteReader();

                    if (sqlReader.HasRows == true)
                    {
                        while (sqlReader.Read())
                        {
                            //   StudentInfor astudInfor = new StudentInfor();
                            BillPayEntry bill = new BillPayEntry();
                            bill.Emailaddress = ((string)sqlReader["emailAddress"]);
                            bill.PaymentTransactionDate = ((string)sqlReader["paymentTransactionDate"]);
                            bill.RecipientBusinessName = ((string)sqlReader["recipientBusinessName"]);
                            bill.RecipientBusinessAddress = ((string)sqlReader["recipientBusinessAddress"]);
                            bill.AmountPaid = ((string)sqlReader["amountPaid"]);
                            bill.PaymentDetails = ((string)sqlReader["paymentDetails"]);
                            bill.Status = ((int)sqlReader["status"]);


                            string stat = "In Progress";
                            if (bill.Status == 1)
                            { stat = "Completed"; }

                                TableRow row = new TableRow
                                     {
                                    Cells =
                                          {
                                             new TableCell { Text = bill.PaymentTransactionDate },
                                             new TableCell { Text = bill.RecipientBusinessName },
                                             new TableCell { Text = bill.RecipientBusinessAddress  },
                                             new TableCell { Text = bill.AmountPaid },
                                             new TableCell { Text = stat },
                                          }
                                     };
                            // studentTable.Rows.Add(row);
                            transaction_details.Rows.AddAt(2, row);
                        } //while sql reader()       
                    } //HasRows

                    else
                    {
                        TableRow tRow = new TableRow();
                        TableCell tCell = new TableCell();
                        tCell.Text = "No records found";
                        tRow.Cells.Add(tCell);
                        transaction_details.Rows.AddAt(2, tRow);

                    }


                } //sql connection
            } //try
            catch { }           
            } // else main
    }
    protected void transaction_Details(object sender, EventArgs e) 
        //previous_transaction
    {
        Response.Redirect("transactionDetails.aspx");
    }
 
    protected void button_action(object sender, EventArgs e)
    {
        Response.Redirect("default.aspx");
    }
    protected void cancel_click(object sender, EventArgs e)
    {
  Response.Redirect("~/transactionDetails.aspx");
    }
    protected void scheduleTransaction(object sender, EventArgs e)
    {
        BillPayEntry bp = new BillPayEntry();

        bp.PaymentTransactionDate = date_text_box.Text;
        bp.RecipientBusinessName = bussiness_name.Text;
        bp.RecipientBusinessAddress = address_bussiness.Text;
        bp.AmountPaid = payment_amount.Text;
        bp.PaymentDetails = amount_description.Text;
        bp.Status = 0; 
        UserInfo temp = (UserInfo)Session["currentUser"];
        bp.Emailaddress = temp.EmailAddress;
        if(temp.MyBillPayments == null)
        {
            List<BillPayEntry> newpay = new List<BillPayEntry>();
            newpay.Add(bp);
            temp.MyBillPayments = newpay;
        }
        else
        {
            temp.MyBillPayments.Add(bp);
        }
        string stat= "null";
        if (bp.Status == 0)
        { stat = "In Progress"; }
        TableRow row = new TableRow
        {
            Cells =
                  {
                       new TableCell { Text = bp.PaymentTransactionDate },
                       new TableCell { Text = bp.RecipientBusinessName },
                       new TableCell { Text = bp.RecipientBusinessAddress },
                       new TableCell { Text = bp.AmountPaid },
                       new TableCell {Text =stat }
                  }
        };
        transaction_details.Rows.AddAt(2,row);


                    string msgTo = bp.Emailaddress;
                    string msgSubject = "New Transaction Scheduling Notification";
                    string msgBody = "Dear User " + msgTo + ",<br /><br />" +
                              "You have scheduled a transaction in Rapid Bill Pay on"+ bp.PaymentTransactionDate  + " <br/> <br />" +
                              "You can check the status of the transaction by visiting <a href='http://dcm.uhcl.edu/c432017fa01tirunagarus/transactionDetails.aspx'> Compose a trasaction</a> " +
                               "<br /><br />" +
                               "Thank you again for using <a href='http://dcm.uhcl.edu/c432017fa01tirunagarus/'>Rapid Bill Pay</a> " +
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

                string query = "INSERT INTO `c432017fa01tirunagarus`.`tirunagarus_WADfl17_RapidBillPay`(`emailAddress`, `paymentTransactionDate`, `recipientBusinessName`, `recipientBusinessAddress`, `amountPaid`, `paymentDetails`, `status`) VALUES ('" + bp.Emailaddress + "','" + bp.PaymentTransactionDate + "','" + bp.RecipientBusinessName + "','" + bp.RecipientBusinessAddress + "','" + bp.AmountPaid + "','" + bp.PaymentDetails + "'," + bp.Status + ") ";


                MySql.Data.MySqlClient.MySqlCommand command = new MySql.Data.MySqlClient.MySqlCommand(query, co);

                command.ExecuteNonQuery();
                co.Close();

        
        Response.Redirect("~/transactionDetails.aspx");
    }
    protected void ok(object sender, EventArgs e)
    {
        UserInfo temp = (UserInfo)Session["currentUser"];
        BillPayEntry bpstatus = new BillPayEntry();
        if (temp.MyBillPayments == null)
        {

        }
        else
        {
            // foreach (BillPayEntry i in temp.MyBillPayments)
            //{
            //  i.Status = 1;
            //}

            MySql.Data.MySqlClient.MySqlConnection co;
            string connection = System.Configuration.ConfigurationManager.ConnectionStrings["MySqlConnectionString"].ToString();
            co = new MySql.Data.MySqlClient.MySqlConnection(connection);
            co.Open();
            try
            {

                string query = $"UPDATE `c432017fa01tirunagarus`.`tirunagarus_WADfl17_RapidBillPay` SET `status` = 1 WHERE `emailAddress` = '{temp.EmailAddress}'; ";
                MySql.Data.MySqlClient.MySqlCommand command = new MySql.Data.MySqlClient.MySqlCommand(query, co);

               int rows = command.ExecuteNonQuery();
                co.Close();
            }

            catch (Exception ex)
            {

                Console.WriteLine("session abandon: " + ex.Message);
            }






        }
        Session.Abandon(); //abandons the current session user. no need of argument
      //  Session.Remove("currentUser");
        Response.Redirect("~/default.aspx");
    }   
    protected void Datepicker_Click(object sender, ImageClickEventArgs e)
    {
        if (calendar.Visible)
        {
            calendar.Visible = false;
        }
        else
        { 
            calendar.Visible = true;
        }
    }

    protected void CalendarSelectionChanged(object sender, EventArgs e)
    {
        date_text_box.Text = calendar.SelectedDate.ToShortDateString();
        calendar.Visible = false;
    }
    protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
    {
        if (e.Day.IsWeekend || e.Day.IsOtherMonth)
        {
            e.Day.IsSelectable = false;
            e.Cell.BackColor = System.Drawing.Color.LightGray;
        }
    }


}

