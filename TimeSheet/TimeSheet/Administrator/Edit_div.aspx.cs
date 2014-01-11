using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TimeSheet.Admin
{
    public partial class Edit_div : System.Web.UI.Page
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
            var divisionList = from c in bd.Divisions select new { c.DivisionID };

            EmployeesList.DataValueField = "ID";
            EmployeesList.DataSource = employeeList.ToArray();

            DivisionsList.DataValueField = "DivisionID";
            DivisionsList.DataSource = divisionList.ToArray();

            DataBind();
        }

        protected void SaveChanges(object sender, EventArgs e)
        {
            Database1Entities bd = new Database1Entities();

            Divisions selectedDiv = bd.Divisions.Where(t => t.DivisionID == DivisionsList.SelectedItem.Value).FirstOrDefault();
            
            Users oldManager = bd.Users.Where(t => t.ID == selectedDiv.ManagerID).FirstOrDefault();
            if (oldManager != null)
                oldManager.Job = "Angajat";

            Users newManager = bd.Users.Where(t => t.ID == EmployeesList.SelectedItem.Value).FirstOrDefault();
            newManager.Job = "Sef Divizie";

            selectedDiv.ManagerID = EmployeesList.SelectedItem.Value;

            if (Page.IsValid)
            {
                bd.SaveChanges();
                loadData();
            }
        }

        protected void DeleteDiv(object sender, EventArgs e)
        {
            Database1Entities bd = new Database1Entities();

            Divisions selectedDiv = bd.Divisions.Where(t => t.DivisionID == DivisionsList.SelectedItem.Value).FirstOrDefault();

            bd.Divisions.Remove(selectedDiv);

            var editManager = bd.Users.Where(t => t.ID == selectedDiv.ManagerID).FirstOrDefault();
            
            editManager.DeptID = null;
            editManager.Job = "Angajat";

            if (Page.IsValid)
                bd.SaveChanges();
        }     
    }
}