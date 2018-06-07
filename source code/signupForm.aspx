<%@ Page Language="C#" AutoEventWireup="true" CodeFile="signupForm.aspx.cs" Inherits="signupForm" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Rapid Bill Pay</title>
    <link rel="stylesheet" type="text/css" href="RapidBillPay_CSS.css" />
    <style>
        #padder {
    height: 20%;
}
         #signupform_page{
                 height: 40%;
                 background-color: #FCF3CF;
            }
         #padder_footer{
            height: 5%;
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
        #date_text_box, #bussiness_name, #address_bussiness, #payment_amount, #amount_description {
            height: 37px;
            width: 100%;
        }
         #state_text_box,  #cust_mail_address,  #zipcode,  #first_name,  #last_name,  #homephone,  #cellphone{
            height: 37px;
            width: 100%;
           }
          #email_signup, #retype_email_signup, #security_questions, #security_answers, #password_signup, #retype_password_signup {
        height: 37px;
            width: 100%;
              }

        #payment_page {
            height: 50%;
            background-color: #FCF3CF;
        }

        #create_signup_account, #cancel_signup {
            font-size: 15px;
            height: 40px;
            padding-left: 25px;
            padding-right: 25px;
        }

       #previous_transaction, #transaction_date, #receipient_name, #receipient_address, #transaction_status, #transaction_amount {
            font-weight:bold;
            font-size: 20px;

        }

       


    </style>
