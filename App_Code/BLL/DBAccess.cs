using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

using System.Web.Configuration;      //引用读写配置文件的类


/// <summary>
/// DBAccess 的摘要说明 : 实现数据库访问的通用类
/// </summary>
public class DBAccess
{
    
    //获取数据库连接字符串
    public static string DBConnString = WebConfigurationManager.ConnectionStrings["angelString"].ToString();



}
