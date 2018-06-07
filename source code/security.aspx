<%@ Page Language="C#" AutoEventWireup="true" CodeFile="security.aspx.cs" Inherits="security" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>RapidBillPay </title>
    <link rel="stylesheet"
          type="text/css"
          href="RapidBillPay_CSS.css" />

</head>
<body style=" background-color: #FCF3CF">
    <form id="form1" runat="server">
        <div>
            <div class="wrapper row1" style="width: 100%; padding-bottom: 40px">
                <nav>
                        <div id="header1" style="width: 20%; float: left;">
                            <b><a href="default.aspx">Rapid Bill Pay </a></b>

                        </div>
                        <div id="header2" style="width: 55%; display: inline;">
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
            </div>

            <div class="wrapper row2">
                <div id="Background">

                    <object width="100%" height="100%" data="pdffiles/security.pdf"></object>
                    <!-- <embed src="aboutus.pdf" width="100%" height="100%" type='application/pdf'>  -->

                </div>
                <!-- background -->
            </div>
            <!-- wrapper class -->



            <script>
                function notActive() {
                    alert("Work in Progress");
                }
            </script>





        </div>
    </form>
</body>
</html>
