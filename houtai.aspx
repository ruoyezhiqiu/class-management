<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="houtai.aspx.cs" Inherits="houtai" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>学生后台管理系统</title>
<link rel="Stylesheet" type="text/css" href ="Style/StyleSheet4.css" />
</head>
<body  style="margin:0px auto; width:1000px; font-size:small">
<form id="form1" runat="server">
    <div>
    <table>
    <tr><td colspan="2" style="background-repeat: no-repeat; background-image: url('Img/ht0_1.jpg');"  class="style1"> </td></tr>
       <tr><td class="style2"><asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetShareTop" TypeName="Class1"></asp:ObjectDataSource>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
            DataSourceID="ObjectDataSource1" AllowPaging="True" AllowSorting="True" 
            Font-Underline="False" Width="474px" Height="273px" style="margin-top: 0px">
            <AlternatingRowStyle Font-Size="Small" Font-Overline="False" 
                Font-Strikeout="False" Wrap="True" Font-Underline="False" />
            <Columns>
                <asp:BoundField DataField="name" HeaderText="姓名" />
                <asp:BoundField DataField="sex" HeaderText="性别" />
                <asp:BoundField DataField="age" HeaderText="年龄" />
                <asp:BoundField DataField="number" HeaderText="学号" />
                <asp:BoundField DataField="address" HeaderText="籍贯" />
                <asp:BoundField DataField="rxdate" HeaderText="入学时间" />
                <asp:HyperLinkField DataTextField="introduce" HeaderText="自我介绍" 
                    DataNavigateUrlFields="id" 
                    DataNavigateUrlFormatString="zwjs.aspx?id={0}" Target="aaa" 
                    AccessibleHeaderText="enable" />
                <asp:HyperLinkField DataNavigateUrlFields="id" 
                    DataNavigateUrlFormatString="sysadmin/manage.aspx" DataTextField="xiugai" 
                    HeaderText="修改" Target="aaa" />
            </Columns>
            <FooterStyle HorizontalAlign="Center" VerticalAlign="Middle" Wrap="False" />
            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            <RowStyle HorizontalAlign="Center" Font-Size="Small" />
        </asp:GridView>
        </td>
        <td class="style2">
            <iframe name="aaa" id ="abc" scrolling ="yes" src="zwjs.aspx"
        style="width: 485px; height: 290px; left: 5px; background-color: #fff; margin-top: 6px;" 
            align="middle"></iframe> 
            </td>
            </tr> 
            </table>
    </div>
    </form>
</body>
</html>