</head>
<body style="background-color: #FCF3CF">
    <form id="signup_form_details" runat="server">
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
                                <asp:button id="login1" type="button" Text="USER LOGIN" OnClick="userLoginVisibility" runat="server"></asp:button>  &emsp;
                                <asp:button id="signup" type="button" Text="SIGN UP" OnClick="createAccountVisibility" runat="server"></asp:button>
                            </div>                    </nav>
                </header>
            </div>  <!-- wrapper1 -->
            <div class="wrapper row2">
                <div id="Background">
                    <div id="padder">
                        <div id="introduction">

                            <h3>
                                <span style="bottom: 5%; color: #FCF3CF">Why should you use RapidBillPay?
                                </span>
                            </h3>
                            <ul>
                                <li>
                                    <h3>
                                        <span style="bottom: 5%; color: #FCF3CF">We offer a secure and easy way to manage your utility bills.
                                        </span>
                                    </h3>
                                </li>
                                <li>
                                    <h3>
                                        <span style="bottom: 5%; color:#FCF3CF">All your personal information is secure at all times.
                                        </span>
                                    </h3>
                                </li>
                               </ul>
                        </div>
                    </div>
                    <!-- padder -->


                    <div id="signupform_page">
                        <!-- recover -->
                        <br />
                        <asp:Table ID="signup_form_payment_details1" runat="server" border="0" Width="98%"  BorderWidth="8px" Style=" align-self:center; border: 0px solid black; border-collapse: collapse; background-color: #FCF3CF">
                            <asp:TableRow>
                                <asp:TableCell ID="signup_details_1" runat="server" colspan="4" Style="text-align: center"> 
                            <span style =" padding-left: 50px; padding-right: 50px; padding-top:10px; padding-bottom:10px;font-weight:bold ;font-size: 30px; color: saddlebrown; font-family: aharoni;">
                              SIGN UP  </span>
                                </asp:TableCell>
                            </asp:TableRow>
                           
                            <asp:TableRow>
                                <asp:TableCell ID="TableCell1" runat="server" colspan="4" Style="text-align: left"> 
                            <span style ="padding-top:10px; padding-bottom:10px; font-size: 18px; color: blue; font-family: aharoni;">
                              Complete Your Full Mailing Address  </span>
                                </asp:TableCell>
                            </asp:TableRow>
                           
                            <asp:TableRow>
                                <asp:TableCell runat="server" Width="1%" BorderWidth="8px" BorderColor="#FCF3CF">
                                    <asp:Image ID="signup_state" runat="server" AlternateText="signup_state"
                                        ImageAlign="left" ImageUrl="images\signup_state.JPG" ToolTip="United States Postal abbreviations for States" />
                                 <!--   <img src="signup_state.JPG" alt="mail" title="United States Postal abbreviations for States" /> <!--  image -->
                                </asp:TableCell>
                                <asp:TableCell runat="server" colspan="3" Width="99%" BorderWidth="8px" BorderColor="#FCF3CF">
                                    <asp:DropDownList ID="state_text_box" Font-Size="Medium" ForeColor="Blue" ToolTip="United States Postal abbreviations for States" runat="server">
                                        <asp:ListItem Value="AL">Select State</asp:ListItem>
                                        <asp:ListItem Value="AL">Alabama</asp:ListItem>
                                        <asp:ListItem Value="AK">Alaska</asp:ListItem>
                                        <asp:ListItem Value="AZ">Arizona</asp:ListItem>
                                        <asp:ListItem Value="AR">Arkansas</asp:ListItem>
                                        <asp:ListItem Value="CA">California</asp:ListItem>
                                        <asp:ListItem Value="CO">Colorado</asp:ListItem>
                                        <asp:ListItem Value="CT">Connecticut</asp:ListItem>
                                        <asp:ListItem Value="DC">District of Columbia</asp:ListItem>
                                        <asp:ListItem Value="DE">Delaware</asp:ListItem>
                                        <asp:ListItem Value="FL">Florida</asp:ListItem>
                                        <asp:ListItem Value="GA">Georgia</asp:ListItem>
                                        <asp:ListItem Value="HI">Hawaii</asp:ListItem>
                                        <asp:ListItem Value="ID">Idaho</asp:ListItem>
                                        <asp:ListItem Value="IL">Illinois</asp:ListItem>
                                        <asp:ListItem Value="IN">Indiana</asp:ListItem>
                                        <asp:ListItem Value="IA">Iowa</asp:ListItem>
                                        <asp:ListItem Value="KS">Kansas</asp:ListItem>
                                        <asp:ListItem Value="KY">Kentucky</asp:ListItem>
                                        <asp:ListItem Value="LA">Louisiana</asp:ListItem>
                                        <asp:ListItem Value="ME">Maine</asp:ListItem>
                                        <asp:ListItem Value="MD">Maryland</asp:ListItem>
                                        <asp:ListItem Value="MA">Massachusetts</asp:ListItem>
                                        <asp:ListItem Value="MI">Michigan</asp:ListItem>
                                        <asp:ListItem Value="MN">Minnesota</asp:ListItem>
                                        <asp:ListItem Value="MS">Mississippi</asp:ListItem>
                                        <asp:ListItem Value="MO">Missouri</asp:ListItem>
                                        <asp:ListItem Value="MT">Montana</asp:ListItem>
                                        <asp:ListItem Value="NE">Nebraska</asp:ListItem>
                                        <asp:ListItem Value="NV">Nevada</asp:ListItem>
                                        <asp:ListItem Value="NH">New Hampshire</asp:ListItem>
                                        <asp:ListItem Value="NJ">New Jersey</asp:ListItem>
                                        <asp:ListItem Value="NM">New Mexico</asp:ListItem>
                                        <asp:ListItem Value="NY">New York</asp:ListItem>
                                        <asp:ListItem Value="NC">North Carolina</asp:ListItem>
                                        <asp:ListItem Value="ND">North Dakota</asp:ListItem>
                                        <asp:ListItem Value="OH">Ohio</asp:ListItem>
                                        <asp:ListItem Value="OK">Oklahoma</asp:ListItem>
                                        <asp:ListItem Value="OR">Oregon</asp:ListItem>
                                        <asp:ListItem Value="PA">Pennsylvania</asp:ListItem>
                                        <asp:ListItem Value="RI">Rhode Island</asp:ListItem>
                                        <asp:ListItem Value="SC">South Carolina</asp:ListItem>
                                        <asp:ListItem Value="SD">South Dakota</asp:ListItem>
                                        <asp:ListItem Value="TN">Tennessee</asp:ListItem>
                                        <asp:ListItem Value="TX">Texas</asp:ListItem>
                                        <asp:ListItem Value="UT">Utah</asp:ListItem>
                                        <asp:ListItem Value="VT">Vermont</asp:ListItem>
                                        <asp:ListItem Value="VA">Virginia</asp:ListItem>
                                        <asp:ListItem Value="WA">Washington</asp:ListItem>
                                        <asp:ListItem Value="WV">West Virginia</asp:ListItem>
                                        <asp:ListItem Value="WI">Wisconsin</asp:ListItem>
                                        <asp:ListItem Value="WY">Wyoming</asp:ListItem>
                                    </asp:DropDownList>
                                   
                                </asp:TableCell>
                            </asp:TableRow>

                            <asp:TableRow>
                                <asp:TableCell runat="server" Width="1%" BorderWidth="8px" BorderColor="#FCF3CF">
                                <asp:Image ID="address" runat="server" AlternateText="address"
                                        ImageAlign="left" ImageUrl="images\address.JPG" ToolTip="Customer Mailing Street Address and Zipcode" />
                                 <!-- <img src="address.jpg" alt="bussiness" /> <!--  image -->
                                </asp:TableCell>
                                <asp:TableCell runat="server" colspan="2" Width="89%" BorderWidth="8px" BorderColor="#FCF3CF">
                                    <asp:TextBox ID="cust_mail_address" placeholder="Street Address" ToolTip="Customer Mailing Street Address" Font-Size="Medium" ForeColor="Blue" runat="server"></asp:TextBox>
                                    
                                    <asp:RequiredFieldValidator  ID="address_RFValidator" ValidationGroup="signup_validator"  runat="server" 
                                     ErrorMessage="Please Enter the Address" Display="None" ControlToValidate="cust_mail_address">
                                    </asp:RequiredFieldValidator>   
                                </asp:TableCell>
                                
                                <asp:TableCell runat="server" colspan="1" Width="10%" BorderWidth="8px" BorderColor="#FCF3CF">
                                    <asp:TextBox ID="zipcode" placeholder="zipcode" ToolTip=" Customer Mailing zipcode" Font-Size="Medium" ForeColor="Blue" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator  ID="zipcode_RFValidator" ValidationGroup="signup_validator"  runat="server" 
                                     ErrorMessage="Please Enter The Zipcode" Display="None" ControlToValidate="zipcode">
                                    </asp:RequiredFieldValidator>   
 
                                    <asp:RegularExpressionValidator ID="zipcode_RegExpValidator" runat="server" ValidationGroup="signup_validator" 
                                    ErrorMessage="Please Enter The Valid Zipcode " ControlToValidate="zipcode"
                                        ValidationExpression="^(\d{5}-\d{4}|\d{5}|\d{9})$|^([a-zA-Z]\d[a-zA-Z] \d[a-zA-Z]\d)$"
                                        Display="None">
                                    </asp:RegularExpressionValidator>
                                    
                                
                                
                                </asp:TableCell>
                            </asp:TableRow>

                        </asp:Table>



                        <asp:Table ID="signup_form_payment_details2" runat="server" border="0" Width="98%" BorderWidth="8px" Style="align-self: center; border: 0px solid black; border-collapse: collapse; background-color: #FCF3CF">
                            <asp:TableRow>
                                <asp:TableCell ID="signup_details_2" runat="server" Width="1%" Style="text-align: right" BorderWidth="8px" BorderColor="#FCF3CF"> 
                                     <asp:Image ID="girl" runat="server" AlternateText="girl"
                                        ImageAlign="left" ImageUrl="images\girl.JPG" ToolTip="Customer's Frist Name and Last Name" />
                                 <!-- <img src="girl.jpg" alt="bussiness" /> <!--  image -->
                                </asp:TableCell>
                                <asp:TableCell runat="server" Width="49.5%" BorderWidth="8px" BorderColor="#FCF3CF">
                                    <asp:TextBox ID="first_name" placeholder="Frist Name" Font-Size="Medium" ForeColor="Blue" ToolTip="Customer's Frist Name" runat="server"></asp:TextBox>
                                    
                                    <asp:RequiredFieldValidator  ID="fn_RF" ValidationGroup="signup_validator"  runat="server" 
                                     ErrorMessage="Please Enter Your Firstname" Display="None" ControlToValidate="first_name">
                                    </asp:RequiredFieldValidator>   
 
                                    
                                </asp:TableCell>
                                <asp:TableCell runat="server" Width="49.5%" colspan="2" BorderWidth="8px" BorderColor="#FCF3CF">
                                    <asp:TextBox ID="last_name" placeholder="Last Name"  Font-Size="Medium" ForeColor="Blue" ToolTip="Customer's Last Name" runat="server"></asp:TextBox>
                                     <asp:RequiredFieldValidator  ID="ln_RF" ValidationGroup="signup_validator"  runat="server" 
                                     ErrorMessage="Please Enter Your LastName" Display="None" ControlToValidate="last_name">
                                    </asp:RequiredFieldValidator>   
 
                                
                                </asp:TableCell>
                            </asp:TableRow>


                            <asp:TableRow>
                                <asp:TableCell ID="TableCell2" runat="server" Width="1%" Style="text-align: right" BorderWidth="8px" BorderColor="#FCF3CF"> 
                                    <asp:Image ID="phone" runat="server" AlternateText="phone"
                                        ImageAlign="left" ImageUrl="images\phone.JPG" ToolTip="Customer's Home Phone and Cell Phone" />
                                </asp:TableCell>
                                <asp:TableCell runat="server" Width="49.5%" BorderWidth="8px" BorderColor="#FCF3CF">
                                    <asp:TextBox ID="homephone" placeholder="Home Phone" Font-Size="Medium" ForeColor="Blue" ToolTip="Customer's Home Phone" runat="server"></asp:TextBox>
                                   
                                    <asp:RequiredFieldValidator  ID="hp_RF" ValidationGroup="signup_validator"  runat="server" 
                                     ErrorMessage="Please Enter The Home Phone Number" Display="None" ControlToValidate="homephone">
                                    </asp:RequiredFieldValidator>   
 
                                    <asp:RegularExpressionValidator ID="hp_Reg" runat="server" ValidationGroup="signup_validator" 
                                    ErrorMessage="Please Enter The Valid Home Phone Number " ControlToValidate="homephone" 
                                        ValidationExpression="^[0-9]{10}$" Display="None">
                                    </asp:RegularExpressionValidator>
                                
                                </asp:TableCell>
                                <asp:TableCell runat="server" Width="49.5%" colspan="2" BorderWidth="8px" BorderColor="#FCF3CF">
                                    <asp:TextBox ID="cellphone" placeholder="Cell Phone"  Font-Size="Medium" ForeColor="Blue" ToolTip="Customer's Cell Phone" runat="server"></asp:TextBox>
                                     <asp:RequiredFieldValidator  ID="cp_RF" ValidationGroup="signup_validator"  runat="server" 
                                     ErrorMessage="Please Enter The Cell Phone Number" Display="None" ControlToValidate="cellphone">
                                    </asp:RequiredFieldValidator>   
 
                                    <asp:RegularExpressionValidator ID="cp_Reg" runat="server" ValidationGroup="signup_validator" 
                                    ErrorMessage="Please Enter The Valid Cell Phone Number " ControlToValidate="cellphone" 
                                        ValidationExpression="^[0-9]{10}$" 
                                        Display="None">
                                    </asp:RegularExpressionValidator>                    
                                </asp:TableCell>
                            </asp:TableRow>

                            <asp:TableRow>

                                <asp:TableCell runat="server" colspan="4" Width="100%" BorderWidth="8px" BorderColor="#FCF3CF">
                                 <span style =" padding-top:10px; padding-bottom:10px; font-size: 18px; color: blue; font-family: aharoni;">
                             NOTE: Your E-Mail Address Wil Be Your Username  </span>
                                </asp:TableCell>
                            </asp:TableRow>


                            <asp:TableRow>
                                <asp:TableCell ID="TableCell3" runat="server" Width="1%" Style="text-align: right" BorderWidth="8px" BorderColor="#FCF3CF"> 
                                    <asp:Image ID="mail_address" runat="server" AlternateText="mail_address"
                                        ImageAlign="left" ImageUrl="images\mail_address.JPG" ToolTip="Customer's E-Mail Address" />                                 
                                </asp:TableCell>
                                <asp:TableCell runat="server" Width="49.5%" BorderWidth="8px" BorderColor="#FCF3CF">
                                    <asp:TextBox ID="email_signup" OnTextChanged="emailAddressCheck2" placeholder="Email Address" Font-Size="Medium" ForeColor="Blue" ToolTip="Customer's E-Mail Address" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator  ID="email_rf" ValidationGroup="signup_validator"  runat="server" 
                                     ErrorMessage="Please Enter Your E-Mail Address" Display="None" ControlToValidate="email_signup">
                                    </asp:RequiredFieldValidator>   
 
                                    <asp:RegularExpressionValidator ID="email_reg" runat="server" ValidationGroup="signup_validator" 
                                    ErrorMessage="Please Enter Your Valid E-Mail Address " ControlToValidate="email_signup" 
                                        ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$" 
                                        Display="None">
                                    </asp:RegularExpressionValidator>

                                </asp:TableCell>
                                <asp:TableCell runat="server" Width="49.5%" colspan="2" BorderWidth="8px" BorderColor="#FCF3CF">
                                    <asp:TextBox ID="retype_email_signup" placeholder="Retype Email Address" Font-Size="Medium" ForeColor="Blue" ToolTip="Retype the Email Address" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator  ID="retypeemail_rf" ValidationGroup="signup_validator"  runat="server" 
                                     ErrorMessage="Please Enter The E-Mail Address Again" Display="None" ControlToValidate="retype_email_signup">
                                    </asp:RequiredFieldValidator>   
 
                                    <asp:RegularExpressionValidator ID="retypeemail_reg" runat="server" ValidationGroup="signup_validator" 
                                    ErrorMessage="Please Retype Your Valid E-Mail Address " ControlToValidate="retype_email_signup" 
                                        ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$" 
                                        Display="None">
                                    </asp:RegularExpressionValidator>

                                    <asp:CompareValidator id="email_compare" ValidationGroup="signup_validator"  
                                        ControlToValidate="retype_email_signup" ControlToCompare="email_signup"
                                        Display="None"  ErrorMessage="E-Mail Addresses did not match" runat="server">
                                    </asp:CompareValidator>
                                    
                                
                                </asp:TableCell>
                            </asp:TableRow>

                            <asp:TableRow>
                                <asp:TableCell ID="TableCell4" runat="server" Width="1%" Style="text-align: right" BorderWidth="8px" BorderColor="#FCF3CF"> 
                                    <asp:Image ID="password" runat="server" AlternateText="password"
                                        ImageAlign="left" ImageUrl="images\password.JPG" ToolTip="Password must be between 8 and 10 characters, contain at least one digit and one alphabetic character, and must not contain special character" />
                                
                                </asp:TableCell>
                                <asp:TableCell runat="server" Width="49.5%" BorderWidth="8px" BorderColor="#FCF3CF">
                                    <asp:TextBox ID="password_signup" TextMode="password" Font-Size="Medium" ForeColor="Blue" placeholder="Password" ToolTip=" Password must be between 8 and 10 characters, contain at least one digit and one alphabetic character, and must not contain special character" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator  ID="pass_rf" ValidationGroup="signup_validator"  runat="server" 
                                     ErrorMessage="Please Enter The Password" Display="None" ControlToValidate="password_signup">
                                    </asp:RequiredFieldValidator>   
 
                                    <asp:RegularExpressionValidator ID="pass_reg" runat="server" ValidationGroup="signup_validator" 
                                    ErrorMessage="Password must be between 8 and 10 characters, contain at least one digit and one alphabetic character, and must not contain special characters"
                                        ControlToValidate="password_signup" 
                                        ValidationExpression="^(?=.*\d)(?=.*[a-z | A-Z]).{8,10}$" 
                                        Display="None">
                                    </asp:RegularExpressionValidator>
                                
                                </asp:TableCell>
                                <asp:TableCell runat="server" Width="49.5%" colspan="2" BorderWidth="8px" BorderColor="#FCF3CF">
                                    <asp:TextBox ID="retype_password_signup" TextMode="password" Font-Size="Medium" ForeColor="Blue" placeholder="Retype Password" ToolTip="Retype the Password" runat="server"></asp:TextBox>
                                
                                    <asp:RequiredFieldValidator  ID="repass_rf" ValidationGroup="signup_validator"  runat="server" 
                                     ErrorMessage="Please Retype The Password" Display="None" ControlToValidate="retype_password_signup">
                                    </asp:RequiredFieldValidator>   
 
                                    <asp:RegularExpressionValidator ID="repass_reg" runat="server" ValidationGroup="signup_validator" 
                                    ErrorMessage="Password must be between 8 and 10 characters, contain at least one digit and one alphabetic character, and must not contain special characters"
                                        ControlToValidate="retype_password_signup" 
                                        ValidationExpression="^(?=.*\d)(?=.*[a-z | A-Z]).{8,10}$" 
                                        Display="None">
                                    </asp:RegularExpressionValidator>

                                    <asp:CompareValidator id="password_compare" ValidationGroup="signup_validator"  
                                        ControlToValidate="password_signup" ControlToCompare="retype_password_signup"
                                        Display="None" ErrorMessage="Passwords not matched" runat="server">
                                    </asp:CompareValidator>

                                </asp:TableCell>
                            </asp:TableRow>
                        </asp:Table>

                        <asp:Table ID="signup_details_3" runat="server" border="0" Width="98%" BorderWidth="8px" Style="align-self: center; border: 0px solid black; border-collapse: collapse; background-color: #FCF3CF">
                            <asp:TableRow>

                                <asp:TableCell ID="sec_question" ColumnSpan="4" runat="server" Width="100%" Style="text-align: left" BorderWidth="8px" BorderColor="#FCF3CF"> 
                                <span style ="padding-top:10px; padding-bottom:10px; font-size: 18px; color: blue; font-family: aharoni;">
                            Select a Security Question </span>
                                </asp:TableCell>
                            </asp:TableRow>

                            <asp:TableRow>
                                <asp:TableCell ID="TableCell6" runat="server" Width="1%" Style="text-align: right" BorderWidth="8px" BorderColor="#FCF3CF"> 
                                    <asp:Image ID="securityQ" runat="server" AlternateText="securityQ"
                                        ImageAlign="left" ImageUrl="images\securityQ.JPG" ToolTip="Select a security question" />
                                 <!-- <img src="securityQ.jpg" alt="bussiness" /> <!--  image -->
                                </asp:TableCell>
                                <asp:TableCell runat="server" ColumnSpan="3" Width="99%" BorderWidth="8px" BorderColor="#FCF3CF">
                                    <asp:DropDownList ID="security_questions" ToolTip="Select a security question" Font-Size="Medium" ForeColor="Blue" runat="server">

                                        <asp:ListItem Value="q1">What is your mother's maiden name?</asp:ListItem>
                                        <asp:ListItem Value="q2"> What was your childhood nickname?</asp:ListItem>
                                        <asp:ListItem Value="q3">What is the name of your favorite childhood friend?</asp:ListItem>
                                        <asp:ListItem Value="q4">What is your favorite sport team?</asp:ListItem>
                                        <asp:ListItem Value="q5">What was the make and model of your first car?</asp:ListItem>
                                        <asp:ListItem Value="q6">What school did you attend for sixth grade?</asp:ListItem>
                                        <asp:ListItem Value="q7">What was the last name of your third grade teacher?</asp:ListItem>
                                        <asp:ListItem Value="q8">In what town was your first job?</asp:ListItem>
                                        <asp:ListItem Value="q9">What is your favorite movie?</asp:ListItem>
                                        <asp:ListItem Value="q10">Who is your childhood sports hero?</asp:ListItem>
                                        <asp:ListItem Value="q11">In what year was your father born?</asp:ListItem>
                                    </asp:DropDownList>
                               
                                    <asp:RequiredFieldValidator  ID="sq_rf" ValidationGroup="signup_validator"  runat="server" 
                                     ErrorMessage="Please Select the Security Question" Display="None" ControlToValidate="security_questions">
                                    </asp:RequiredFieldValidator>
                                    </asp:TableCell>
                            </asp:TableRow>

                            <asp:TableRow>
                                <asp:TableCell ID="TableCell7" runat="server" Width="1%" Style="text-align: left" BorderWidth="8px" BorderColor="#FCF3CF"> 
                                     <asp:Image ID="securityAns" runat="server" AlternateText="securityAns"
                                        ImageAlign="left" ImageUrl="images\securityAns.JPG" ToolTip="Type an answer to the security question" />
                                </asp:TableCell>
                                <asp:TableCell runat="server" ColumnSpan="3" Width="99%" BorderWidth="8px" BorderColor="#FCF3CF">
                                    <asp:TextBox ID="security_answers" Font-Size="Medium" ForeColor="Blue" placeholder="Type an answer to the security question" ToolTip="Enter an answer to the security question" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator  ID="sa_rf" ValidationGroup="signup_validator"  runat="server" 
                                     ErrorMessage="Please Enter The Answer For your Securtiy Question" Display="None" ControlToValidate="security_answers">
                                    </asp:RequiredFieldValidator> 
                                    
                                </asp:TableCell>
                            </asp:TableRow>
                        </asp:Table>


                        <asp:Table ID="signup_details_4" runat="server" border="0" Width="98%" BorderWidth="8px" Style="align-self: center; border: 0px solid black; border-collapse: collapse; background-color: #FCF3CF">
                            <asp:TableRow>
                                <asp:TableCell ID="TableCell8" runat="server" ColumnSpan="2" Width="10%" Style="text-align: left" BorderWidth="8px" BorderColor="#FCF3CF">
                                    <asp:LinkButton ID="privacypolicy" Text="Privacy Policy" OnClick="privacy_policy_page" runat="server"></asp:LinkButton>
                                </asp:TableCell>
                                <asp:TableCell ID="TableCell9" runat="server" colspan="2" Width="90%" Style="text-align: left" BorderWidth="8px" BorderColor="#FCF3CF">
                                    <asp:CheckBox ID="privacy_checkbox" runat="server" Text="I have read and agreed the Terms and Conditions in the Privacy Policy"></asp:CheckBox>
                                </asp:TableCell>
                            </asp:TableRow>
                        </asp:Table>

                        <asp:Table ID="signup_details_5" runat="server" border="0" Width="98%" BorderWidth="8px" Style="align-self: center; border: 0px solid black; border-collapse: collapse; background-color: #FCF3CF">

                            <asp:TableRow BorderWidth="8px" BorderColor="#FCF3CF">
                                <asp:TableCell Width="50%" ColumnSpan="2" runat="server" Style="text-align: right" BorderWidth="8px" BorderColor="#FCF3CF">
                                    <asp:Button ID="cancel_signup" Text="         CANCEL        " OnClick="cancelSignup"
                                        OnClientClick="return confirm('Are you sure you want to cancel the transaction?');return false"
                                        runat="server"></asp:Button>
                                </asp:TableCell>
                                <asp:TableCell Width="50%" ColumnSpan="2" runat="server" BorderWidth="8px" BorderColor="#FCF3CF" Style="text-align: left">
                                    <asp:Button ID="create_signup_account" Text=" CREATE ACCOUNT" 
                                       ValidationGroup="signup_validator"  OnClick="validateCreate" runat="server"></asp:Button>
                                </asp:TableCell>
                            </asp:TableRow>
                        </asp:Table>

                        <asp:ValidationSummary ID="signupform_summary" runat="server" ShowMessageBox="True"
                                        ShowSummary="False" ValidationGroup="signup_validator" />

                    </div>
                    <!-- signupform_page -->


                </div>
                <!-- background -->
            </div>
            <!-- wrapper2 -->







        </div>
    </form>
</body>
</html>
