<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Show_Products.aspx.cs" Inherits="ProductCatalogue.Show_Products" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

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
        {            width: 275px;
        }
        .style2
        {
            width: 904px;
        }
        .style3
        {
            width: 906px;
        }
    </style>
</head>
<body style="width: 1080px; margin-right: 122px;">
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
    <div align="center">
    <br />
    <br />
     
     <div style="width: 852px">
         <table style="width:100%;">
             <tr>
                 <td class="style2">
        <asp:TextBox ID="txtsearch" runat="server" class="vztext" style="margin-bottom: 0px"></asp:TextBox>
                 </td>
                 <td class="style3">
        <asp:Button ID="Button2" runat="server" Height="32px" 
            style="margin-left: 0px; margin-top: 0px" Text="Search" class="vz_btn1" 
            onclick="Button2_Click" />
                 </td>
                 <td>
                     &nbsp;</td>
             </tr>
         </table>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;
        <div align="center">
         <table style="width: 86%;">
             <tr>
                 <td class="style1">
            
                &nbsp;&nbsp;&nbsp;&nbsp;
            
                <asp:Button ID="Button3" runat="server" Text="View Bundle" class="vzbtn" 
                    style="margin-left: 0px; margin-top: 5px;" Width="130px" 
                         onclick="Button3_Click1"/>
            
            &nbsp; </td>

                     
            <td>
                <asp:Button ID="Button4" runat="server" Text="Add Bundle" Width="130px"  
                    class="vzbtn" onclick="Button4_Click1" style="margin-left: 4px; margin-top: 5px;" 
                     />
            </td>
            &nbsp;&nbsp;&nbsp;
            <td>
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
            style="margin-left: 4px; margin-top: 5px" Text="Add Product" 
            Width="130px" Height="44px" class="vzbtn"/>
            
            </td>



             </tr>
         </table>
        
       

    </div>
        &nbsp;&nbsp;&nbsp;&nbsp;
    
        <asp:GridView class="vztable" ID="GridView1" runat="server" AutoGenerateColumns="False" 
            Height="223px" onselectedindexchanged="GridView1_SelectedIndexChanged" 
            Width="16px" style="margin-top: 0px; margin-left: 0px; margin-right: 0px;" CellPadding="4" 
            ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:HyperLinkField DataNavigateUrlFields="Product_ID" 
                    DataNavigateUrlFormatString="ModifyProducts.aspx?V1={0}" 
                    HeaderText="Click   " Text="Modify" />
                <asp:HyperLinkField DataNavigateUrlFields="Product_ID" 
                    DataNavigateUrlFormatString="AddRates.aspx?V1={0}" 
                    HeaderText="Click  " Text="Add Rates" />
                <asp:BoundField DataField="Product_ID" HeaderText="Product_ID" 
                    SortExpression="Product_ID" />
                <asp:BoundField DataField="Product_Name" HeaderText="Product_Name" 
                    SortExpression="Product_Name" />
                <asp:BoundField DataField="Product_Desc" HeaderText="Product_Desc" 
                    SortExpression="Product_Desc" />
                <asp:BoundField DataField="Product_Eff_Date" HeaderText="Product_Eff_Date" 
                    SortExpression="Product_Eff_Date" />
                <asp:BoundField DataField="Service_ID" HeaderText="Service_ID" 
                    SortExpression="Service_ID" />
                <asp:BoundField DataField="Product_End_Date" HeaderText="Product_End_Date" 
                    SortExpression="Product_End_Date" />
                <asp:BoundField DataField="PROD" HeaderText="Status" SortExpression="PROD" />
            </Columns>
                   <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                   </asp:GridView>
    </div>
    </div>
    </form>
</body>
</html>
