using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Addusers : System.Web.UI.Page
{

    protected void zcbt_Click(object sender, ImageClickEventArgs e)
    {
        userinfo user = new userinfo();
        user.userid = userid.Text.Trim();
        user.userpwd = userpwd.Text.Trim();
        if (Common.AddNewCustomer(user))
        {


            Response.Write("<script language=javascript>alert('恭喜你 注册成功！')</script>");
          
        }
        else
        {
            Response.Write("<script language=javascript>alert('很遗憾 注册失败！')</script>");
        }
    }
    protected void fhbt_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/Default.aspx");

    }
}