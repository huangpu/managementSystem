using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Threading;
using SRMSBLL.Interface;
using SRMSBLL;

namespace SRMS
{
    public partial class PersonalMnyEdit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.QueryString["id"];
            IProject project = DataAccess.CreatePrjSubmit();
            ProjectSubmitBean ps = project.getProject(id);
            if (!IsPostBack)
            {
                Project_ID.Text = id;
                Project_Name.Text = ps.PrjName;
                Project_PersonLiable.Text = ps.PrjPerson;
            }
        }

        protected void submit_Click(object sender, EventArgs e)
        {
            string id = Request.QueryString["id"];
            IMoney money = DataAccess.CreateImoney();
            UserMoneyBean umb = new UserMoneyBean();
            double result = 0.0;
           
            umb.PrjID = id;
            umb.MoneyDetails = HttpContext.Current.Request.Form["Money_UseDetails"];
            if (double.TryParse(Money_CrUse.Text.ToString(),out result))
            {//转换是否成功是str的值决定的,如果值是double类型就成功
                //转换成功,str的值赋给result
                umb.MoneyCrUse = result;
            }
            else
            {
                umb.MoneyCrUse = result;
                //转换失败
            }
           // Double.TryParse(Money_CrUse.Text.ToString().Trim(),umb.MoneyCrUse);
            umb.MoneyTime = Money_Time.Text.ToString();

            if (money.insertMoney(umb))
            {
                ScriptManager.RegisterStartupScript(this.UpdatePanel1, this.GetType(), "confim", "<script>alert('填写项目经费报表成功!');location.href='PersonalMnyEdit.aspx?id=" + id + "';</script>", false);
            }
            else
            {
                ScriptManager.RegisterStartupScript(this.UpdatePanel1, this.GetType(), "confim", "<script>alert('填写项目经费报表失败!');location.href='PersonalMnyEdit.aspx?id=" + id + "';</script>", false);
            }
        }
    }
}