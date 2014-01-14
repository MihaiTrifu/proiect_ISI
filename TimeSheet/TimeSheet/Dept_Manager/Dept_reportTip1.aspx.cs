using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;
using System.Threading;
using iTextSharp.text;
using iTextSharp.text.pdf;
using System.IO;

namespace TimeSheet.Dept_Manager
{
    public partial class Dept_reportTip1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            for (int i = 2000; i < 2021; i++)
            {
                yearBegin.Items.Add(new System.Web.UI.WebControls.ListItem(i.ToString()));
                yearEnd.Items.Add(new System.Web.UI.WebControls.ListItem(i.ToString()));
            }

            if (!IsPostBack)
            {
                loadData();
            }
        }

        protected void loadData()
        {
            Database1Entities bd = new Database1Entities();
            var employeeList = from c in bd.Users select new { c.ID };

            idListTip1Dept.DataValueField = "ID";
            idListTip1Dept.DataSource = employeeList.ToArray();

            DataBind();
        }

        protected void resetReportTip1Dept_Click(object sender, EventArgs e)
        {
            yearBegin.SelectedIndex = 0;
            yearEnd.SelectedIndex = 0;

            monthBegin.SelectedIndex = 0;
            monthEnd.SelectedIndex = 0;
            
            dayBegin.SelectedIndex = 0;
            dayEnd.SelectedIndex = 0;

            idListTip1Dept.SelectedIndex = 0;
        }

        protected void yearBegin_SelectedIndexChanged(object sender, EventArgs e)
        {
            Thread.CurrentThread.CurrentCulture = CultureInfo.CreateSpecificCulture("en-US");
            var months = CultureInfo.CurrentCulture.DateTimeFormat.MonthNames;
            int index;
            monthBegin.Items.Clear();
            dayBegin.Items.Clear();
            monthBegin.Items.Add(new System.Web.UI.WebControls.ListItem("Select Month...", "0"));
            for (int i = 0; i < months.Length - 1; i++)
            {
                index = i + 1;
                monthBegin.Items.Add(new System.Web.UI.WebControls.ListItem(months[i], index.ToString()));
            }
        }
        protected void yearEnd_SelectedIndexChanged(object sender, EventArgs e)
        {
            Thread.CurrentThread.CurrentCulture = CultureInfo.CreateSpecificCulture("en-US");
            var months = CultureInfo.CurrentCulture.DateTimeFormat.MonthNames;
            int index;
            monthEnd.Items.Clear();
            dayEnd.Items.Clear();
            monthEnd.Items.Add(new System.Web.UI.WebControls.ListItem("Select Month...", "0"));
            for (int i = 0; i < months.Length - 1; i++)
            {
                index = i + 1;
                monthEnd.Items.Add(new System.Web.UI.WebControls.ListItem(months[i], index.ToString()));
            }
        }

        protected void monthBegin_SelectedIndexChanged1(object sender, EventArgs e)
        { }

        protected void monthBegin_SelectedIndexChanged(object sender, EventArgs e)
        {
            int year = Convert.ToInt32(yearBegin.SelectedValue.ToString());
            int month = Convert.ToInt32(monthBegin.SelectedIndex);
            DateTime newDate = new DateTime(year, month, 1);
            dayBegin.Items.Clear();
            for (int i = newDate.Day; i <= DateTime.DaysInMonth(newDate.Year, newDate.Month); i++)
            {
                dayBegin.Items.Add(new System.Web.UI.WebControls.ListItem(i.ToString()));
            }
        }
        protected void monthEnd_SelectedIndexChanged(object sender, EventArgs e)
        {
            int year = Convert.ToInt32(yearEnd.SelectedValue.ToString());
            int month = Convert.ToInt32(monthEnd.SelectedIndex);
            DateTime newDate = new DateTime(year, month, 1);
            dayEnd.Items.Clear();
            for (int i = newDate.Day; i <= DateTime.DaysInMonth(newDate.Year, newDate.Month); i++)
            {
                dayEnd.Items.Add(new System.Web.UI.WebControls.ListItem(i.ToString()));
            }
        }

        protected void okReportTip1Dept_Click(object sender, EventArgs e)
        {
            var doc1 = new Document();
            string path = Server.MapPath("PDFs");

            PdfWriter.GetInstance(doc1, new FileStream(@"C:\Raport1_DeptMan2.pdf", FileMode.Create));
            doc1.Open();
            PdfPTable table = new PdfPTable(2);
            string text = "Angajat " + idListTip1Dept.SelectedValue.ToString();
            PdfPCell cell = new PdfPCell(new Phrase(text));
            cell.Colspan = 2;
            cell.HorizontalAlignment = 1;
            
            table.AddCell(cell);
            table.AddCell("Nr Ore");
            table.AddCell("Proiect");

            Database1Entities bd = new Database1Entities();

            int nrOre = 0;

            List<Timesheets> activityList = bd.Timesheets.Where(t => t.UserID == idListTip1Dept.SelectedItem.Value).Distinct().ToList();
            Timesheets ts = new Timesheets();

            for (int i = 0; i < activityList.Count(); i++)
            {
                string act = activityList[i].Activity;
                List<Timesheets> nrHList = bd.Timesheets.Where(t => t.UserID == idListTip1Dept.SelectedItem.Value && t.Activity == act).ToList();
                nrOre = 0;
                for (int j = 0; j < nrHList.Count(); j++)
                {
                    nrOre = nrOre + Convert.ToInt32(nrHList[j].Finish_time.ToString()) - Convert.ToInt32(nrHList[j].Start_time.ToString());
                }

                table.AddCell(nrOre.ToString());
                table.AddCell(activityList[i].Activity.ToString()); 
            }


            doc1.Add(table);

            doc1.Close();
        }

    }
}