﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TimeSheet.Director
{
    public partial class Div_readTimesheet : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void readTsDir_Click(object sender, EventArgs e)
        {
            Response.Redirect("Dir_personalReadMonthly.aspx");
        }
    }
}