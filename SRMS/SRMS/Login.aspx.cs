using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SRMSBLL.Interface;
using SRMSBLL;

namespace SRMS
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            string userName = TxtName.Text.Trim();
            string userPass = TxtPass.Text.Trim();
            IUser user = DataAccess.Createuser();
            if (user.checkUserName(userName))
            {
                if (user.userCheck(userName, userPass))
                {
                    string Authority =  user.checkAuthority(userName);
                    Session["userID"] = userName;
                    Session["AdminName"] = user.getUser(userName).UserName;
                    if (Authority.Equals("0"))
                    {
                    }
                    else if (Authority.Equals("1"))
                    {
                    }
                    else if (Authority.Equals("2"))
                    {
                        Response.Redirect("PersonalIndex.aspx");
                    }
                }
                else
                {
                    Response.Write("<script language=javascript>alert('密码错误！')</script>");
                }
            }
            else
            {
                Response.Write("<script language=javascript>alert('用户名错误或不存在！')</script>");
            }
        }
    }
}