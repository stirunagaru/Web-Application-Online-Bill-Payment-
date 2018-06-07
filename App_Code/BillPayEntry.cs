using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for BillPayEntry
/// </summary>
public class BillPayEntry
{
    String emailAddress;
    String paymentTransactionDate;
    String recipientBusinessName;
    String recipientBusinessAddress;
    String amountPaid;
    String paymentDetails;
    int status; /* 0 payment not completed, 1 payment completed */ 
    
    public String Emailaddress { get { return emailAddress; } set { emailAddress = value; } }
    public String PaymentTransactionDate { get { return paymentTransactionDate; } set { paymentTransactionDate = value; } }
    public String RecipientBusinessName { get { return recipientBusinessName; } set { recipientBusinessName = value; } }
    public String RecipientBusinessAddress { get { return recipientBusinessAddress; } set { recipientBusinessAddress = value; } }
    public String AmountPaid { get { return amountPaid; } set { amountPaid = value; } }
    public String PaymentDetails { get { return paymentDetails; } set { paymentDetails = value; } }
    public int Status
    {
        get { return status; }
        set { status = value; }
    }
}