﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TimeSheet.Div_Manager
{
    public partial class Div_personalMonthlyView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void ExitButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Div_addTimesheet.aspx");
        }
    }
}