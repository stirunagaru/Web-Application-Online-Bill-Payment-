<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RecoveryPassword.aspx.cs" Inherits="RecoveryPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>RapidBillPay </title> 
        <link rel="stylesheet" type="text/css" href="RapidBillPay_CSS.css" />
    <style>
         #email_text_box{ height: 37px; width: 99% }
        #emailaddress_create {width: 100%;
                padding: 10px 6px;
                margin: 1px 0;
                display: inline-block;
                border: 1px solid #ccc;
                box-sizing: border-box;}
        #Recovery{
                 height: 25%;
                 background-color: #FCF3CF;
            }

        #padder_footer{
            height: 15%;
        }
        #footerInfo tr th {
                text-align: left;
                font-family: serif;
                font-size: 25px;
                font-stretch: expanded;
                font-style: italic;
                font-weight: bold;
                color: #FCF3CF;
                padding-right: 10px;
                padding-left: 30px;
            }

        #footerInfo tr td {
                text-align: left;
                font-family: serif;
                font-size: 20px;
                font-stretch: expanded;
                font-style: italic;
                font-weight: bold;
                color: #FCF3CF;
                padding-right: 10px;
                padding-left: 30px;
            }
      #cancel_recovery, #recover_recovery{
          font-size:15px;
          height:40px;
          padding-left:25px;
          padding-right:25px;

      }  
              
    </style>

</head>
<body style=" background-color: #FCF3CF">
    <form id="form1" runat="server">
        <div>
            <div class="wrapper row1" style="width: 100%; padding-bottom: 10px">
                <header style="height: 50px">
                    <nav>                      
                             <div id="header1" style="width: 20%; float: left;"> <b> <a href ="default.aspx"> Rapid Bill Pay </a> </b> </div>
                            <div id="header2" style="width: 55%; display: inline; padding-top: 30px; padding-bottom: 50px">
                                <a href="aboutus.aspx">About Us</a> &emsp;&emsp;&emsp;&emsp;&emsp;
                                <a href="security.aspx">Security</a> &emsp;&emsp;&emsp;&emsp;&emsp;
                                <a href="contactus.aspx">Contact Us</a> &emsp;&emsp;&emsp;&emsp;&emsp;
                                <a href="faq.aspx">FAQ</a> &emsp;&emsp;&emsp;&emsp;&emsp;
                            </div>
                            <div id="header3" style="width: 30%; float: right;">
                                <asp:button id="login1" type="button" Text="USER LOGIN" OnClick="button_action" runat="server"></asp:button>  &emsp;
                                <asp:button id="signup" type="button" Text="SIGN UP" OnClick="button_action" runat="server"></asp:button>
                            </div>
                    </nav>
                </header>
            </div>  <!-- wrapper1 -->
            <div class="wrapper row2">
                <div id="Background">
                    <div id="padder">
                        <div id="introduction">

                            <h3>
                                <span style="bottom: 10%; color: #FCF3CF">Why should you use RapidBillPay?
                                </span>
                            </h3>
                            <ul>
                                <li>
                                    <h3>
                                        <span style="bottom: 10%; color: #FCF3CF">We offer a secure and easy way to manage your utility bills.
                                        </span>
                                    </h3>
                                </li>
                                <li>
                                    <h3>
                                        <span style="bottom: 10%; color:#FCF3CF">All your personal information is secure at all times.
                                        </span>
                                    </h3>
                                </li>
                                <li>
                                    <h3>
                                        <span style="bottom: 10%; color:#FCF3CF">Our developers regularly monitor and update the system for a better experience.
                                        </span>
                                    </h3>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <!-- padder -->

                   
                        <div id="Recovery">
                            <asp:Table ID="contact_form" runat="server" border="0" Width="100%" Style="border: 0px solid black; border-collapse: collapse; background-color: #FCF3CF">
                                <asp:TableRow>
                                    <asp:TableCell ID="details_2" runat="server" colspan="2" Style="text-align: center"> 
                            <span style =" font-weight:bold; padding-left: 50px; padding-right: 50px; padding-top:10px; padding-bottom:10px; font-size: 25px; color: saddlebrown; font-family: aharoni;">
                              RECOVER PASSWORD  </span>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell runat="server" Width="1%">
                                <img src="images/mail.jpg" alt="mail"  />
                                    </asp:TableCell>
                                    <asp:TableCell runat="server" Width="99%">
                                        <asp:TextBox ID="email_text_box" placeholder="Enter Email Address" ForeColor="Blue" Font-Size="Medium" ToolTip="Enter a Valid Email address" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator  ID="emailaddress_signup_create_RFValidator" ValidationGroup="signup_account"  runat="server" ErrorMessage="E-Mail Address is Required To Recover A Password" Display="None" ControlToValidate="email_text_box"></asp:RequiredFieldValidator>    
                                        <asp:RegularExpressionValidator ID="emailaddress_signup_RegExpValidator" runat="server" ValidationGroup="signup_account"  ErrorMessage="Please Enter a valid E-Mail Address To Recover A Password" ControlToValidate="email_text_box" ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$"  Display="None"></asp:RegularExpressionValidator>    
                              </asp:TableCell>
                                </asp:TableRow>
                            </asp:Table>

                            <p style="font: 3px; color: blue; text-align: justify;">
                                The Email which you are entering above must match the Email in the records. If the Emails match you will recieve an Email with Login Information.
                            </p>

                            <asp:Table ID="recover_pass_end" runat="server" Width="100%" Style="border-collapse: collapse; background-color: #FCF3CF">
                                <asp:TableRow>
                                    <asp:TableCell Width="50%" runat="server" Style="text-align: right">
                                        <asp:Button ID="cancel_recovery" Text="CANCEL AND GO BACK" OnClick="CancelButton" runat="server"></asp:Button>
                                    </asp:TableCell>

                                    <asp:TableCell runat="server" Width="50%" Style="text-align: left">
                                        <asp:Button ID="recover_recovery" Text="RECOVER PASSWORD" ValidationGroup="signup_account" OnClick="RecoveryButton" runat="server"></asp:Button>
                                    </asp:TableCell>
                                </asp:TableRow>
                            </asp:Table>

                         <asp:ValidationSummary ID="signup_account_summary" runat="server" ShowMessageBox="True"
                                        ShowSummary="False" ValidationGroup="signup_account" />
                        </div>
               <!-- container -->

                <div id="padder_footer">


                </div>


                    <div id="footerInfo">
                        <table>
                            <tr>
                                <th>Manage Account: </th>
                                <th>Save Time: </th>
                                <th>Go Green: </th>
                            </tr>
                            <tr>
                                <td>Pay all of your bills with a single login.  </td>
                                <td>Quickly and easily pay your bills and keep record of every bill you receive.</td>
                                <td>Save trees with paperless payment options.</td>
                            </tr>
                        </table>
                    </div>
                    <!-- footerInfo-->
                </div>
                <!-- background -->
            </div>
            <!-- wrapper2 -->






        </div>
    </form>
</body>
</html>
