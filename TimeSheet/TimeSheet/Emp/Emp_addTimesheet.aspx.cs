using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TimeSheet.Emp
{
    public partial class Emp_addTimesheet : System.Web.UI.Page
    { 
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void addTsEmp_Click(object sender, EventArgs e)
        {
            Response.Redirect("Emp_newTimesheet.aspx");
        }

        public string YearDropDownEmp
        {
            get { return dayAddEmp.SelectedValue; }
            set { yearAddEmp.SelectedValue = value; }
        }

        public string MonthDropDownEmp
        {
            get { return this.monthAddEmp.SelectedValue; }
            set { this.monthAddEmp.SelectedValue = value; }
        }

        public string DayDropDownEmp
        {
            get { return dayAddEmp.SelectedValue; }
            set { dayAddEmp.SelectedValue = value; }
        }
    }
}