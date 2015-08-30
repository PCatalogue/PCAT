


 <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewPCR.aspx.cs" Inherits="ProductCatalogue.NewPCR" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
    <link href="Styles/styles.css" rel="stylesheet" type="text/css" />
    <link href="Styles/theme.css" rel="stylesheet" type="text/css" />
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <link href="Styles/styles.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
        }
        .style2
        {
            width: 299px;
        }
        .style5
        {
            width: 95px;
        }
        .style6
        {
            width: 24px;
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
     <center>
        <table style="width: 100%; height: 263px;">
            <tr>
                <td class="vzh2" colspan="3">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    New Product Change Request</td>

                  
            </tr>
            
            <tr>
                <td class="style5">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                <td class="v2h3">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label2" runat="server" Text="Title"></asp:Label>
                </td>
                <td class="style2">
                    <asp:TextBox ID="txttitle" runat="server" Width="206px" 
                        style="margin-left: 3px" class=""></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txttitle" ErrorMessage="Please Enter Title" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style5">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td class="style6">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Service&nbsp;&nbsp; 
                </td>
                <td class="style2">
                    <asp:DropDownList ID="ddservices" runat="server" Height="39px" 
                        onselectedindexchanged="ddservices_SelectedIndexChanged" Width="213px" 
                        style="margin-left: 4px">
                        <asp:ListItem Value="3">Wireline-FIOS TV Service</asp:ListItem>
                        <asp:ListItem Value="2">Wireline-FIOS Data Service</asp:ListItem>
                        <asp:ListItem Value="1">Wireline-FIOS Voice Service</asp:ListItem>
                     <%--   <asp:ListItem Value="4">Wireline Bundles</asp:ListItem>--%>
                        <asp:ListItem Value="5">Wireless Service</asp:ListItem>
                        <asp:ListItem Value="6">Enterprise Services</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="ddservices" 
                        ErrorMessage="Please Enter Services" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style1" colspan="2">
                    &nbsp;</td>
                <td class="style2">
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                        style="margin-left: 0px" Text="Submit" Width="123px" class="vzbtnsmall" />
                </td>
            </tr>
            
        </table>
    </center>
    </div>
    </form>
</body>
</html>
