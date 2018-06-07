<%@ Page Language="C#" AutoEventWireup="true" CodeFile="transactionDetails.aspx.cs" Inherits="transactionDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Rapid Bill Pay</title>
    <link rel="stylesheet" type="text/css" href="RapidBillPay_CSS.css" />
    <style>
        #padder {
    height: 20%;
}
         #payment_page{
                 height: 40%;
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
        #date_text_box, #bussiness_name, #address_bussiness, #payment_amount, #amount_description {
            height: 37px;
            width: 100%;
        }

        #payment_page {
            height: 50%;
            background-color: #FCF3CF;
        }

        #cancel_transaction, #schedule_transaction, #transactions_ok {
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
    <form id="transaction_form_details" runat="server">
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
                         </nav>
                </header>
            </div>  <!-- wrapper1 -->
            <div class="wrapper row2">
                <div id="Background">
                    <div id="padder">
                        <div id="introduction">

                            <h3>
                                <span style="color: #FCF3CF">Why should you use RapidBillPay?
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


                    <div id="payment_page">
                        <!-- recover -->
                        <asp:Table ID="payment_form_payment" runat="server" border="0" Width="98%"  BorderWidth="5px" Style=" align-self:center; border: 0px solid black; border-collapse: collapse; background-color: #FCF3CF">
                            <asp:TableRow BorderWidth="5px" BorderColor="#FCF3CF">
                                <asp:TableCell ID="pay_details" runat="server" colspan="4" Style="text-align: center"> 
                            <span style =" padding-left: 50px; padding-right: 50px; padding-top:10px; padding-bottom:10px; font-size: 25px; color: #FCA503; font-family: aharoni;">
                              Compose A Payment Request  </span>
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow BorderWidth="5px" BorderColor="#FCF3CF">
                                <asp:TableCell runat="server" Width="1%" BorderWidth="5px" BorderColor="#FCF3CF">
                                <asp:Image ID="calender" runat="server" AlternateText="calender"
                                        ImageAlign="left" ImageUrl="images\calender.JPG" ToolTip="select the date for the payment" />
                                 <!--<img src="calender.jpg" alt="mail" /> <!-- calender image -->
                                </asp:TableCell>
                                <asp:TableCell runat="server" colspan="3" Width="98%" BorderWidth="5px" BorderColor="#FCF3CF">
                                    <asp:TextBox ID="date_text_box" placeholder="Select Payment/Transaction Date" ToolTip="select the date for the payment" runat="server"></asp:TextBox>
                                    
                                    <asp:RequiredFieldValidator  ID="dateRFValidator" ValidationGroup="transaction"  runat="server"
                                        ErrorMessage="Please Select a Date To Do Transaction"
                                     Display="None" ControlToValidate="date_text_box"></asp:RequiredFieldValidator> 
                                    
                                    <asp:RegularExpressionValidator ID="dateRegExpValidator" runat="server" ValidationGroup="transaction"  
                                     ErrorMessage="Please Select a Valid Date(e.g: 11/1/2017)" ControlToValidate="date_text_box" 
                                        ValidationExpression="^([0]?[1-9]|[1][0-2])[./-]([0]?[1-9]|[1|2][0-9]|[3][0|1])[./-]([0-9]{4}|[0-9]{2})$"  Display="None"> </asp:RegularExpressionValidator>                 
                                
                                </asp:TableCell>
                                <asp:TableCell runat="server"  colspan="1" Width="1%" BorderWidth="5px" BorderColor="#FCF3CF">
                              <asp:ImageButton ID="date_picker" runat="server" OnClick="Datepicker_Click"  BorderColor="#EEEEEE" ImageUrl="images/datepicker.jpg"></asp:ImageButton>  
                                    <asp:Calendar ID="calendar" runat="server" Visible="false" CellPadding="4" OnSelectionChanged="CalendarSelectionChanged"
                                        BorderColor="#999999" Font-Names="Verdana" Font-Size="8pt"
                                        Height="180px" ForeColor="Black" DayNameFormat="FirstLetter"
                                        Width="200px" BackColor="White">
                                        <TodayDayStyle ForeColor="Black" BackColor="#CCCCCC"></TodayDayStyle>
                                        <SelectorStyle BackColor="#CCCCCC"></SelectorStyle>
                                        <NextPrevStyle VerticalAlign="Bottom"></NextPrevStyle>
                                        <DayHeaderStyle Font-Size="7pt" Font-Bold="True" BackColor="#CCCCCC"></DayHeaderStyle>
                                        <SelectedDayStyle Font-Bold="True" ForeColor="White" BackColor="#666666"></SelectedDayStyle>
                                        <TitleStyle Font-Bold="True" BorderColor="Black" BackColor="#999999"></TitleStyle>
                                        <WeekendDayStyle BackColor="LightSteelBlue"></WeekendDayStyle>
                                        <OtherMonthDayStyle ForeColor="#808080"></OtherMonthDayStyle>
                                    </asp:Calendar>
                                   




                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow BorderWidth="5px" BorderColor="#FCF3CF">
                                <asp:TableCell runat="server" Width="1%" BorderWidth="5px" BorderColor="#FCF3CF">
                                <asp:Image ID="bussinessname" runat="server" AlternateText="bussinessname"
                                        ImageAlign="left" ImageUrl="images\bussinessname.JPG" ToolTip="Funds Receiving Bussiness's Name" />
                                 <!--
                                    <img src="bussinessname.jpg" alt="bussiness" /> <!--  image -->
                                </asp:TableCell>
                                <asp:TableCell runat="server" colspan="4" Width="99%" BorderWidth="5px" BorderColor="#FCF3CF">
                                    <asp:TextBox ID="bussiness_name" placeholder="Recipient/Bussiness Name" ToolTip="Funds Receiving Bussiness's Name" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator  ID="bnRfvalidator" ValidationGroup="transaction"  runat="server" ErrorMessage="Funds Receiving Bussiness's Name is Required"
                                     Display="None" ControlToValidate="bussiness_name"></asp:RequiredFieldValidator> 
                                        
                                </asp:TableCell>
                            </asp:TableRow>

                            <asp:TableRow BorderWidth="5px" BorderColor="#FCF3CF">
                                <asp:TableCell runat="server" Width="1%" BorderWidth="5px" BorderColor="#FCF3CF">
                                <asp:Image ID="address" runat="server" AlternateText="address"
                                        ImageAlign="left" ImageUrl="images\address.JPG" ToolTip="Funds Receiving Bussiness's Mailing Address" />
                                
                                </asp:TableCell>
                                <asp:TableCell runat="server" colspan="4" Width="99%" BorderWidth="5px" BorderColor="#FCF3CF">
                                    <asp:TextBox ID="address_bussiness" placeholder="Recipient/Bussiness Street Address" ToolTip="Funds Receiving Bussiness's Mailing Address" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator  ID="addRf" ValidationGroup="transaction"  runat="server" ErrorMessage="Funds Receiving Bussiness's Mailing Address is Required"
                                     Display="None" ControlToValidate="address_bussiness"></asp:RequiredFieldValidator> 
                                    
                                     <asp:RegularExpressionValidator ID="addreg" runat="server" ValidationGroup="transaction"  
                                     ErrorMessage="Please Enter The Valid Address (e.g: 2933 Glen Crow Court or Glen Crow Court)" 
                                         ControlToValidate="address_bussiness" ValidationExpression="^^[a-zA-Z0-9\s,'-]*$" 
                                         Display="None"></asp:RegularExpressionValidator>    
                                </asp:TableCell>
                            </asp:TableRow>

                            <asp:TableRow BorderWidth="5px" BorderColor="#FCF3CF">
                                <asp:TableCell runat="server" Width="1%" BorderWidth="5px" BorderColor="#FCF3CF">
                                <asp:Image ID="amount" runat="server" AlternateText="amount"
                                        ImageAlign="left" ImageUrl="images\amount.JPG" ToolTip="Payment Amount in $$.cc and Describe your Payment" />
                                 <!--
                                    <img src="amount.jpg" alt="mail" /> <!--  image -->
                                </asp:TableCell>
                                <asp:TableCell runat="server" Width="49%" BorderWidth="9px" BorderColor="#FCF3CF">
                                    <asp:TextBox ID="payment_amount" placeholder="Amount in $$.cc" ToolTip="Payment Amount in $$" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator  ID="amountRF" ValidationGroup="transaction"  
                                        runat="server" ErrorMessage="Please Enter The Amount"
                                     Display="None" ControlToValidate="payment_amount"></asp:RequiredFieldValidator> 
                                    
                                     <asp:RegularExpressionValidator ID="amountReg" runat="server" ValidationGroup="transaction"  
                                     ErrorMessage="Please Enter the Valid Payment Amount eg: $76 or $76.10" ControlToValidate="payment_amount" 
                                         ValidationExpression="^\$(\d{1,3}(\,\d{3})*|(\d+))(\.\d{2})?$"  Display="None"> </asp:RegularExpressionValidator>    


                                </asp:TableCell>
                                <asp:TableCell runat="server" colspan="3" Width="50%" BorderWidth="7px" BorderColor="#FCF3CF">
                                    <asp:TextBox ID="amount_description" placeholder="Describe Your Payment" ToolTip="Description of your payment. Eg: Car Payment" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator  ID="descriptionRF" ValidationGroup="transaction"
                                        runat="server" ErrorMessage="Payment Description Is Required"
                                     Display="None" ControlToValidate="amount_description"></asp:RequiredFieldValidator> 
                                        
                                </asp:TableCell>
                            </asp:TableRow>

                            <asp:TableRow BorderWidth="5px" BorderColor="#FCF3CF">
                                <asp:TableCell Width="50%" colspan="2" runat="server" Style="text-align: right" BorderWidth="5px" BorderColor="#FCF3CF">
                                    <asp:Button ID="cancel_transaction" Text="CANCEL TRANSACTION" OnClick="cancel_click" 
                                        OnClientClick="return confirm('Are you sure you want to cancel the transaction?');return false"
                                        runat="server"></asp:Button>
                                </asp:TableCell>

                                <asp:TableCell colspan="2" runat="server" Width="50%" BorderWidth="5px" BorderColor="#FCF3CF" Style="text-align: left">
                                    <asp:Button ID="schedule_transaction" Text="SCHEDULE TRANSACTION" ValidationGroup="transaction" OnClick="scheduleTransaction" runat="server"></asp:Button>
                                </asp:TableCell>
                            </asp:TableRow>
                        </asp:Table>
                        <asp:ValidationSummary ID="transaction_summary" runat="server" ShowMessageBox="True"
                                        ShowSummary="False" ValidationGroup="transaction" />


