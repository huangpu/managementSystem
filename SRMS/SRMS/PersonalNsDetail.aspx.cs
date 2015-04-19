using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SRMSBLL.Interface;
using SRMSBLL;
using System.Data;
using System.Text;

namespace SRMS
{
    public partial class PersonalNsDetail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.QueryString["id"];
            INews news = DataAccess.Createnews();
            NewsBean newsb = news.getNews(id);
            Titletext.Text = newsb.NewsName;
            Time.Text = newsb.NewsTime.ToString();
            Content.Text = Server.HtmlDecode(Encoding.Unicode.GetString(System.Text.Encoding.Unicode.GetBytes(newsb.NewsContent)));
        }
    }
}