﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TimeSheet.Emp
{
    public partial class Emp_monthlyView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ExitButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Emp_addTimesheet.aspx");
        }
    }
}