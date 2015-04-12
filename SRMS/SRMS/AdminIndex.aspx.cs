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

        }

        protected void submit_Click(object sender, EventArgs e)
        {
            INews news = DataAccess.Createnews();
            string newsTitle = title.Text;
            string newsTime = time.Text;
            string newsAuthor = author.Text;
            string newsContent = HttpContext.Current.Request.Form["content"];
            Server.HtmlEncode(newsContent);
            news.insertNews("04", newsTitle, newsTime, newsAuthor, newsContent);
            //news.insertNews("01", "df", "2015/3/4", "哈哈", "哈哈");
        }

       
        
    }
}