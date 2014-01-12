using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TimeSheet.Dept_Manager
{
    public partial class Dept_readTimesheet : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void readTsDept_Click(object sender, EventArgs e)
        {
            Response.Redirect("Dept_readMontlyTimesheet.aspx");
        }
    }
}