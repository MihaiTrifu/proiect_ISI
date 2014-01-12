using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TimeSheet.Director
{
    public partial class Dir_modifyTimesheet : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void modifyTsDir_Click(object sender, EventArgs e)
        {
            Response.Redirect("Dir_personalModifyMonthly.aspx");
        }
    }
}