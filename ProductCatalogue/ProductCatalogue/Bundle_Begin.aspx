<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Bundle_Begin.aspx.cs" Inherits="ProductCatalogue.Bundle_Begin" %>

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
            height: 26px;
        }
        .style2
        {
            height: 23px;
        }
        .style3
        {
            height: 23px;
            width: 103px;
        }
        .style4
        {
            height: 23px;
            width: 280px;
        }
        .style5
        {
            height: 23px;
            width: 108px;
        }
        .style6
        {
            height: 23px;
            width: 150px;
        }
        .style7
        {
            height: 30px;
        }
        .style8
        {
            height: 20px;
        }
        .style9
        {
            height: 30px;
            width: 103px;
        }
        .style10
        {
            height: 30px;
            width: 280px;
        }
        .style11
        {
            height: 30px;
            width: 108px;
        }
        .style13
        {
            height: 30px;
            width: 150px;
        }
        .style14
        {
            height: 22px;
        }
        .style15
        {
            height: 32px;
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
    
        <table style="width:100%;">
            <tr>
                <td colspan="2">
                    <asp:Label ID="Label1" runat="server" Text="Bundle Name"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:TextBox class="vztext" ID="Bundle_Name" runat="server"></asp:TextBox>
                </td>
                <td colspan="2">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="Bundle_Name" ErrorMessage="*Bundle Name is mandatory" 
                        Font-Italic="True" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td colspan="2" class="style7">
                </td>
                <td colspan="2" class="style7">
                </td>
                <td colspan="2" class="style7">
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Label ID="Label2" runat="server" Text="Bundle Description"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:TextBox class="vztextarea" ID="Bundle_Desc" runat="server"></asp:TextBox>
                </td>
                <td colspan="2">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="Bundle_Desc" ErrorMessage="*Description is mandatory" 
                        Font-Italic="True" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td colspan="2" class="style7">
                </td>
                <td colspan="2" class="style7">
                </td>
                <td colspan="2" class="style7">
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Label ID="Label8" runat="server" 
                        Text="State Where Bundle Is To Be Created"></asp:Label>
                </td>
                <td colspan="4">
                    <asp:DropDownList class="vztext" ID="Drop_State" runat="server" AutoPostBack="True" 
                        onselectedindexchanged="Drop_State_SelectedIndexChanged">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td colspan="2" class="style7">
                </td>
                <td colspan="4" class="style7">
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Label ID="Label3" runat="server" 
                        Text="Select the Bundle From The Below DropDown List"></asp:Label>
                </td>
                <td colspan="2">
                    &nbsp;</td>
                <td colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="2" class="style8">
                </td>
                <td colspan="2" class="style8">
                    </td>
                <td colspan="2" class="style8">
                    </td>
            </tr>
            <tr>
                <td class="style3">
                    <asp:Label ID="Label9" runat="server" Text="TV Services"></asp:Label>
                </td>
                <td class="style4">
                    <asp:DropDownList class="vztext" ID="DropDownList1" runat="server" AutoPostBack="True" 
                        style="margin-left: 0px">
                    </asp:DropDownList>
                </td>
                <td class="style5">
                    <asp:Label ID="Label10" runat="server" Text="Data Services"></asp:Label>
                </td>
                <td class="style2">
                    <asp:DropDownList class="vztext" ID="DropDownList2" runat="server" AutoPostBack="True">
                    </asp:DropDownList>
                </td>
                <td class="style6">
                    <asp:Label ID="Label11" runat="server" Text="Voice Services"></asp:Label>
                </td>
                <td class="style2">
                    <asp:DropDownList class="vztext" ID="DropDownList3"  runat="server" AutoPostBack="True">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style9">
                </td>
                <td class="style10">
                </td>
                <td class="style11">
                </td>
                <td class="style7">
                </td>
                <td class="style13">
                </td>
                <td class="style7">
                </td>
            </tr>
            <tr>
                <td colspan="2" class="style14">
                    <asp:Label ID="Label4" runat="server" Text="Bundle Effective Date"></asp:Label>
                </td>
                <td colspan="2" class="style14">
                    <asp:TextBox class="vztext" ID="Bundle_Eff_Date" type="date" runat="server">YYYY-MM-DD</asp:TextBox>
                </td>
                <td colspan="2" class="style14">
                    </td>
            </tr>
            <tr>
                <td colspan="2" class="style7">
                </td>
                <td colspan="2" class="style7">
                </td>
                <td colspan="2" class="style7">
                    </td>
            </tr>
            <tr>
                <td class="style1" colspan="2">
                    <asp:Label ID="Label5" runat="server" Text="Bundle End Date"></asp:Label>
                </td>
                <td class="style1" colspan="2">
                    <asp:TextBox class="vztext" ID="Bundle_End_Date" type="date" runat="server">YYYY-MM-DD</asp:TextBox>
                </td>
                <td class="style1" colspan="2">
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="Bundle_Eff_Date" 
                        ControlToValidate="Bundle_End_Date" ErrorMessage="End Date&gt;Effective Date" 
                        Operator="GreaterThan" Type="Date" ForeColor="Red"></asp:CompareValidator>
                    </td>
            </tr>
            <tr>
                <td class="style15" colspan="2">
                </td>
                <td class="style15" colspan="2">
                </td>
                <td class="style15" colspan="2">
                    </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Label ID="Label6" runat="server" Text="Prod"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:DropDownList class="vztext" ID="Prod" runat="server">
                        <asp:ListItem Value="Y">Select</asp:ListItem>
                        <asp:ListItem>Y</asp:ListItem>
                        <asp:ListItem Value="Y">N</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="2" class="style7">
                </td>
                <td colspan="2" class="style7">
                </td>
                <td colspan="2" class="style7">
                    </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Label ID="Label7" runat="server" Text="Discount To Be Offered"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:TextBox class="vztext" ID="Bundle_Discount" runat="server"></asp:TextBox>
                </td>
                <td colspan="2">
                    <asp:RangeValidator ID="RangeValidator1" runat="server" 
                        ControlToValidate="Bundle_Discount" 
                        ErrorMessage="*Please enter number less than 80" Font-Italic="True" 
                        MaximumValue="80" MinimumValue="0" ForeColor="Red"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td colspan="2" class="style7">
                </td>
                <td colspan="2" class="style7">
                </td>
                <td colspan="2" class="style7">
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    &nbsp;</td>
                <td colspan="2">
                    <asp:Button class="vzbtnmedium" ID="Create_Bundle" runat="server" onclick="Button1_Click" 
                        Text="Create Bundle" />
                </td>
                <td colspan="2">
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>