<div>  <!-- transaction -->   
                        <asp:Table runat="server" ID="transaction_details" border="0" Width="100%" BorderWidth="5px" BorderColor="#FCF3CF" Style="border: 0px solid black; border-collapse: collapse; background-color: #FCF3CF">
                            <asp:TableRow runat="server" BorderWidth="5px" BorderColor="#FCF3CF">
                                <asp:TableCell Width="100%" colspan="5" runat="server" BorderWidth="5px" BorderColor="#FCF3CF" Style="text-align: left">
                                    <asp:Label  CssClass="requiredLabel" runat="server" style="font-size: 20px; font-family: aharoni; color: blue">
                                            My Previous Transactions
                                      </asp:Label>
                                </asp:TableCell>
                            </asp:TableRow>

                            <asp:TableRow>
                                <asp:TableCell Width="20%" runat="server" Style="text-align: left">
                                    <asp:Label ID="transaction_date" Text="Transaction Date" runat="server"></asp:Label>
                                </asp:TableCell>

                                <asp:TableCell Width="20%" runat="server" Style="text-align: left">
                                    <asp:Label ID="receipient_name" Text="Receipient Name" runat="server"></asp:Label>
                                </asp:TableCell>
                                <asp:TableCell Width="20%" runat="server" Style="text-align: left">
                                    <asp:Label ID="receipient_address" Text="Receipient address" runat="server"></asp:Label>
                                </asp:TableCell>
                                <asp:TableCell Width="20%" runat="server" Style="text-align: left">
                                    <asp:Label ID="transaction_amount" Text="Amount" runat="server"></asp:Label>
                                </asp:TableCell>
                                <asp:TableCell Width="20%" runat="server" Style="text-align: left">
                                    <asp:Label ID="transaction_status" Text="Status" runat="server"></asp:Label>
                                </asp:TableCell>
                            </asp:TableRow>
                        </asp:Table>
</div>  <!-- transaction -->   


                <div>     <!-- ok -->   
                    <asp:Table  runat="server" ID="ok_table" border="0" Width="100%" BorderWidth="5px" BorderColor="#FCF3CF" Style="border: 0px solid black; border-collapse: collapse; background-color: #FCF3CF">
                            <asp:TableRow>
                                <asp:TableCell colspan="5" runat="server" Style="text-align: center">
                                    <asp:Button ID="transactions_ok" Text="OK" OnClick="ok" 
                                        OnClientClick="return confirm('Are you sure you want to cancel the transaction?');return false" 
                                        runat="server"></asp:Button>
                                </asp:TableCell>
                            </asp:TableRow>
                        </asp:Table>

                </div> <!-- ok -->
                    </div> <!-- payment_page -->
    
                   
                </div>
                <!-- background -->
            </div>
            <!-- wrapper2 -->







        </div>
    </form>
</body>
</html>
