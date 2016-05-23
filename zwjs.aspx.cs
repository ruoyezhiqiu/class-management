using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class zwjs : System.Web.UI.Page
{
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
        Common.ShowNews(newsid,lbtitle,lbdate, lbzwjs, Image2, lbnl);
    }
}