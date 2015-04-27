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
            Project_ID.Text = id;
            Project_Name.Text = ps.PrjName;
            Project_PersonLiable.Text = ps.PrjPerson;
        }

        protected void submit_Click(object sender, EventArgs e)
        {

        }
    }
}