<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddRates.aspx.cs" Inherits="ProductCatalogue.AddRates" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
 <link href="Styles/styles.css" rel="stylesheet" type="text/css" />
    <link href="Styles/theme.css" rel="stylesheet" type="text/css" />
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <link href="Styles/styles.css" rel="stylesheet" type="text/css" />
 <link href="Styles/styles.css" rel="stylesheet" type="text/css" />
    <title></title>

     
    <style type="text/css">
        .style1
        {
        }
        .style2
        {
            width: 203px;
        }
        .style4
        {
            width: 178px;
        }
        .style6
        {
            width: 272px;
        }
        .style7
        {
            width: 178px;
            height: 50px;
        }
        .style8
        {
            width: 203px;
            height: 50px;
        }
        .style9
        {
            width: 272px;
            height: 50px;
        }
        .style10
        {
            width: 178px;
            height: 34px;
        }
        .style11
        {
            width: 203px;
            height: 34px;
        }
        .style12
        {
            width: 272px;
            height: 34px;
        }
        .style13
        {
            width: 178px;
            height: 30px;
        }
        .style14
        {
            width: 203px;
            height: 30px;
        }
        .style15
        {
            width: 272px;
            height: 30px;
        }
        .style16
        {
            height: 30px;
        }
    </style>

    


</head>
<body>
    <form id="form1" runat="server">
    <nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
     
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        
        
        <li><a href="PCRtoProduction.aspx">View PCR</a></li>
        <li><a href="NewPCR.aspx">Create PCR</a></li>
      </ul>
      
    </div>
  </div>
 </nav>
    <div>
     &nbsp;</div>
    <div>
        <table style="width: 100%;" cellspacing="10">
            <tr>
                <td class="style1" colspan="4">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="Label8" runat="server" Text="Add Rates" class="vzh2"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style10">
