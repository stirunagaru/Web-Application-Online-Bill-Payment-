<%@ Page Language="C#" AutoEventWireup="true" CodeFile="faq.aspx.cs" Inherits="faq" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <title>RapidBillPay </title>
    <link rel="stylesheet"
          type="text/css"
          href="RapidBillPay_CSS.css" />


</head>
<body style=" background-color: #FCF3CF">
    <!-- //e4d0b6 C8936C -->
<form id="form1" runat="server">
<div>
    <div class="wrapper row1" style="width: 100% ; padding-bottom: 10px ">
       <header style="height:45px">
	   <nav>
     
                
                    <div id="header1" style="width: 20%; float: left;"> <b> <a href ="default.aspx"> Rapid Bill Pay </a> </b> </div>
                    <div id="header2" style="width: 55%; display: inline;">
                        <a href="aboutus.aspx">About Us</a> &emsp;&emsp;&emsp;&emsp;&emsp;
                        <a href="security.aspx">Security</a> &emsp;&emsp;&emsp;&emsp;&emsp;
                        <a href="contactus.aspx">Contact Us</a> &emsp;&emsp;&emsp;&emsp;&emsp;
                        <a href="faq.aspx" > FAQ</a> &emsp;&emsp;&emsp;&emsp;&emsp;
                    </div>
                    <div id="header3" style="width: 30%;float: right;">
                        <asp:button id="login1" type="button" Text="USER LOGIN" OnClick="userLoginVisibility" runat="server"></asp:button>  &emsp;
                         <asp:button id="signup" type="button" Text="SIGN UP" OnClick="createAccountVisibility" runat="server"></asp:button>
                    </div>
            
        </nav> 
		</header>
    </div>
    
    <div class="wrapper row2">
        <div id="Background_faq" style ="background-color: white">
	<br />
 		<div id = "heading" style ="background-color: #FFC100 ; height: 45px"> 
		<h1><span style="color:Red; text-align:center;font-size: 30px;">Frequently Asked Questions </span>
		<span style="font-style: italic; font-family: serif; color: #87412D;" >Rapid Bill Pay</span></h1> <br/>
		</div> <!--heading -->
        <br />
		<a href="pdffiles/faq.pdf">view FAQ in PDF</a>
			<h3><span style="color:Red;">Q. What is Rapid Bill Pay?</span> </h3>
			<p><span style="color:#0000FF">A. Rapid Bill Pay is the premier provider for online bill payment systems. We make it easy for organizations to offer online bill payment, and we make it easy for customers to pay their bills online. </span> </p>
		
			<h3><span style="color:red;">Q. Does it cost anything to sign up for online bill payment? </span> </h3>
			<p><span style="color:#0000FF">A. No. It's free to sign up for online bill payment and to use the Rapid Bill Pay service. However, some billing organizations charge a transaction convenience fee. </span> </p>
			
			<h3><span style="color:red;">Q. How do I create a log in?</span> </h3>
			<br />
            <span style="color:#0000FF">A. Follow these steps </span>
				<ul>
				<li style="color: #0000FF"> <span style="color:#0000FF">From the Rapid Bill Pay home page, simply click the "Sign Up" button, enter your email, and create a password. </span> </li>
				<li style="color: #0000FF"> <span style="color:#0000FF">You will be sent an email to verify your email address. In that email, you will need to click "Verify Email" to return to Rapid Bill Pay. In that email, you will need to click "Verify Email" to return to Rapid Bill Pay. </span> </li>
				<li style="color: #0000FF"> <span style="color:#0000FF">Finally, you will need to provide your contact information, agree to terms and conditions, and then click "Next." Once your Rapid Bill Pay account has been created, you can begin managing your bills. </span> </li>
				</ul>
				
			
			<h3><span style="color:red">Q. Do I need a separate Rapid Bill Pay login for each billing account?</span> </h3>
			<p><span style="color:#0000FF">A. No. You can manage all your merchant and service provider billing accounts from a single Rapid Bill Pay login.</span> </p>
			
			<h3><span style="color:red">Q. What payment choices do I have?</span> </h3>
			<p><span style="color:#0000FF">A. You can pay your bills with a credit card, debit card, or you can transfer funds directly from your banking account using electronic funds transfer (EFT). The types of payment accepted are determined by the billing organization and not Rapid Bill Pay. If you do have questions about payment methods, please contact the billing organization directly.</span> </p>
			
			<h3><span style="color:red">Q. Can I set up automatic payments?</span> </h3>
			<p><span style="color:#0000FF">A. Yes. When you set up your account you can choose whether you want automatic bill payment, so you can set it and forget it. Payments will be automatically deducted from a credit card or banking account on the frequency you choose.</span> </p>
			
			<h3><span style="color:red;">Q. What will my bill look like online?</span> </h3>
			<p><span style="color:#0000FF">A. Your online bill will have an easy to read format with all of the necessary information to understand your bill.</span> </P>
			
			<h3><span style="color:red;">Q. What other information is available?</span> </h3>
			<p><span style="color:#0000FF">A. You can view up to a year's history of your account online, so you can print and compare your current bill to previous bills.</span> </P>
			
			<h3><span style="color:red;">Q. How do I update my customer information, such as email address or phone number?</span> </h3>
			<p><span style="color:#0000FF">A. First log in to your account. In the upper right corner of the screen, you will see the profile icon along with the name associated with your account. Click the dropdown arrow and select "Account Settings." You can then update your contact or login information by clicking “Edit” and then click “Save Edits”.</span> </p>
			
			<h3><span style="color:red;">Q. Is my information safe?</span> </h3>
			<p><span style="color:#0000FF">A. Absolutely. All the transactions are handled on secure servers and all sensitive data encrypted. As long as you don't give out your password, only you will be able to access your account. Plus. your personal information or e-mail address will NOT be sold or rented to third parties for marketing purposes without your permission.</span> </p>
			
			<h3><span style="color:red;">Q. How easy is it to pay my bill?</span> </h3>
			<p><span style="color:#0000FF">A. You can pay your bills online or using our mobile app. You can also set up Rapid Bill Auto Pay to pay your bill on a scheduled frequency.</span> </p>
			
			<h3><span style="color:red;">Q. How do I know the payment went through?</span> </h3>
			<p><span style="color:#0000FF">A. After you complete the transaction, you will get a transaction receipt with confirmation number, as well as an email as a secondary confirmation. </span> </p>
	        <br />
            <br />
            <br />
    </div> <!-- background -->
	</div> <!-- wrapper class -->
    <script>
        function notActive() {
            alert("Work in Progress");
        }
    </script>















        </div>
    </form>
</body>
</html>
