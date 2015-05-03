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
    public partial class PersonalRsSubmit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.QueryString["id"];
            IResult prj = DataAccess.CreateIResult();
            ResultBean result = prj.getIR(id);
            if (!IsPostBack)
            {
                Project_ID.Text = id;
                Project_Name.Text = result.RtPrjName;
                Project_PersonLiable.Text = result.RtPeople;
                Result_BookNumber.Text = result.RtBookNumber;
                Result_class.Text = result.RtClass;
                Result_BookNameC.Text = result.RtBookNameC;
                Result_BookNameEn.Text = result.RtBookNameEn;
                Result_PublishName.Text = result.RtPublishName;
                Result_PublishLevel.Text = result.RtPublishLevel;
                Result_PublishTime.Text = result.RtPublishTime;
                Result_publishNumber.Text = result.RtPublishNumber;
                Result_WordCount.Text = result.RtWordCount;
            }
        }

        protected void submit_Click(object sender, EventArgs e)
        {
            string id = Request.QueryString["id"];
            IResult prj = DataAccess.CreateIResult();
            ResultBean result = new ResultBean();

            result.UserId = "1";
            result.RtProjectID = id;
            result.RtPrjName = Project_Name.Text;
            result.RtPeople = Project_PersonLiable.Text;
            result.RtBookNumber = Result_BookNumber.Text;
            result.RtClass = Result_class.Text;
            result.RtBookNameC = Result_BookNameC.Text;
            result.RtBookNameEn = Result_BookNameEn.Text;
            result.RtPublishName = Result_PublishName.Text;
            result.RtPublishLevel = Result_PublishLevel.Text;
            result.RtPublishTime = Result_PublishTime.Text;
            result.RtPublishNumber = Result_publishNumber.Text;
            result.RtWordCount = Result_WordCount.Text;

            if (prj.isNull(id))
            {
                if (prj.insertResult(result))
                {
                    ScriptManager.RegisterStartupScript(this.UpdatePanel1, this.GetType(), "confim", "<script>alert('项目成果提交成功，请等待审核!');location.href='PersonalRsSubmit.aspx?id=" + id + "';</script>", false);
                }
                else
                {
                    ScriptManager.RegisterStartupScript(this.UpdatePanel1, this.GetType(), "confim", "<script>alert('项目成果提交失败!');location.href='PersonalRsSubmit.aspx?id=" + id + "';</script>", false);
                }
            }
            else
            {
                if (prj.updateResult(result))
                {
                    ScriptManager.RegisterStartupScript(this.UpdatePanel1, this.GetType(), "confim", "<script>alert('项目成果修改成功，请等待审核!');location.href='PersonalRsSubmit.aspx?id=" + id + "';</script>", false);
                }
                else
                {
                    ScriptManager.RegisterStartupScript(this.UpdatePanel1, this.GetType(), "confim", "<script>alert('项目成果修改失败!');location.href='PersonalRsSubmit.aspx?id=" + id + "';</script>", false);
                }
            }
        }
    }
}