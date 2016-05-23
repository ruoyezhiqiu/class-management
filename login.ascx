<%@ Control Language="C#" AutoEventWireup="true" CodeFile="login.ascx.cs" Inherits="web1" %>
<link rel="Stylesheet" type="text/css" href="Style/StyleSheet3.css" />
    <div class="style1">
    <div class="style2" style="background-image: url('Img/login_001.gif')">
    </div>
    <div class="style3">
    <div class="style15">
   </div>
    <div class="style4">
    <div class="style5"><asp:Label ID="Label1" runat="server" Text="用户名："></asp:Label></div>

    <div class="style6">
   <div class="style7"><asp:TextBox ID="userid" runat="server"></asp:TextBox>
        </div>
   <div class="style7">
       <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
           ErrorMessage="用户名不能为空！" ForeColor="Red" SetFocusOnError="true" ValidationGroup="login" ControlToValidate="userid"></asp:RequiredFieldValidator>
        </div>
   </div>
   </div>

   <div class="style8">
   <div class="style9">
   <asp:Label ID="Label2" runat="server" Text="密码："></asp:Label>
   </div>
   <div class="style14">
   <div class="style10">
    <asp:TextBox ID="userpwd" runat="server" TextMode="Password"></asp:TextBox>
   </div>
   <div class="style10">
       <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
           ErrorMessage="密码不能为空！" ForeColor="Red" SetFocusOnError="true" ValidationGroup="login" ControlToValidate="userpwd"></asp:RequiredFieldValidator>
   </div>
   <div class="style10">
       <asp:Label ID="Lbmm" runat="server" Text="" CssClass="style16"></asp:Label>
   </div>
   </div>
   </div>
    
    <div class="style11">
        <div class="style12">
            <asp:ImageButton ID="ImageButton1" runat="server"  ValidationGroup="login"
                ImageUrl="~/Img/dl.gif" onclick="ImageButton1_Click" Width="57px" /></div>
        <div class="style13">
        <div class="style17"></div>
        <div class="style18">
            <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Img/zc_001.gif" Width="57px" onclick="ImageButton2_Click" />
            </div>
            </div>
    </div>
    
    </div>
    
     
    </div>



