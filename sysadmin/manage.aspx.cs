using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class sysadmin_manage : System.Web.UI.Page
{
    int newsid;
    protected void Page_Load(object sender, EventArgs e)
    {
        int newsid;
        try
        {

            newsid = Int32.Parse(Request.QueryString["id"].ToString());
        }
        catch
        {
            newsid = 1;
        }
        Common.ShowNews1(newsid, TextBox1, ddlsex, tbage, Image2, content1);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        Common.NewsModify(newsid,TextBox1.Text.Trim(),ddlsex.Text.Trim(),tbage.Text.Trim(),content1.Text);
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
}