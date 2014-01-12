using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;
using System.Threading;

namespace TimeSheet.Emp
{
    public partial class Emp_addTimesheet : System.Web.UI.Page
    {
        public static string YearDropDownEmp;
        public static string MonthDropDownEmp;
        public static string DayDropDownEmp;

        protected void Page_Load(object sender, EventArgs e)
        {
            for (int i = 2000; i < 2021; i++)
            {
                yearAddEmp.Items.Add(new ListItem(i.ToString()));
            }
        }

        protected void setVariables()
        {
            YearDropDownEmp = yearAddEmp.SelectedValue;
            MonthDropDownEmp = monthAddEmp.SelectedItem.ToString();
            DayDropDownEmp = dayAddEmp.SelectedValue;
        }

        protected void addTsEmp_Click(object sender, EventArgs e)
        {
            setVariables();
            Response.Redirect("Emp_newTimesheet.aspx");
        }

        protected void yearAddEmp_SelectedIndexChanged(object sender, EventArgs e)
        {
            Thread.CurrentThread.CurrentCulture = CultureInfo.CreateSpecificCulture("en-US");
            var months = CultureInfo.CurrentCulture.DateTimeFormat.MonthNames;
            int index;
            monthAddEmp.Items.Clear();
            dayAddEmp.Items.Clear();
            monthAddEmp.Items.Add(new ListItem("Select Month...", "0"));
            for (int i = 0; i < months.Length - 1; i++)
            {
                index = i + 1;
                monthAddEmp.Items.Add(new ListItem(months[i], index.ToString()));
            }
        }

        protected void monthAddEmp_SelectedIndexChanged(object sender, EventArgs e)
        {
            int year = Convert.ToInt32(yearAddEmp.SelectedValue.ToString());
            int month = Convert.ToInt32(monthAddEmp.SelectedIndex);
            DateTime newDate = new DateTime(year, month, 1);
            dayAddEmp.Items.Clear();
            for (int i = newDate.Day; i <= DateTime.DaysInMonth(newDate.Year, newDate.Month); i++)
            {
                dayAddEmp.Items.Add(new ListItem(i.ToString()));
            }
        }
    }
}