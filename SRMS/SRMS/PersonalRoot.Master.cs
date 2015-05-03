using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SRMS
{
    public partial class PersonalRoot : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["AdminName"] == null)
                {
                    Response.Write("<script language=javascript>alert('不允许直接进入后台,请登录！')</script>");

                    Response.Write("<script language=javascript>window.open('Login.aspx');window.close();</script>");
                    Response.Redirect("Login.aspx");
                }
                else
                {

                    userName.Text = Session["AdminName"].ToString();

                }

            }
        }
    }
}