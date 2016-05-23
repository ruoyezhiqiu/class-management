using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class web1 : System.Web.UI.UserControl
{
  
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            userid.Text = "";
            userpwd.Text = "";
        }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {


        if (Common.CheckPassword(userid.Text, userpwd.Text))
        {
            Response.Write("<script language='javascript'>alert('登陆成功！')</script>");
            Response.Redirect("houtai.aspx");//将用户重定向到另一个 URL
        }
        else
        {
            Lbmm.Text = "用户名或密码错误！";
        }
   


  
   
    }

  
    protected void zcbt_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/sysadmin/Addusers.aspx");
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/sysadmin/Addusers.aspx");
    }
}
