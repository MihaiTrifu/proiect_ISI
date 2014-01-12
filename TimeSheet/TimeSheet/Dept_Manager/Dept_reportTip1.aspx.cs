using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TimeSheet.Dept_Manager
{
    public partial class Dept_reportTip1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void resetReportTip1Dept_Click(object sender, EventArgs e)
        {
            yearBeginTip1Dept.SelectedIndex = 0;
            yearEndTip1Dept.SelectedIndex = 0;

            monthBeginTip1Dept.SelectedIndex = 0;
            monthEndTip1Dept.SelectedIndex = 0;
            
            dayBeginTip1Dept.SelectedIndex = 0;
            dayEndTip1Dept.SelectedIndex = 0;

            idListTip1Dept.SelectedIndex = 0;
        }

    }
}