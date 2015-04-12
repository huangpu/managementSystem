using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SRMSBLL.Interface;

using SRMSBLL;
using System.Data;

namespace SRMS
{
    public partial class PersonalInfor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            IUser user = DataAccess.Createuser();
            UserBean personal = user.getUser("113001050111");
            User_ID.Text = personal.UserID;
            User_Name.Text = personal.UserName;
            User_Sex.Text = personal.UserSex;
            User_Birth.Text = personal.UserBirth;
            User_IdCard.Text = personal.UserID;
            User_Politics.Text = personal.UserPolitics;
            User_institute.Text = personal.UserInstitute;
            User_LastDegree.Text = personal.UserLastDegree;
            User_TechnicalTitle.Text = personal.UserTechnicalTitle;
            User_Cours.Text = personal.UserCours;
            User_Search.Text = personal.UserSearch;
            User_Tel.Text = personal.UserTel;
            User_Mail.Text = personal.UserMail;
            User_Vitae.Text = personal.UserVitae;

           
        }
    }
}