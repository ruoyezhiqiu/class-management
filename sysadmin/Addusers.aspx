<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Addusers.aspx.cs" Inherits="Addusers" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>班级成员注册</title>
<link rel="stylesheet" type="text/css" href="css/style.css"/>
<style type="text/css">
     .style1
     {
         width:100%;
      }
     .style2
     {
        width:343px;
      }
     .style3
     {
        height: 40px;
        width: 273px;
    }
     .style4
     {
     height:40px;    
     width:74px;
     } 
     .style5
     { 
         height:40px;    
         width:74px;
         float:left;
         
     }  
          .style6
     { 
         height:20px;    
         width:100%;
         
     } 
</style>
</head>
<body>
<form id="form1" runat="server">
    <div>
         <table cellpadding="0" cellspacing="0" class="style1">
     <tr>
     <td style ="width:20%">&nbsp;</td>
     <td style="width:60%"><img src ="images/login_001.jpg" alt ="" /></td>
     <td style="width:20%">&nbsp;</td>
     </tr>
     <tr> 
     <td>&nbsp;</td>
     <td style="text-align :center">
     <table cellpadding ="0" cellspacing ="0" class="style2 ">
     <tr>
     <td class="style4 ">
      用户名：
      </td>
     <td class="style3">
     <asp:TextBox ID="userid" runat="server" Width="105px"></asp:TextBox>
     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
             ControlToValidate="userid" ErrorMessage="用户不能为空！" ForeColor="Red" 
             SetFocusOnError="True" ValidationGroup="Add"></asp:RequiredFieldValidator>
     </td>
     </tr>
      <tr>
      <td class="style4">
     密码：
     </td>
     <td>
     <asp:TextBox ID="userpwd" runat="server" TextMode="Password" Width="105px"></asp:TextBox>
     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
             ControlToValidate="userpwd" ErrorMessage="密码不能为空！ " ForeColor="Red" 
             SetFocusOnError="True" ValidationGroup="Add"></asp:RequiredFieldValidator>
     </td>
     </tr>
     <tr>
     <td class="style5" colspan ="2">
     &nbsp;&nbsp;</td> 
     </tr>
     <tr>
     <td class="style6" colspan ="2">
     <asp:ImageButton ID="zcbt" runat="server" Height="20px" 
             ImageUrl ="~/sysadmin/images/zc_03.gif" onclick="zcbt_Click" Width="57px" 
             ValidationGroup="Add" />     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <asp:ImageButton ID ="fhbt" runat="server" Height="20px" 
             ImageUrl ="~/Img/fh_6.gif" Width="57px"
     onclick="fhbt_Click" />

     </td>
     </tr>
     </table>
     </td>
     <td>&nbsp;</td>
     </tr>
     <tr>
     <td>
     &nbsp;
     </td>
     <td style="text-align:center">&nbsp;</td>
     <td> &nbsp;</td>
     </tr>
     </table>
    </div>
    </form>
</body>
</html>
