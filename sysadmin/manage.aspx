<%@ Page Language="C#" AutoEventWireup="true" CodeFile="manage.aspx.cs" Inherits="sysadmin_manage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title></title>
<link rel="Stylesheet" type="text/css" href ="Style/StyleSheet2.css" />
    <style type="text/css">
        #eWebEditor1
        {
            height: 88px;
            width: 364px;
        }
    </style>
</head>
<body  style="overflow:scroll; overflow-x:hidden">
<form id="form1" runat="server">
<div class="style1">
<ul id="ul">

<li class="style2">         
<asp:Label ID="Label5" runat="server" Text="姓名：" Height="15px" Width="50px" 
        Font-Size="Small"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server" Width="60px"></asp:TextBox>
<asp:Label ID="Label8" runat="server" Text="性别：" Height="15px" Width="50px" 
        Font-Size="Small"></asp:Label>
    <asp:DropDownList ID="ddlsex" runat="server">
        <asp:ListItem>男</asp:ListItem>
        <asp:ListItem>女</asp:ListItem>
    </asp:DropDownList>
<asp:Label ID="Label1" runat="server" Text="年龄：" Height="15px" Width="50px" 
        Font-Size="Small"></asp:Label>
    <asp:TextBox ID="tbage" runat="server" Width="38px"></asp:TextBox>
</li>

<li class="style3"><asp:Label ID="Label10" runat="server" Text="个人照片：" Width="80px" Height="15px" Font-Size="Small"></asp:Label></li>

<li class="style4"><asp:Image ID="Image2" runat="server" Height="110px" BorderStyle="None" Width="96px"/></li>

<li class="style5"><asp:Label ID="Label11" runat="server" Text="自我介绍：" Font-Size="Small"></asp:Label></li>

<li class="style6"><asp:TextBox ID="content1" runat="server" TextMode="MultiLine" Width="10px" style="DISPLAY:none"></asp:TextBox>
    <iframe id="eWebEditor1" 
        src="../eWebeditor/ewebeditor.htm?id=content1&style=coolblue" frameborder="0" 
        scrolling="no" height="200px" width="420px"></iframe>
    <asp:Button ID="Button1" runat="server" Text="修改" onclick="Button1_Click" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button2" runat="server" Text="返回" onclick="Button2_Click" />
    </li>

</ul>
</div>
</form>
</body>
</html>
