using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Net;
using System.Text;
using System.Data.SqlClient;
using System.Web.Configuration;
public class Common
{
        public static SqlConnection Conn()
    {
        string connstr = WebConfigurationManager.ConnectionStrings["angelString"].ConnectionString;
        SqlConnection conn = new SqlConnection(connstr);
        conn.Open();
        return conn;
    }
    public static DataTable query(string sql)
    {
        DataTable dt = new DataTable();
        SqlConnection con = new SqlConnection(DBAccess.DBConnString);
        //创建命令对象


        SqlDataAdapter adapter = new SqlDataAdapter(sql, con);
        adapter.Fill(dt);
        return dt;
    }
    public static bool AddNewCustomer(userinfo newuser)
    {

        //创建数据库连接对象
        SqlConnection con = new SqlConnection(DBAccess.DBConnString);
        //创建命令对象
        string sql = "insert into users (userid,userpwd) values (@userid,@userpwd)";
        SqlCommand cmd = new SqlCommand(sql, con);
        //3.打开连接，以执行SQL命令
        con.Open();
        //4.为命令对象中的各个参数赋值
        try
        {

            cmd.Parameters.Add("@userid", SqlDbType.VarChar, 20);
            cmd.Parameters[0].Value = newuser.userid;
            cmd.Parameters.Add("@userpwd", SqlDbType.VarChar, 20);
            cmd.Parameters[1].Value = newuser.userpwd;

            cmd.ExecuteNonQuery();
            con.Close();
            return true;
        }
        catch
        {
            if (con.State == ConnectionState.Open)
                con.Close();
            return false;
        }

    }
    public static bool CheckPassword(string username, string pwd)
    {

        SqlConnection con = new SqlConnection(DBAccess.DBConnString);
        SqlCommand cmd = new SqlCommand("select * from users where userid='" + username + "'  and userpwd ='" + pwd + "'", con);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            dr.Close();
            con.Close();
            return true;
        }
        else
        {
            dr.Close();
            con.Close();
            return false;
        }

    }


    public static string UpLoadFile(FileUpload fileupload, string Folders)
    {
        string fullname = fileupload.PostedFile.FileName;
        if ((fullname == null) || (fullname.Equals("")))
            return "";
        string huozui = fullname.Substring(fullname.LastIndexOf("."));
        string filename = GetFileName();
        string p1 = Folders + filename + huozui;
        string path = System.Web.HttpContext.Current.Server.MapPath(p1);

        if (System.IO.File.Exists(path))
            System.IO.File.Delete(path);
        fileupload.PostedFile.SaveAs(path);
        return p1;
    }
    public static string GetFileName()
    {
        System.Threading.Thread.Sleep(1000);
        StringBuilder sb = new StringBuilder();
        sb.Append(DateTime.Now.Year.ToString("0000"));
        sb.Append(DateTime.Now.Month.ToString("00"));
        sb.Append(DateTime.Now.Day.ToString("00"));
        sb.Append(DateTime.Now.Hour.ToString("00"));
        sb.Append(DateTime.Now.Minute.ToString("00"));
        sb.Append(DateTime.Now.Second.ToString("00"));
        sb.Append(DateTime.Now.Millisecond.ToString("000"));
        return sb.ToString();
    }
    string strsql = "";
    DataTable dt = new DataTable();
    public static void ShowNews(int id, Label tbname, Label Dlsex, Label lbzwjs, Image Image2, Label tbage)
    {

        SqlConnection conn = Conn();
        string sqlstr = "select * from student where id=@id";
        SqlCommand cmd = new SqlCommand(sqlstr, conn);
        cmd.Parameters.Add(new SqlParameter("@id", id));


        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);

        tbname.Text = dt.Rows[0]["name"].ToString();
        Dlsex.Text = dt.Rows[0]["sex"].ToString();
        lbzwjs.Text = dt.Rows[0]["introduces"].ToString();
        Image2.ImageUrl = dt.Rows[0]["photopath"].ToString();
        tbage.Text = dt.Rows[0]["age"].ToString();

    }
    public static void ShowNews1(int id, TextBox tbname, DropDownList Dlsex, TextBox tbage, Image Image2, TextBox content1)
    {

        SqlConnection conn = Conn();
        string sqlstr = "select * from student where id=@id";
        SqlCommand cmd = new SqlCommand(sqlstr, conn);
        cmd.Parameters.Add(new SqlParameter("@id", id));


        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);

        tbname.Text = dt.Rows[0]["name"].ToString();
        Dlsex.Text = dt.Rows[0]["sex"].ToString();
        tbage.Text = dt.Rows[0]["age"].ToString();
        Image2.ImageUrl = dt.Rows[0]["photopath"].ToString();
        content1.Text = dt.Rows[0]["introduces"].ToString();

    }
    public static void NewsModify(int id, string name, string sex, string age, string introduces)
    {
        string sqlstr = "update student set name=@name,sex=@sex, age=@age,introduces=@introduces where id=@id";
        SqlConnection conn = Conn();
        SqlCommand cmd = new SqlCommand(sqlstr, conn);
        cmd.Parameters.AddRange(new SqlParameter[] { 
            new SqlParameter("@name", name),
            new SqlParameter("@sex", sex),
            new SqlParameter("@age", age),
            new SqlParameter("@content1", introduces),
            new SqlParameter("@id", id)
        });
        cmd.ExecuteNonQuery();
    }
}
