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
    public partial class PersonalRsDetail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.QueryString["id"];
            IResult prj = DataAccess.CreateIResult();
            ResultBean result = prj.getIR(id);
            Project_ID.Text = id;
            
            if (!IsPostBack)
            {
                if (prj.isNull(id))
                {
                    Response.Write("<script language=javascript>alert('无数据！')</script>");
                    Project_Name.Text = result.RtPrjName;
                    Project_PersonLiable.Text = result.RtPeople;
                    Result_BookNumber.Text = "无数据";
                    Result_class.Text = "无数据";
                    Result_BookNameC.Text = "无数据";
                    Result_BookNameEn.Text = "无数据";
                    Result_PublishName.Text = "无数据";
                    Result_PublishLevel.Text = "无数据";
                    Result_PublishTime.Text = "无数据";
                    Result_publishNumber.Text = "无数据";
                    Result_WordCount.Text = "无数据";
                }
                else 
                {
               
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
        }
    }
}