<%@ Page Language="C#" AutoEventWireup="true" CodeFile="contactus.aspx.cs" Inherits="contactus" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>RapidBillPay </title>
    <link rel="stylesheet"
          type="text/css"
          href="RapidBillPay_CSS.css" />
</head>
<body onload="loadXMLDoc();" style="background-color:#FCF3CF">
    <form id="form1" runat="server">
        <div>
            <div class="wrapper row1" style="width: 100% ; padding-bottom: 20px ; padding-top:10px ;">
            <nav>
                    <div id="header1" style="width: 20%; float: left;"> <b> <a href="default.aspx"> Rapid Bill Pay </a> </b> </div>
                    <div id="header2" style="width: 55%; display: inline;">
                        <a href="aboutus.aspx">About Us</a> &emsp;&emsp;&emsp;&emsp;&emsp;
                        <a href="security.aspx">Security</a> &emsp;&emsp;&emsp;&emsp;&emsp;
                        <a href="contactus.aspx">Contact Us</a> &emsp;&emsp;&emsp;&emsp;&emsp;
                        <a href="faq.aspx">FAQ</a> &emsp;&emsp;&emsp;&emsp;&emsp;
                    </div>
            </nav>
        </div>

         <div class="wrapper row2" style="background-color:white; height: 240px; width:98% ; padding-left :2% ; margin:0px;">
            <table id="container" >
            </table>
        </div>

             <div id="messagebox">
        <table id="below"> 
            <tr id="detailsform1"> 
                <td colspan="3"> <b><i>Contact Rapid Bill Support Staff</i></b> </td>
            </tr>
            <tr id="detailsform2_tr"> 
                <td id="detailsform2_td1">
                  <!--  <input id="detailsform2_fn" type="text" name="FIrstName" placeholder="Enter First Name"> -->
               <asp:TextBox ID="detailsform2_fn" placeholder="Enter First Name" runat="server" > </asp:TextBox>
                    </td>
                <td id="detailsform2_td2">
                <!--  <input id="detailsform2_ln" type="text" name="FIrstName" placeholder="Enter Last Name"> -->
               <asp:TextBox ID="detailsform2_ln" placeholder="Enter Last Name" runat="server" > </asp:TextBox>
                </td>
                <td id="detailsform2_td3">
                       <!--   <input id="detailsform2_email" type="text" name="Email" placeholder="Enter Email Address"> -->
               <asp:TextBox ID="detailsform2_email" placeholder="Enter Email Address" runat="server" > </asp:TextBox>

                </td>
            </tr>
            <tr id="detailsform3_tr"> 
                <td id="detailsform3_td" colspan="3">
                   <!--  <textarea id="detailsform3_msg" name="message" rows="4" cols="12" placeholder="Type your message here..."></textarea>
                    -->
                       <asp:TextBox ID="detailsform3_msg" placeholder="Type your message here..." runat="server" Rows="4" Columns ="12"></asp:TextBox>
                    </td>
            </tr>

             <asp:RequiredFieldValidator  ID="fn" ValidationGroup="contactus"  runat="server"
                                        ErrorMessage="Please Enter ur firstname."
                                     Display="None" ControlToValidate="detailsform2_fn"></asp:RequiredFieldValidator> 
              <asp:RequiredFieldValidator  ID="ln" ValidationGroup="contactus"  runat="server"
                                        ErrorMessage="Please Enter ur Lastname."
                                     Display="None" ControlToValidate="detailsform2_ln"></asp:RequiredFieldValidator> 
              <asp:RequiredFieldValidator  ID="emailid" ValidationGroup="contactus"  runat="server"
                                          ErrorMessage="Please Enter ur email Address."
                                     Display="None" ControlToValidate="detailsform2_email"></asp:RequiredFieldValidator> 
               <asp:RequiredFieldValidator  ID="mesg" ValidationGroup="contactus"  runat="server"
                                        ErrorMessage="Please Enter your Message."
                                     Display="None" ControlToValidate="detailsform3_msg"></asp:RequiredFieldValidator> 
                                    



            <tr id="detailsform4_tr">
                <td id="detailsform4_td" colspan="3">
                  <!--  <input id="detailsform3_button" type="button" value="Submit your message to support staff" onclick="notActive()" />
          -->
                    <asp:Button ID="detailsform3_button"  ValidationGroup="contactus" Text="Submit your message to support staff" runat="server" OnClick="sendEmail"></asp:Button>

                    </td>
            </tr>
        </table>

    <asp:ValidationSummary ID="contactus_summary" runat="server" ShowMessageBox="True"
                                        ShowSummary="False" ValidationGroup="contactus" />





</div>

       <script>
     function loadXMLDoc() {
                        var xmlhttp = new XMLHttpRequest();
                        xmlhttp.onreadystatechange = function () {
                            if (this.readyState == 4 && this.status == 200) {
                                myFunction(this);
                            }
                        };
                        xmlhttp.open("GET", "contact_info.xml", true);
                        xmlhttp.send();
                    }

                    function myFunction(xml) {
                        var x, i, xmlDoc, table;
                        xmlDoc = xml.responseXML;

                        x = xmlDoc.getElementsByTagName("Info")

                        data = "<tr><td id = \"heads\"> Toll Free Phone Number </td> <td id = \"tails\"> :" + x[0].getElementsByTagName("toll_free_phone")[0].childNodes[0].nodeValue +
                                   "</td><td id= \"heads\">Direct Phone Number </td> <td id = \"tails\"> :" + x[0].getElementsByTagName("direct_phone")[0].childNodes[0].nodeValue + "</td></tr>" +

                               "<tr><td id = \"heads\"> Fax </td><td id= \"tails\">:" + x[0].getElementsByTagName("fax")[0].childNodes[0].nodeValue +
                                   "</td><td id = \"heads\"> Email </td><td id= \"tails\">: " + x[0].getElementsByTagName("email")[0].childNodes[0].nodeValue + "</td></tr>" +

                                "<tr><td id= \"heads\"> Address Line 1 </td><td id= \"tails\">:" + x[0].getElementsByTagName("address_line1")[0].childNodes[0].nodeValue +
                                  " </td><td id = \"heads\"> Address Line 2  </td><td id= \"tails\">:" + x[0].getElementsByTagName("address_line2")[0].childNodes[0].nodeValue + "</td></tr>" +

                                  "<tr><td id = \"heads\"> City </td><td id= \"tails\">:" + x[0].getElementsByTagName("city")[0].childNodes[0].nodeValue +
                                  "</td><td id= \"heads\"> State </td><td id= \"tails\">:" + x[0].getElementsByTagName("state")[0].childNodes[0].nodeValue + "</td></tr>" +

                                "<tr><td id= \"heads\"> Zip:</td><td id= \"tails\">:" + x[0].getElementsByTagName("zip")[0].childNodes[0].nodeValue + "</td></tr>";

                        document.getElementById("container").innerHTML = data;
                    }

    function notActive() {
        alert("Work in Progress");
       }

        </script>







        </div>
    </form>
</body>
</html>
