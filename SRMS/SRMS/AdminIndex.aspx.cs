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
    public partial class AdminIndex : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            
            time.Text = CurrentTime.GetInstance().timeFormat("yyyy-MM-dd");
        }

        protected void submit_Click(object sender, EventArgs e)
        {
            INews news = DataAccess.Createnews();
            CreateID ci = new CreateID();

            string newsID = ci.getNewsID();
            string newsTitle = title.Text;
            string newsTime = CurrentTime.GetInstance().timeFormat("yyyy-MM-dd hh:mm:ss");
            string newsAuthor = author.Text;
            string newsContent = HttpContext.Current.Request.Form["content"];
            Server.HtmlEncode(newsContent);
            bool flag = news.insertNews(newsID, newsTitle, newsTime, newsAuthor, newsContent);
            if (flag)
            {
                ScriptManager.RegisterStartupScript(this.UpdatePanel1, this.GetType(), "confim", "<script>alert('发布公告成功!');location.href='AdminIndex.aspx';</script>", false);
            }
            else
            {
                ScriptManager.RegisterStartupScript(this.UpdatePanel1, this.GetType(), "confim", "<script>alert('发布公告失败!');location.href='AdminIndex.aspx';</script>", false);
            }
            
        }

       
        
    }
}