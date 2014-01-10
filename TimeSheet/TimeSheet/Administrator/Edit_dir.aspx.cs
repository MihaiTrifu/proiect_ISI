using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TimeSheet.Admin
{
    public partial class Edit_dir : System.Web.UI.Page
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
            var employeeList = from c in bd.Users where c.Job == "Angajat" select new { c.ID };

            EmployeesList.DataValueField = "ID";
            EmployeesList.DataSource = employeeList.ToArray();
            DataBind();

            Users director = bd.Users.Where(t => t.Job == "Director").FirstOrDefault();

            if (director != null)
                CurrentDirector.Text = director.ID;
            else
                CurrentDirector.Text = "No director set";
        }

        protected void SaveNewDir(object sender, EventArgs e)
        {
            Database1Entities bd = new Database1Entities();

            Users oldDir = bd.Users.Where(t => t.Job == "Director").FirstOrDefault();
            if (oldDir != null)
                oldDir.Job = "Angajat";

            Users newDir = bd.Users.Where(t => t.ID == EmployeesList.SelectedItem.Value).FirstOrDefault();
            newDir.Job = "Director";

            if (Page.IsValid)
            {
                bd.SaveChanges();
                loadData();
            }
        }

    }
}