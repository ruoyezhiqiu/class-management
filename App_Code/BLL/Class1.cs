using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Data.SqlClient;
using System.Web.Configuration;

/// <summary>
///Class1 的摘要说明
/// </summary>
public class Class1
{
	
		public static DataTable GetShareTop()
    {
        SqlConnection con = new SqlConnection(DBAccess.DBConnString);
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter("select   * from student", con);
        da.Fill(dt);
        return dt;
    }
        public static SqlConnection Conn()
        {
            string connstr = WebConfigurationManager.ConnectionStrings["angelString"].ConnectionString;
            SqlConnection conn = new SqlConnection(connstr);
            conn.Open();
            return conn;
        }
        public static void BindDataList1(DataList dl)
        {
            SqlConnection conn = Conn();
            string sqlstr = "select top 12 * from news where newstype='科技新闻' order by id desc";
            SqlCommand cmd = new SqlCommand(sqlstr, conn);
            SqlDataReader sdr = cmd.ExecuteReader();
            dl.DataSource = sdr;
            dl.DataBind();




        }
        public static void BindDataList2(DataList dl)
        {
            SqlConnection conn = Conn();
            string sqlstr = "select top 7 * from news where newstype='班级新闻' order by id desc";
            SqlCommand cmd = new SqlCommand(sqlstr, conn);
            SqlDataReader sdr = cmd.ExecuteReader();
            dl.DataSource = sdr;
            dl.DataBind();

        }

	
}