using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TimeSheet.Dept_Manager
{
    public partial class Dept_modifyTimesheet : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                loadData();
            }
        }

        protected void loadData()
        {
            Database1Entities bd = new Database1Entities();
            SiteMaster.currentUser = new Users();
            SiteMaster.currentUser.ID = "ipo";
            var yearsList = from c in bd.Timesheets where c.UserID == SiteMaster.currentUser.ID select new { c.Year };

            selectYear.DataValueField = "Year";
            selectYear.DataSource = yearsList.Distinct().ToArray();

            DataBind();
        }

        protected void modifyTsDept_Click(object sender, EventArgs e)
        {
            Response.Redirect("Dept_modifyMonthlyView.aspx");
        }


        protected void selectYear_SelectedIndexChanged(object sender, EventArgs e)
        {
            Database1Entities bd = new Database1Entities();
            var monthsList = from c in bd.Timesheets where c.Year == selectYear.SelectedItem.Value select new { c.Month };

            selectMonth.DataValueField = "Month";
            selectMonth.DataSource = monthsList.Distinct().ToArray();

            DataBind();
        }
    }
}