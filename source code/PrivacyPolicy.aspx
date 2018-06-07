<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PrivacyPolicy.aspx.cs" Inherits="PrivacyPolicy" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>RapidBillPay </title>
    <link rel="stylesheet"
          type="text/css"
          href="RapidBillPay_CSS.css" />
    <style>
        #p_id_pp {
            text-align: justify;
            font-size: 18px
        }
        #span_id_pp {
            color: #0000FF;
            font-weight: bold;
            font-size: 20px
        }
    </style>


</head>

<body>
    <form id="form1" runat="server">
        <div>


                     <div class="wrapper row1" style="width: 100% ; padding-bottom: 10px ">
        <header style="height:45px">
            <nav>
        

                    <div id="header1" style="width: 20%; float: left;"> <b> <a href="default.aspx"> Rapid Bill Pay </a> </b> </div>
                    <div id="header2" style="width: 55%; display: inline;">
                        <a href="aboutus.aspx">About Us</a> &emsp;&emsp;&emsp;&emsp;&emsp;
                        <a href="security.aspx">Security</a> &emsp;&emsp;&emsp;&emsp;&emsp;
                        <a href="contactus.aspx">Contact Us</a> &emsp;&emsp;&emsp;&emsp;&emsp;
                        <a href="faq.aspx"> FAQ</a> &emsp;&emsp;&emsp;&emsp;&emsp;
                    </div>
                    <div id="header3" style="width: 30%;float: right;">
                         <asp:button id="login1" type="button" Text="USER LOGIN" OnClick="userLoginVisibility" runat="server"></asp:button>  &emsp;
                                <asp:button id="signup" type="button" Text="SIGN UP" OnClick="createAccountVisibility" runat="server"></asp:button>

                    </div>
    
            </nav>
        </header>
    </div>

    <div class="wrapper row2">
        <div id="Background_pp" style="background-color: white; padding-right:20px;padding-left:20px">
            <br />
            <div id="heading" style="background-color: #FFC100 ; height: 45px">
                <h1>
                    <span style="color:Red; text-align:center;font-size: 30px;"> Privacy Policy </span>
                    <span style="font-style: italic; font-family: serif; color: #87412D;">Rapid Bill Pay</span>
                </h1> <br />
            </div> <!--heading -->
            <br />
            <p id="p_id_pp">
                <span id="span_id_pp"> Rapid Bill Pay Inc: </span>(referred to herein as the "Company," "we," "us" or like terms) has created this privacy statement ("Privacy Policy") in order to demonstrate our firm commitment to privacy. The following discloses our policies for information gathering and dissemination practices for our current and future online and mobile websites, platforms, services, applications, and networks owned or operated by the Company, including without limitation, www.Rapidbillpay.com and/or other sites or applications through which the Company currently or in the future provides services and/or technology (the “Site” or “Sites”). The information we collect is received by both the Company and the owner of the website through which you may have requested the Company’s services (the “Client”). You should contact the Client to determine the privacy policy, if any, that applies to the Client’s collection and use of such information. In no event, shall the Company be liable for the Client’s use or disclosure of such information.
            </p>

            <p id="p_id_pp">
                <span id="span_id_pp"> Collection and Use of Information: </span>We may collect or obtain certain information through the Sites. For End-Users, this information may include your name and contact information, gender, birth date, occupation and industry, shipping and billing information, credit card numbers and other payment information, behavior patterns, purchase history, and other information. For Clients, this information may include the Client’s name and contact information, the Client’s Web site information (name, URL, visitors per day, page views per month, description, categorization), payment information (check payee, SSN/Tax ID, bank information), and user comments. We will use contact information for business purposes only, such as to evaluate you and/or your company as a potential customer, and will store it on a secure network. We may use contact information to communicate with you and/or your company regarding products and services we believe may be of interest, whether offered by us or by our business partners.
            </p>

            <p id="p_id_pp">
                <span id="span_id_pp"> Aggregate Information: </span>We collect non-identifying and aggregate information to better design our website and services, and share the aggregate data with advertisers and other third parties. Each of the Clients has access to information specific only to that Client’s customers. Each Client will determine what it will do with the collected information; however, each Client has individually agreed to abide by this Privacy Policy and the Company’s Terms of Use.
            </p>

            <p id="p_id_pp">
                <span id="span_id_pp"> Notice is hereby</span> given that a Client such as a city may ask you to provide information that could be classified as a private or controlled record.  The city is requesting this information in order to assist in processing your payment.  Failure or refusal to provide this information may result in the city’s inability to process your payment. The city may share the information provided by you with other governmental entities.  If you have any concerns about disclosing any information to the city, please discuss your concerns with a city official prior to disclosing such information.
            </p>

            <p id="p_id_pp">
                <span id="span_id_pp">The Company will only send information about you to other companies when: </span>The Company will only send information about you to other companies when: 1) we have your consent to share the information, and/or 2) we need to share your information to provide the product or service you have requested. We may also release personally identifiable information when we believe release is appropriate to: 1) comply with the law, and/or 2) protect the rights, property or safety of the Company, our users, or others. This includes exchanging information with other companies and organizations for fraud protection and risk reduction.
            </p>
           
            <p id="p_id_pp">
                <span id="span_id_pp">When you visit the Site or send emails to us, </span>you consent to receive communications from us electronically. We will communicate with you by email or by posting notices on the Site. We may provide aggregate statistics about customers, sales, traffic patterns, and related site information to others, but these statistics will include no personally identifying information.
            </p>

            <p id="p_id_pp">
                <span id="span_id_pp">Except </span>as described in this “Collection and Use of Information” section, we do not share contact information with anyone.
            </p>

            <p id="p_id_pp">
                <span id="span_id_pp"> Cookies: </span>When you visit the Site, we send one or more cookies. A cookie is a small file containing information that uniquely identifies your browser. We use cookies to improve the quality of our service and your experience on the Site by storing your preferences and tracking user trends. Most browsers are initially set up to accept cookies, but you can reset your browser to refuse all cookies or to indicate when a cookie is being sent if you wish. Some Site features and services will not function properly if your cookies are disabled. We may also retain your IP address in order to administer the Site and to identify you in case of unauthorized uses or otherwise to protect our Sites, customers, and others. We also use such detail to gather anonymous demographic information.
            </p>

            <p id="p_id_pp">
                <span id="span_id_pp">Protection of Information:  </span>To prevent unauthorized access, maintain data accuracy, and ensure the appropriate use of information, we have put in place appropriate physical, electronic, and managerial procedures reasonably designed to safeguard and secure the information we collect online. We use TLS (Transport Layer Security) encryption to secure personal identification. However, no method of transmission over the Internet or method of electronic storage is 100% secure. Therefore, while we strive to use commercially reasonable means to protect your personal information, we cannot guarantee its absolute security. In addition, personnel who have access to our database are trained to maintain and secure all information. If you create an account on our Site, you must maintain the confidentiality of your account and password and restrict access to your computer. You agree to be responsible for all activities that occur under your account or password and agree to be responsible for all charges. We have the right to refuse service, terminate your account, or take other actions in our discretion. You agree to inform us of any unauthorized use and to take steps to prevent its further unauthorized use.
            </p>

            <p id="p_id_pp">
                <span id="span_id_pp">In the event </span>that your sensitive personal information is accessed by an unauthorized individual and the misuse of your information is reasonably possible, we will notify you of the unauthorized access unless a law enforcement agency believes that such notification may interfere with a criminal investigation. Notification of such an event may be given to you by e-mail, writing, or phone at our sole discretion.
            </p>

            <p id="p_id_pp">
                <span id="span_id_pp"> Third Party Links: </span>Our Site may provide links to third-party sites that are not operated by the Company. We are not responsible for the privacy policies or content of those sites and recommend that you check the relevant privacy policies of those sites to determine how your personal information will be used.
            </p>

            <p id="p_id_pp">
                <span id="span_id_pp">Children’s Online Privacy Protection: </span> Our Site is not specifically directed toward children, and we do not knowingly collect personal information from persons under the age of 13 on our Sites without parental consent. The Company does not allow children known to be under the age of thirteen (13) to register for our services. We may momentarily capture personally identifiable information for purposes of determining whether a user is over the age of thirteen (13) and thus qualifies to use our services. Where the user is under the age of thirteen (13), such information is automatically deleted. We are committed to protecting the privacy of children and abide by the Federal Trade Commission’s Children’s Online Privacy Protection Rule. Please visit www.ftc.gov/kidsprivacy for information from the Federal Trade Commission about protecting children’s privacy online.
            </p>

            <p id="p_id_pp">
                <span id="span_id_pp">Maintenance of Account Information/Opt-Out: </span> You may opt-out of receiving communications from us at any time by logging into your account and updating the desired information or by contacting us using the contact information provided below. Clients can access their personally identifiable information that the company collects online and maintains by logging in to their password-protected (SSL encrypted) account at https://www.Rapidbillpay.com and selecting “Organization Config” End-Users can access their information by logging in to their password-protected End-User account and selecting to update their “Account Settings” End-Users and Clients can also correct factual errors in their personally identifiable information by sending us a written request that credibly documents and explains the error. If you have submitted information on our site but do not currently have an account with us, you can access and correct the information that we collect and maintain by contacting us and requesting such information or correction.
            </p>


            <p id="p_id_pp">
                <span id="span_id_pp">To protect your privacy and security: </span> we will take reasonable steps to verify your identity before granting access or making corrections to your information.
            </p>

            <p id="p_id_pp">
                <span id="span_id_pp"> Do Not Track Requests: </span> When this Site receives Do Not Track signals and other similar mechanisms that provide consumers the ability to exercise choice regarding the collection of personal identifiable information, we honor those requests.
            </p>


            <p id="p_id_pp">
                <span id="span_id_pp">Contact Information: </span>If you have any questions regarding this Privacy Policy, the privacy practices of the Site or your dealings with the Site, please contact:
            </p>
            
            <p id="p_id_pp">
                Rapid Bill Pay <br />
                2018 I-10 West <br />
                San Antonio, TX 78216 <br />
                security@Rapidbillpay.com <br />
            </p>

            <p id="p_id_pp">
                <span id="span_id_pp">Changes to Privacy Policy: </span> We reserve the right, at our discretion, to change, modify, add, and/or remove portions of the Privacy Policy at any time. When we make changes to the Privacy Policy, we will post the changes on the Site and update the revision date at the bottom of the Privacy Policy. By continuing to access the Site after we have changed the Privacy Policy, you signify your acceptance of the changes. Accordingly, we encourage you to check the Privacy Policy to remain informed of any changes.
            </p>

            <p id="p_id_pp">
                <span id="span_id_pp">Effective Date: </span>January 25, 2017.  
            </p>


        </div> <!-- background_pp -->
    </div> <!-- wrapper2 -->
   
    
    <script>
        function notActive() {
            window.location = "default.aspx";
        }
    </script>










        </div>
    </form>
</body>
</html>
