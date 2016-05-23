<%@ Page Language="C#" AutoEventWireup="true" CodeFile="zwjs.aspx.cs" Inherits="zwjs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title></title>
<link rel="Stylesheet" type="text/css" href ="Style/StyleSheet2.css" />
</head>
<body style="overflow:scroll; overflow-x:hidden">
<form id="form1" runat="server">
<div class="style1">
<ul id="ul">

<li class="style2">         
<asp:Label ID="Label5" runat="server" Text="姓名：" Height="15px" Width="50px" 
        Font-Size="Small"></asp:Label>
<asp:Label ID="lbtitle" runat="server" Text="Label" Height="15px" Width="50px" 
        Font-Size="Small"></asp:Label>
<asp:Label ID="Label8" runat="server" Text="性别：" Height="15px" Width="50px" 
        Font-Size="Small"></asp:Label>
<asp:Label ID="lbdate" runat="server" Text="Label" Height="15px" Width="50px" 
        Font-Size="Small"></asp:Label>
<asp:Label ID="Label1" runat="server" Text="年龄：" Height="15px" Width="50px" 
        Font-Size="Small"></asp:Label>
<asp:Label ID="lbnl" runat="server" Text="Label" Height="15px" Width="50px" 
        Font-Size="Small"></asp:Label>
</li>

<li class="style3"><asp:Label ID="Label10" runat="server" Text="个人照片：" Width="80px" Height="15px" Font-Size="Small"></asp:Label></li>

<li class="style4"><asp:Image ID="Image2" runat="server" Height="110px" BorderStyle="None" Width="96px"/></li>

<li class="style5"><asp:Label ID="Label11" runat="server" Text="自我介绍：" Font-Size="Small"></asp:Label></li>

<li class="style6"><asp:Label ID="lbzwjs" runat="server" Text="Label" Font-Size="Small"></asp:Label></li>

</ul>
</div>
</form>
</body>
</html>