&nbsp;</td>
                <td class="style10">
                    <asp:Label ID="Label7" runat="server" Text="Product ID"  class="vz-standard-font"></asp:Label>
                </td>
                <td class="style11">
                    <asp:TextBox Class="vztext" ID="txtProductID" runat="server" ValidationGroup="RequiredField" 
                        Width="191px" Enabled="False" ></asp:TextBox>
                </td>
                <td class="style12">
                    </td>
            </tr>
            <tr>
                <td class="style13">
                    </td>
                <td class="style13">
                    </td>
                <td class="style14">
                </td>
                <td class="style15">
                    </td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td class="style4">
                    <asp:Label ID="Label12" runat="server" Text="Product Name"></asp:Label>
                </td>
                <td class="style2">
                    <asp:TextBox class="vztext" ID="txtProductName" runat="server" Width="189px" 
                        ValidationGroup="RequiredField" Enabled="False" ></asp:TextBox>
                </td>
                <td class="style6">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style13">
                </td>
                <td class="style13">
                </td>
                <td class="style14">
                </td>
                <td class="style15">
                    </td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td class="style4">
                    <asp:Label ID="Label3" runat="server" Text="Effective Date" class="vz-standard-font"></asp:Label>
                </td>
                <td class="style2">
                    <asp:TextBox Class="vztext" ID="txtEffDate" runat="server" type="date" Width="186px">DD-MM-YY</asp:TextBox>
                   
                </td>
                <td class="style6">
                    &nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="txtEffDate" ErrorMessage="Please Enter Date" 
                        Font-Italic="True" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:CompareValidator ID="CompareValidator5" runat="server" 
                        ControlToValidate="txtEffDate" ErrorMessage="Invalid Date!" 
                        Operator="DataTypeCheck" Type="Date" Font-Italic="True" ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="style13">
                </td>
                <td class="style13">
                </td>
                <td class="style14">
                   
                </td>
                <td class="style15">
                </td>
            </tr>
            <tr>
                <td class="style7">
                    &nbsp;</td>
                <td class="style7">
                    <asp:Label ID="Label4" runat="server" Text="End Date" class="vz-standard-font"></asp:Label>
                </td>
                <td class="style8">
                    <asp:TextBox  Class="vztext" ID="txtEndDate" runat="server" type="date" Width="184px">DD-MM-YY</asp:TextBox>
                   
                </td>
                <td class="style9">
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="txtEndDate" ErrorMessage="Please Enter Date" 
                        Font-Italic="True" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<br />
                    <asp:CompareValidator ID="CompareValidator6" runat="server" 
                        ControlToValidate="txtEndDate" ErrorMessage="Invalid Date !" 
                        Operator="DataTypeCheck" Type="Date" Font-Italic="True" ForeColor="Red"></asp:CompareValidator>
                    <br />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="txtEffDate" ControlToValidate="txtEndDate" 
                        ErrorMessage="End Date&gt;Effective Date" Operator="GreaterThan" 
                        Type="Date" Font-Italic="True" ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="style13">
                </td>
                <td class="style13">
                </td>
                <td class="style14">
                   
                </td>
                <td class="style15">
                </td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td class="style4">
                    <asp:Label ID="Label9" runat="server" Text="Rate Amount" class="vz-standard-font"></asp:Label>
                </td>
                <td class="style2">
                    <asp:TextBox Class="vztext" ID="txtamount" runat="server" Height="25px" Width="185px"></asp:TextBox>
                </td>
                <td class="style6">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ControlToValidate="txtamount" ErrorMessage="Please Enter Amount" 
                        Font-Italic="True" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:CompareValidator ID="CompareValidator3" runat="server" 
                        ControlToValidate="txtamount" ErrorMessage="Please enter a number" 
                        Operator="DataTypeCheck" Type="Integer" Font-Italic="True" ForeColor="Red"></asp:CompareValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style13">
                </td>
                <td class="style13">
                </td>
                <td class="style14">
                </td>
                <td class="style15">
                </td>
                <td class="style16">
                    </td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td class="style4">
                    <asp:Label ID="Label10" runat="server" Text="State" class="vz-standard-font"></asp:Label>
                </td>
                <td class="style2">
                    <asp:DropDownList  Class="vztext" ID="ddstate" runat="server" AutoPostBack="True" Width="182px">
                    </asp:DropDownList>
                </td>
                <td class="style6">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                        ControlToValidate="ddstate" ErrorMessage="Please Enter State" 
                        Font-Italic="True" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style13">
                </td>
                <td class="style13">
                </td>
                <td class="style14">
                </td>
                <td class="style15">
                </td>
                <td class="style16">
                    </td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td class="style4">
                    <asp:Label ID="Label11" runat="server" Text="Discount" class="vz-standard-font"></asp:Label>
                </td>
                <td class="style2">
                    <asp:TextBox  Class="vztext" ID="txtDiscount" runat="server" Width="179px"></asp:TextBox>
                </td>
                <td class="style6">
                    <asp:CompareValidator ID="CompareValidator2" runat="server" 
                        ControlToValidate="txtDiscount" ErrorMessage="Please enter a number&lt;100" 
                        Operator="LessThan" Type="Integer" ValueToCompare="100" Font-Italic="True" 
                        ForeColor="Red"></asp:CompareValidator>
                    <br />
                    <asp:CompareValidator ID="CompareValidator4" runat="server" 
                        ControlToValidate="txtDiscount" ErrorMessage="Please enter a number" 
                        Operator="DataTypeCheck" Type="Integer" Font-Italic="True" ForeColor="Red"></asp:CompareValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style13">
                </td>
                <td class="style13">
                </td>
                <td class="style14">
                </td>
                <td class="style15">
                </td>
                <td class="style16">
                    </td>
            </tr>
            <tr>
                <td class="style4" colspan="2">
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;
                    <asp:Button ID="btnAddProduct" runat="server" 
                        Text="Add " style="margin-left: 34px;" onclick="btnAddRates_Click" 
                        Width="90px" class="vzbtn"/>
                </td>
                <td class="style6">
                    &nbsp;
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>

