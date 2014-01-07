using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TimeSheet
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
            // if admin
            //Response.Redirect("~/Administrator/Add.aspx");
            // if emp
            //Response.Redirect("~/Timesheet/Add_timesheet.aspx");
            // if dept manager
            Response.Redirect("~/Dept_Manager/Dept_Personal.aspx");
            // if division manager
           // Response.Redirect("~/Div_Manager/Div_Personal.aspx");
            //if director
            //Response.Redirect("~/Director/Dir_Personal.aspx");
        }
    }
}