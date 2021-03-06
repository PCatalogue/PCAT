﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ModifyProducts.aspx.cs" Inherits="ProductCatalogue.ModifyProducts" %>

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
        .style3
        {
            width: 173px;
        }
        .style4
        {
            width: 268px;
        }
    </style>

    
  <link href="Styles/styles.css" rel="stylesheet" type="text/css" />
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
                <td class="style1" colspan="5">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:Label ID="Label8" runat="server" Text="Modify Product" class="vzh2"></asp:Label>
                </td>
            </tr>
            <tr>

                <td class="style1" colspan="5">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td class="style1">
                    <asp:Label ID="Label7" runat="server" Text="Product ID"></asp:Label>
                </td>
                <td class="style2" colspan="2">
                    <asp:TextBox ID="txtProductID" runat="server" ValidationGroup="RequiredField" 
                        ReadOnly="True" Width="156px"></asp:TextBox>
                </td>
                <td class="style3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td class="style1">
                    &nbsp;</td>
                <td class="style2" colspan="2">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td class="style1">
                    <asp:Label ID="Label1" runat="server" Text="Product Name"></asp:Label>
                </td>
                <td class="style2" colspan="2">
                    <asp:TextBox ID="txtProductName" runat="server" Width="154px" 
                        ValidationGroup="RequiredField"></asp:TextBox>
                </td>
                <td class="style3">
                    &nbsp;<asp:RequiredFieldValidator 
                        ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtProductName" 
                        ErrorMessage="Please Enter Product Name" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td class="style1">
                    &nbsp;</td>
                <td class="style2" colspan="2">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td class="style1">
                    <asp:Label ID="Label2" runat="server" Text="Description"></asp:Label>
                </td>
                <td class="style2" colspan="2">
                    <asp:TextBox ID="txtDescription" runat="server" Width="191px" Height="78px" 
                        TextMode="MultiLine"></asp:TextBox>
                </td>
                <td class="style3">
                    &nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="txtDescription" ErrorMessage="Please Enter Description" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td class="style1">
                    &nbsp;</td>
                <td class="style2" colspan="2">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td class="style1">
                    <asp:Label ID="Label6" runat="server" Text="Service Type"></asp:Label>
                </td>
                <td class="style2" colspan="2">
                    <asp:DropDownList ID="ddlServiceType" runat="server" AutoPostBack="True" 
                        onselectedindexchanged="ddlServiceType_SelectedIndexChanged">
                        <asp:ListItem Value="3">Wireline - FIOS TV Service</asp:ListItem>
                        <asp:ListItem Value="2">Wireline - FIOS Data Service</asp:ListItem>
                        <asp:ListItem Value="1">Wireline - FIOS Voice Service</asp:ListItem>
                        <asp:ListItem Value="4">Wireline Bundles</asp:ListItem>
                        <asp:ListItem Value="5">Wireless Service</asp:ListItem>
                        <asp:ListItem Value="6">Enterprise Service</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="style3">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="ddlServiceType" 
                        ErrorMessage="Please Enter Service Type" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td class="style1">
                    &nbsp;</td>
                <td class="style2" colspan="2">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td class="style1">
                    <asp:Label ID="Label3" runat="server" Text="Effective Date"></asp:Label>
                </td>
                <td class="style2" colspan="2">
                    <asp:TextBox ID="txtEffDate" runat="server" type="date"></asp:TextBox>
                   
                </td>
                <td class="style3">
                    &nbsp;<asp:RequiredFieldValidator 
                        ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtEffDate" 
                        ErrorMessage="Please Enter Effective Date" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<br />
                    <asp:CompareValidator ID="CompareValidator2" runat="server" 
                        ControlToValidate="txtEffDate" ErrorMessage="Invalid Date !" 
                        Operator="DataTypeCheck" Type="Date" ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td class="style1">
                    &nbsp;</td>
                <td class="style2" colspan="2">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td class="style1">
                    <asp:Label ID="Label4" runat="server" Text="End Date"></asp:Label>
                </td>
                <td class="style2" colspan="2">
                    <asp:TextBox ID="txtEndDate" runat="server" type="date"></asp:TextBox>
                   
                </td>
                <td class="style3">
                    &nbsp;<asp:RequiredFieldValidator 
                        ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtEndDate" 
                        ErrorMessage="Please Enter End Date" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:CompareValidator ID="CompareValidator3" runat="server" 
                        ControlToValidate="txtEndDate" ErrorMessage="Invalid Date !" 
                        Operator="DataTypeCheck" Type="Date" ForeColor="Red"></asp:CompareValidator>
                    <br />
&nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtEffDate" 
                        ControlToValidate="txtEndDate" ErrorMessage="End Date&gt;Effective Date" 
                        Operator="GreaterThan" Type="Date" ForeColor="Red"></asp:CompareValidator>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td class="style1">
                    &nbsp;</td>
                <td class="style2" colspan="2">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td class="style1">
                    &nbsp;State and Zipcode</td>
                <td class="style2" colspan="2">
                    <asp:GridView ID="Show" runat="server" AutoGenerateColumns="False" 
                        onrowcommand="Show_RowCommand">
                        <Columns>
                            <asp:BoundField DataField="State_CD" HeaderText="State Code" 
                                SortExpression="State_CD" />
                            <asp:BoundField DataField="ZipCode" HeaderText="Zip Code" 
                                SortExpression="ZipCode" />
                            <asp:ButtonField CommandName="Select" Text="Delete" />
                        </Columns>
                    </asp:GridView>
                </td>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td class="style1">
                    &nbsp;</td>
                <td class="style2" colspan="2">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td class="style1">
                    &nbsp;</td>
                <td class="style2">
                    <asp:DropDownList ID="ddstate" runat="server" AutoPostBack="True" 
                        AppendDataBoundItems="True" 
                        onselectedindexchanged="ddstate_SelectedIndexChanged">
                    </asp:DropDownList>
                    <asp:DropDownList ID="ddcity" runat="server" AutoPostBack="True" 
                        style="margin-left: 21px" AppendDataBoundItems="True">
                    </asp:DropDownList>
                </td>
                <td class="style2">
                    <asp:Button ID="Button1" runat="server" Text="Add State &amp; ZIP Code" 
                        class="vzbtn1xsmall" Height="48px" 
                        onclick="Button1_Click" />
                </td>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td class="style1">
                    &nbsp;</td>
                <td class="style2" colspan="2">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td class="style1">
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button 
                        ID="Save" runat="server" 
                        Text="Save" onclick="btnSaveProduct_Click" Width="93px" class="vzbtn" />
                    &nbsp;&nbsp;&nbsp;
                </td>
                <td class="style2">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>


