<%@ Page Language="C#" AutoEventWireup="true" CodeFile="default.aspx.cs" Inherits="_default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <title>RapidBillPay </title> 
        <link rel="stylesheet" type="text/css" href="RapidBillPay_CSS.css" />
    <style>
            #contact_form, #contact_form_create{
                border: 2px solid black;
                border-collapse: collapse;
                float: right;
                background-color: #FCF3CF
            }
             #emailaddress_create,#password_create {
                 width: 100%;
                 padding: 10px 6px;
                 margin: 1px 0;
                 display: inline-block;
                 border: 1px solid #ccc;
                 box-sizing: border-box;
             }
              #nextBtn {
                align-content:center;
                color: black;
                padding: 10px 20px;
                margin: 8px 0;
                cursor: pointer;
                width: 100%;
                font-family: Helvetica, Arial, sans-serif;
            }
        #details1 {
            font-weight:bold;
            padding-left: 50px;
            padding-right: 50px;
            font-size: 25px;
            color:firebrick;
            font-family: aharoni;
        }
         #email_text_box{ height: 37px;width:100% }

         .requiredLabel:after {
                color: red;
                content: '*';
          }

           .ad {
            width: 33%;
            height: 100px;
        }
       

    </style>
</head>

<body style=" background-color: #FCF3CF">
    <form id="form1" runat="server">
        <div>
            <div class="wrapper row1" style="width: 100%; padding-bottom: 10px">
                <header style="height: 50px">
                    <nav>                      
                            <div id="header1" style="width: 20%; float: left;"><b>Rapid Bill Pay </b></div>
                            <div id="header2" style="width: 55%; display: inline; padding-top: 30px; padding-bottom: 50px">
                                <a href="aboutus.aspx">About Us</a> &emsp;&emsp;&emsp;&emsp;&emsp;
                                <a href="security.aspx">Security</a> &emsp;&emsp;&emsp;&emsp;&emsp;
                                <a href="contactus.aspx">Contact Us</a> &emsp;&emsp;&emsp;&emsp;&emsp;
                                <a href="faq.aspx">FAQ</a> &emsp;&emsp;&emsp;&emsp;&emsp;
                            </div>
                            <div id="header3" style="width: 30%; float: right;">
                                <asp:button id="login1" type="button" Text="USER LOGIN" OnClick="userLoginVisibility" runat="server"></asp:button>  &emsp;
                                <asp:button id="signup" type="button" Text="SIGN UP" OnClick="createAccountVisibility" runat="server"></asp:button>
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
                                        <span style="bottom: 10%; color: #FCF3CF">All your personal information is secure at all times.
                                        </span>
                                    </h3>
                                </li>
                                <li>
                                    <h3>
                                        <span style="bottom: 10%; color: #FCF3CF">Our developers regularly monitor and update the system for a better experience.
                                        </span>
                                    </h3>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <!-- padder -->

                    <div id="container">
                        <figcaption>
                            <asp:Table id="contact_form" Border="1" runat ="server" Visible="true">
                                <asp:TableRow>
                                    <asp:TableCell id="details" colspan="2" runat="server">Login to Pay Your Bills Online </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell colspan="2" runat="server">
                                       <asp:Label  CssClass="requiredLabel" runat="server" style="font-size: 20px; font-family: aharoni; color: #87412D">
                                            Email Address: 
                                       </asp:Label>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell colspan="2" runat="server">
                                        <asp:TextBox ID ="emailaddress"  placeholder="Enter Email Address" OnTextChanged="emailAddressCheck2" Font-Size="Medium" ForeColor="Blue" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator  ID="emailRFValidator" ValidationGroup="login_contactform"  runat="server" ErrorMessage="E-Mail Address is Required" Display="None" ControlToValidate="emailaddress"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="emailRegExpValidator" runat="server" ValidationGroup="login_contactform" ErrorMessage="Please Enter a valid E-Mail Address" ControlToValidate="emailaddress" ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$"  Display="None"></asp:RegularExpressionValidator>    
                                        </asp:TableCell>
                                </asp:TableRow>

                                <asp:TableRow>
                                    <asp:TableCell colspan="2" runat="server">
                                        <asp:Label CssClass="requiredLabel" runat="server" style="font-size: 20px; font-family: aharoni; color: #87412D">
                                            Password:
                                        </asp:Label>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell colspan="2" runat="server">
                                        <asp:TextBox ID ="password" TextMode="password" placeholder="Enter password" Font-Size="Medium" ForeColor="Blue" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator  ID="passwordRFValidator" ValidationGroup="login_contactform"  runat="server" ErrorMessage="Password is Required" Display="None" ControlToValidate="password"></asp:RequiredFieldValidator>    
                                        <asp:RegularExpressionValidator ID="passwordRegExpValidator" runat="server" ValidationGroup="login_contactform"  ControlToValidate="password"
                                            ValidationExpression="^(?=.*\d)(?=.*[a-z | A-Z]).{8,10}$"  Display="None" 
                                            ErrorMessage="Password must be between 8 and 10 characters, contain at least one digit and one alphabetic character, and must not contain special characters"></asp:RegularExpressionValidator>    
                                     </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell  Style="text-align: left">
                                        <asp:LinkButton Id="forgotPasswordBtn" Text="Forgot Password..?" OnClick="RecoverPasswordVisibility" runat="server"></asp:LinkButton>
                                    </asp:TableCell>
                                    <asp:TableCell rowspan="2" runat="server"  >
                                        <asp:Button id="loginBtn" Text="USER LOGIN" ValidationGroup="login_contactform"  OnClick="UserloginNavigation" runat="server"></asp:Button>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell Style="text-align: left">
                                        <asp:LinkButton Id="newAccountBtn"
                                            Text="Create a New Account" OnClick="createAccountVisibility" runat="server"></asp:LinkButton>
                                        </asp:TableCell>
                                </asp:TableRow>
                            </asp:Table>

                            <asp:ValidationSummary ID="login_contactform_summary" runat="server" ShowMessageBox="True"
                                        ShowSummary="False" ValidationGroup="login_contactform" />

    
                            <asp:Table id="contact_form_create" Border="1" runat="server" Visible="false" >
                        <asp:TableRow>
                            <asp:Tablecell id="details1" runat="server" colspan="2" style="text-align: center">New To Rapid Bill Pay?
                                <br />
                             <span style="font-weight:normal; font-size:23px">  Create an Account to Pay Your Bills online </span>  
                            </asp:Tablecell>
                        </asp:TableRow>

                        <asp:TableRow>
                            <asp:Tablecell colspan="2" runat="server">
                                <asp:Label CssClass="requiredLabel" runat="server" style="font-size: 20px; font-family: aharoni; color: #87412D">Email Address: </asp:Label>
                            </asp:Tablecell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell colspan="2" runat="server">
                                <asp:TextBox ID="emailaddress_create" placeholder="Enter Email Address" AutoPostBack="true"  OnTextChanged="emailAddressCheck" Font-Size="Medium" ForeColor="Blue" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator  ID="emailaddress_create_RFValidator" ValidationGroup="login_create_account"  runat="server" ErrorMessage="E-Mail Address is Required To Create An Account" Display="None" ControlToValidate="emailaddress_create"></asp:RequiredFieldValidator>    
                                <asp:RegularExpressionValidator ID="emailaddress_create_RegExpValidator" runat="server" ValidationGroup="login_create_account"  ErrorMessage="Please Enter a valid E-Mail Address" ControlToValidate="emailaddress_create" ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$"  Display="None"></asp:RegularExpressionValidator>    
                              </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:Tablecell colspan="2" runat="server">
                                <asp:Label CssClass="requiredLabel" runat="server" style="font-size: 20px; font-family: aharoni; color: #87412D">
                                    Password:
                                </asp:Label>
                            </asp:Tablecell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell colspan="2" runat="server">
                                <asp:TextBox ID="password_create" TextMode="password" placeholder="Enter password" Font-Size="Medium" ForeColor="Blue" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator  ID="password_create_RFValidator" ValidationGroup="login_create_account"  runat="server" ErrorMessage="Password is Required For A New Account" Display="None" ControlToValidate="password_create"></asp:RequiredFieldValidator>    
                                <asp:RegularExpressionValidator ID="password_create_RegExpValidator" runat="server" ValidationGroup="login_create_account"  ControlToValidate="password_create" 
                                    ValidationExpression="^(?=.*\d)(?=.*[a-z | A-Z]).{8,10}$"  Display="None" 
                                            ErrorMessage="Password must be between 8 and 10 characters, contain at least one digit and one alphabetic character, and must not contain special characters"></asp:RegularExpressionValidator>    
                           </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:Tablecell  Style="text-align: left">
                                <a href ="default.aspx"> Already a Member?</a>
                            </asp:Tablecell>
                            <asp:Tablecell rowspan="2">
                                <asp:Button ID="nextBtn" Text="NEXT" ValidationGroup="login_create_account" OnClick="SignupRedirect" runat="server"></asp:Button>
                            </asp:Tablecell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:Tablecell  Style="text-align: left" >
                                <asp:LinkButton ID="LinkButton1" Text="LOGIN" OnClick="login_contactform2" runat="server"></asp:LinkButton>
                            </asp:Tablecell>
                        </asp:TableRow>
                    </asp:Table>
                             <asp:ValidationSummary ID="login_create_account_summary" runat="server" ShowMessageBox="True"
                                        ShowSummary="False" ValidationGroup="login_create_account" />


                           </figcaption>
                    </div>                  
                    <!-- container -->

                   <!--   <div id="footerInfo">
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
                   footerInfo-->

                    <footer>
        <div id="ads">
            <asp:AdRotator CssClass="ad" ID="adr" runat="server" AdvertisementFile="~/ads.xml" Target="_blank" />
            <asp:AdRotator CssClass="ad" ID="AdRotator1" runat="server" AdvertisementFile="~/ads1.xml" Target="_blank" />
            <asp:AdRotator CssClass="ad" ID="AdRotator2" runat="server" AdvertisementFile="~/ads2.xml" Target="_blank" />

        </div>
    </footer>



                </div>
                <!-- background -->
            </div>
            <!-- wrapper2 -->
  
        </div>
    </form>
</body>
</html>
