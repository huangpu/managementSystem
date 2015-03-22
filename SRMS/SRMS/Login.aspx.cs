using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
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
            if (user.userCheck(userName, userPass))
            {
                Label1.Text = "登录成功！";
            }
            else
            {
                Label1.Text = "登录失败！";

            }
        }
    }
}