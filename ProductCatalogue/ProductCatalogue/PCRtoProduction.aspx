<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PCRtoProduction.aspx.cs" Inherits="ProductCatalogue.PCRtoProduction" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
   <link href="Styles/styles.css" rel="stylesheet" type="text/css" />
    <link href="Styles/theme.css" rel="stylesheet" type="text/css" />
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <link href="Styles/styles.css" rel="stylesheet" type="text/css" />
 <link href="Styles/styles.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
        }
        .style2
        {
            width: 299px;
        }
        .style4
        {
            width: 48px;
        }
        .style5
        {
            width: 105px;
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
        <table style="width: 126%; height: 263px;">
            <tr>
                <td class="vzh2" colspan="3">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;PCR To Production</td>
            </tr>
            <tr>
                <td class="style5">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                <td class="style4">
                    <asp:Label ID="Label2" runat="server" Text="Title" class="vzh4"></asp:Label>
                </td>
                <td class="style2">
                    &nbsp;<asp:DropDownList class="vztext" ID="ddtitle" runat="server" style="margin-left: 0px">
                    </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="ddtitle" ErrorMessage="Please Select Title" 
                        Font-Italic="True" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style1" colspan="2">
                    &nbsp;</td>
                <td class="style2">
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                        style="margin-left: 0px" Text="Move to Production" Width="197px" 
                        class="vzbtnmedium" />
                </td>
            </tr>
        </table>
    </center>
    </div>
    </form>
</body>
</html>
