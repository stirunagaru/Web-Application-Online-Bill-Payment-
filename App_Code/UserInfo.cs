using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for UserInfo
/// </summary>
public class UserInfo
{
    String stateOrProvince;
    String streetAddress;
    String zipCode;
    String firstName;
    String lastName;
    String homePhone;
    String cellPhone;
    String emailAddress;
    String password;
    String securityQuestion;
    String securityQuestionAnswer;
    List<BillPayEntry> myBillPayments;

     public String StateOrProvince  { get { return stateOrProvince; } set { stateOrProvince = value; } }
     public String StreetAddress {   get { return streetAddress; }   set { streetAddress = value; }    }
     public String ZipCode {   get { return zipCode; }   set { zipCode = value; }    }
     public String FirstName {   get { return firstName; }   set { firstName = value; }    }
     public String LastName    {   get { return lastName; }   set { lastName = value; }    }
     public String Homephone   {   get { return homePhone; }   set { homePhone = value; }    }
     public String  CellPhone   {   get { return cellPhone ; }   set { cellPhone = value; }    }
     public String  EmailAddress   {   get { return emailAddress; }   set { emailAddress = value; }    }
     public String  Password  {   get { return password; }   set { password  = value; }    }
     public String SecurityQuestion {   get { return securityQuestion; }   set { securityQuestion = value; }    }
     public String SecurityQuestionAnswer {   get { return securityQuestionAnswer; }   set { securityQuestionAnswer = value; }    }
     public List<BillPayEntry> MyBillPayments { get { return myBillPayments; } set { myBillPayments = value; } }


}