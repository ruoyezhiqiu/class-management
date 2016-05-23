<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>
<%@ Register src="login.ascx" tagname="login" tagprefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>天津职业大学2012级网络二班</title>
<link rel="Stylesheet" type="text/css" href="Style/StyleSheet.css" />
<script src="Scripts/JScript.js" type="text/javascript"></script>
</head>
<body  style="margin:0px auto; width:1000px; font-size:small">
<form id="form1" runat="server" style="margin:0px auto; width:1000px; display:block;">
<div class="Layout1" style="margin:auto">
<div class="Layout2" style="background-image: url('Img/main_001.jpg')"></div>

    <div class="Layout3">
    <ul id="nav">
        <li><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx">首页</asp:HyperLink></li>
        <li>
        <asp:HyperLink ID="HyperLink2" runat="server"  NavigateUrl="~/Default.aspx">班级荣誉</asp:HyperLink></li>
        <li>
        <asp:HyperLink ID="HyperLink3" runat="server"  NavigateUrl="~/Default.aspx">班级活动</asp:HyperLink></li>
        <li>
        <asp:HyperLink ID="HyperLink4" runat="server"  NavigateUrl="~/Default.aspx">班级相册</asp:HyperLink></li>
        <li>
        <asp:HyperLink ID="HyperLink5" runat="server"  NavigateUrl="~/Default.aspx">班级会议</asp:HyperLink></li>
        <li>
        <asp:HyperLink ID="HyperLink7" runat="server"  NavigateUrl="~/Default.aspx">班级规划</asp:HyperLink></li>
        <li>
        <asp:HyperLink ID="HyperLink6" runat="server"  NavigateUrl="~/Default.aspx">班委成员</asp:HyperLink></li>
        <li>
        <asp:HyperLink ID="HyperLink8" runat="server"  NavigateUrl="~/Default.aspx">班级微博</asp:HyperLink></li>
        <li>
        <asp:HyperLink ID="HyperLink9" runat="server"  NavigateUrl="~/Default.aspx">班级博客</asp:HyperLink></li>
    </ul></div>

    <div class="Layout4">
    <div id="ibanner">
    <div id="ibanner_pic" >
    <asp:HyperLink ID="HyperLink10" runat="server"  NavigateUrl="~/Default.aspx"><img src="Img/a1.jpg" alt="" style="width:282px; height:200px;" /></asp:HyperLink>
    <asp:HyperLink ID="HyperLink11" runat="server"  NavigateUrl="~/Default.aspx"><img src="Img/a2.jpg" alt="" style="width:282px; height:200px;" /></asp:HyperLink>
    <asp:HyperLink ID="HyperLink12" runat="server"  NavigateUrl="~/Default.aspx"><img src="Img/a3.jpg" alt="" style="width:282px; height:200px;" /></asp:HyperLink>
    <asp:HyperLink ID="HyperLink13" runat="server"  NavigateUrl="~/Default.aspx"><img src="Img/a4.jpg" style="width:282px; height:200px;" alt="" /></asp:HyperLink>
     </div>
     </div><!--ibanner end-->

    <div id="Layout7" style="background-image: url('Img/left.jpg'); width: 281px;"> <!--#include file="link.html"--></div>
    
    <div class="Layout17">
    <div class="Layout18" style="background-image: url('Img/bjhd_01.jpg')">
    </div>   
    <div class="Layout19">
    <asp:DataList ID="DataList2" runat="server" CssClass="nav2">
    <ItemTemplate>
    <table>
    <tr>
    <td><asp:Image ID="Image1"  runat="server" ImageUrl="~/Img/vedio.gif" Width="19px" Height="16px" />
    <asp:HyperLink ID="HyperLink14"  CssClass="nav1" runat="server" NavigateUrl="#"><%# Eval("title") %></asp:HyperLink></td>
    </tr>
    </table>
    </ItemTemplate>
    </asp:DataList>
    </div>
    </div>
    
    </div>


    <div class="Layout5">
    <div class="Layout9 ">
    <div class="Layout10" 
            style="background-image: url('Img/banji_01.jpg')"> </div>
    <div class="Layout8">
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetShareTop" TypeName="Class1"></asp:ObjectDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataSourceID="ObjectDataSource1" AllowPaging="True" AllowSorting="True" 
            Font-Underline="False" Width="420px">
            <AlternatingRowStyle Font-Size="Small" Font-Overline="False" 
                Font-Strikeout="False" Wrap="True" />
            <Columns>
                <asp:BoundField DataField="name" HeaderText="姓名" />
                <asp:BoundField DataField="sex" HeaderText="性别" />
                <asp:BoundField DataField="age" HeaderText="年龄" />
                <asp:BoundField DataField="number" HeaderText="学号" />
                <asp:BoundField DataField="address" HeaderText="籍贯" />
                <asp:BoundField DataField="rxdate" HeaderText="入学时间" />
                <asp:HyperLinkField DataTextField="introduce" HeaderText="自我介绍" 
                    DataNavigateUrlFields="id" 
                    DataNavigateUrlFormatString="zwjs.aspx?id={0}" Target="abc" 
                    AccessibleHeaderText="enable" />
            </Columns>
            <FooterStyle HorizontalAlign="Center" VerticalAlign="Middle" Wrap="False" />
            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            <RowStyle HorizontalAlign="Center" Font-Size="Small" />
        </asp:GridView>
        </div>

<div class="Layout14">
    <iframe name="abc" id ="abc" scrolling ="yes" src="zwjs.aspx"
        style="width: 418px; height: 290px; left: 5px; background-color: #fff;"></iframe> 
</div>
  
</div>
<div class="Layout7 ">
<div class="Layout11 " style="background-image: url('Img/xinwen.gif')"></div>
<div class="Layout12">  
<asp:DataList ID="DataList1" runat="server" CssClass="nav1">
    <ItemTemplate>
    <table>
    <tr>
    <td><asp:Image ID="Image1"  runat="server" ImageUrl="~/Img/dot.jpg" Width="5px" Height="9px" />&nbsp;
    <asp:HyperLink ID="HyperLink14"  CssClass="nav1" runat="server" NavigateUrl="Default.aspx"><%# Eval("title") %></asp:HyperLink></td>
    </tr>
    </table>
    </ItemTemplate>
    </asp:DataList>

</div>
<div class="Layout13">
<div class ="Loyout21">

    <uc2:login ID="login1" runat="server" />
 </div>
 </div>
</div>
</div>

<div class="Layout15">
<div class="Layout16">
</div>
</div>

<div class="Layout6">
<ul id="nav1">

        <li><asp:HyperLink ID="HyperLink15" runat="server" NavigateUrl="~/Default.aspx">天津职业大学电子信息学院12级网络二班吴升德</asp:HyperLink></li>

</ul>
</div>

</div>
</form>
</body>
</html>
