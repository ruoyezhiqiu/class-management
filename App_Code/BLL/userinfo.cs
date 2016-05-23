using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
///userinfo 的摘要说明
/// </summary>
public class userinfo
{
    private string m_userid;
    private string m_userpwd;
    private string m_name;
    private string m_sex;
    private string m_age;
    private string m_introduces;


    public string userid
    {
        get
        {
            return m_userid;

        }
        set
        {
            m_userid = value;
        }
    }
    public string userpwd
    {
        get
        {
            return m_userpwd;

        }
        set
        {
            m_userpwd = value;
        }
    }
    public string name
    {
        get
        {
            return m_name;

        }
        set
        {
            m_name = value;
        }
    }
    public string sex
    {
        get
        {
            return m_sex;

        }
        set
        {
            m_sex = value;
        }
    }
    public string age
    {
        get
        {
            return m_age;

        }
        set
        {
            m_age = value;
        }
    }
    public string introduces
    {
        get
        {
            return m_introduces;

        }
        set
        {
            m_introduces = value;
        }
    }

}