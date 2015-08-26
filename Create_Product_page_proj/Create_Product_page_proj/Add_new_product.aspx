<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Add_new_product.aspx.cs"
    Inherits="Create_Product_page_proj.Add_new_product" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
            width: 64px;
        }
    </style>

    <script src="datetimepicker_css.js"></script>


</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table style="width: 100%;" cellspacing="10">
            <tr>
                <td class="style1" colspan="3">
                    <asp:Label ID="Label8" runat="server" ForeColor="#0066FF" 
                        Text="All the fields marked with * are required!"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label9" runat="server" ForeColor="Red" Text="*"></asp:Label>
                    <asp:Label ID="Label7" runat="server" Text="Product ID"></asp:Label>
&nbsp;</td>
                <td class="style2">
                    <asp:TextBox ID="txtProductID" runat="server" ValidationGroup="RequiredField"></asp:TextBox>
                </td>
                <td class="style3">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtProductID" Display="None" ErrorMessage="Field required!" 
                        ValidationGroup="RequiredField"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label10" runat="server" ForeColor="Red" Text="*"></asp:Label>
                    <asp:Label ID="Label1" runat="server" Text="Product Name"></asp:Label>
                </td>
                <td class="style2">
                    <asp:TextBox ID="txtProductName" runat="server" Width="148px" 
                        ValidationGroup="RequiredField"></asp:TextBox>
                </td>
                <td class="style3">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label2" runat="server" Text="Description"></asp:Label>
                </td>
                <td class="style2">
                    <asp:TextBox ID="txtDescription" runat="server" Width="191px" Height="78px" 
                        TextMode="MultiLine"></asp:TextBox>
                </td>
                <td class="style3">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label6" runat="server" Text="Service Type"></asp:Label>
                </td>
                <td class="style2">
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
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label3" runat="server" Text="Effective Date"></asp:Label>
                </td>
                <td class="style2">
                    <asp:TextBox ID="txtEffDate" runat="server" Width="148px"></asp:TextBox>
                    <img src="Images/cal.gif" onclick="javascript:NewCssCal('txtEffDate')" style="cursor:pointer"/>
                </td>
                <td class="style3">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label4" runat="server" Text="End Date"></asp:Label>
                </td>
                <td class="style2">
                    <asp:TextBox ID="txtEndDate" runat="server" Width="148px"></asp:TextBox>
                    <img src="Images/cal.gif" onclick="javascript:NewCssCal('txtEndDate')" style="cursor:pointer"/>
                </td>
                <td class="style3">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label5" runat="server" Text="States"></asp:Label>
                </td>
                <td class="style2">
                    <asp:DropDownList ID="ddlStates" runat="server" AutoPostBack="True" 
                        onselectedindexchanged="ddlStates_SelectedIndexChanged">
                    </asp:DropDownList>
                </td>
                <td class="style3">
                    <asp:Label ID="Label11" runat="server" ForeColor="Red" Text="*"></asp:Label>
                    <asp:Label ID="lblCost" runat="server" Text="Cost"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtCost" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Button ID="btnAddProduct" runat="server" onclick="btnAddProduct_Click" 
                        Text="Add " />
                </td>
                <td class="style2">
                    &nbsp;
                </td>
                <td class="style3">
                    &nbsp;
                </td>
            </tr>
        </table>
    </div>
    <asp:GridView ID="GridView1" runat="server">
    </asp:GridView>
    </form>
</body>
</html>
