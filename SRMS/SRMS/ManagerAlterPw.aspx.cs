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
    public partial class ManagerAlterPw : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            IUser user = DataAccess.Createuser();
            userID.Text = Session["userID"].ToString();
        }

        protected void submit_Click(object sender, EventArgs e)
        {
            IUser user = DataAccess.Createuser();
            string id = Session["userID"].ToString();
            string userName = userID.Text.Trim();
            string userPass = oldPassword.Text.Trim();
            string newPw = newPassword.Text.Trim();
            string newPw2 = newPassword2.Text.Trim();
            if (user.userCheck(userName, userPass))
            {
                if (user.checkNewPsw(newPw, newPw2))
                {
                    if (user.uodatePassword(id, newPw))
                    {
                        ScriptManager.RegisterStartupScript(this.UpdatePanel1, this.GetType(), "confim", "<script>alert('修改密码成功!');location.href='PersonalAlterPw.aspx';</script>", false);
                    }
                    else
                    {
                        ScriptManager.RegisterStartupScript(this.UpdatePanel1, this.GetType(), "confim", "<script>alert('修改密码失败!');location.href='PersonalAlterPw.aspx';</script>", false);
                    }
                }
                else
                {
                    ScriptManager.RegisterStartupScript(this.UpdatePanel1, this.GetType(), "confim", "<script>alert('输入两次密码不同!');location.href='PersonalAlterPw.aspx';</script>", false);
                }
            }
            else
            {
                ScriptManager.RegisterStartupScript(this.UpdatePanel1, this.GetType(), "confim", "<script>alert('原密码错误!');location.href='PersonalAlterPw.aspx';</script>", false);
            }

        }

    }
}