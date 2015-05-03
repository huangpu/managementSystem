using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text.RegularExpressions;
using System.Threading;
using System.Xml;

namespace SRMSBLL
{
    public class SelectButton
    {
        public void SelectAll(Repeater rp, LinkButton se1, string checkboxid)
        {
            if (rp.Items.Count > 0)
            {
                if (se1.Text == "全选")
                {
                    foreach (RepeaterItem item in rp.Items)
                    {

                        CheckBox cb = (CheckBox)item.FindControl(checkboxid);
                        if (cb.Enabled)
                        {
                            cb.Checked = true;
                        }

                    }
                    se1.Text = "全不选";
                }
                else
                {
                    foreach (RepeaterItem item in rp.Items)
                    {
                        CheckBox cb = (CheckBox)item.FindControl(checkboxid);
                        if (cb.Enabled)
                        {
                            cb.Checked = false;
                        }

                    }
                    se1.Text = "全选";
                }
            }
        }
    }
}
