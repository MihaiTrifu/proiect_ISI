using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TimeSheet.Admin
{
    public partial class Edit_dept : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                loadDivisionsData();
                loadEmpData();
            }
        }

        protected void loadDivisionsData()
        {
            Database1Entities bd = new Database1Entities();
            var divisionList = from c in bd.Divisions select new { c.DivisionID };

            DivisionsList.DataValueField = "DivisionID";
            DivisionsList.DataSource = divisionList.ToArray();

            DataBind();
        }

        protected void loadEmpData()
        {
            Database1Entities bd = new Database1Entities();
            var employeeList = from c in bd.Users where c.Job == "Angajat" select new { c.ID };

            EmployeesList.DataValueField = "ID";
            EmployeesList.DataSource = employeeList.ToArray();

            DataBind();
        }

        protected void DivisionList_SelectedIndexChanged(object sender, EventArgs e)
        {
            Database1Entities bd = new Database1Entities();
            var departmentList = from c in bd.Dept where c.DivisionID == DivisionsList.SelectedItem.Value select new { c.DeptID };

            DeptList.DataValueField = "DeptID";
            DeptList.DataSource = departmentList.ToArray();

            DataBind();
        }

        protected void SaveChanges(object sender, EventArgs e)
        {
            Database1Entities bd = new Database1Entities();
  
            Users oldManager = bd.Users.Where(t => t.DeptID == DeptList.SelectedItem.Value && t.Job == "Sef Departament").FirstOrDefault();
            if (oldManager != null)
                oldManager.Job = "Angajat";

            Users newManager = bd.Users.Where(t => t.ID == EmployeesList.SelectedItem.Value).FirstOrDefault();
            newManager.Job = "Sef Departament";
            newManager.DeptID = DeptList.SelectedItem.Value;

            Dept editDept = bd.Dept.Where(t => t.DeptID == DeptList.SelectedItem.Value).FirstOrDefault();
            editDept.ManagerID = EmployeesList.SelectedItem.Value;

            if (Page.IsValid)
            {
                if (SiteMaster.logAdmin)
                {
                    using (System.IO.StreamWriter file = new System.IO.StreamWriter(@"C:\LogFile.txt", true))
                    {
                        string text = DateTime.Now.ToString("dd/MM/yyyy HH:mm:ss -> ");
                        //text += SiteMaster.currentUser.Job.ToString();
                        text = text
                            + " promoted employee "
                            + EmployeesList.SelectedItem.Value
                            + " as manager for "
                            + DeptList.SelectedItem.Value
                            + " department";
                        file.WriteLine(text);
                    }
                }
                bd.SaveChanges();
                loadEmpData();
            }
        }

        protected void DeleteDepart(object sender, EventArgs e)
        {
            Database1Entities bd = new Database1Entities();

            Dept editDept = bd.Dept.Where(t => t.DeptID == DeptList.SelectedItem.Value).FirstOrDefault();

            bd.Dept.Remove(editDept);
            if (Page.IsValid)
            {
                if (SiteMaster.logAdmin)
                {
                    using (System.IO.StreamWriter file = new System.IO.StreamWriter(@"C:\LogFile.txt", true))
                    {
                        string text = DateTime.Now.ToString("dd/MM/yyyy HH:mm:ss -> ");
                        //text += SiteMaster.currentUser.Job.ToString();
                        text = text
                            + " deleted "
                            + DeptList.SelectedItem.Value
                            + " department";
                        file.WriteLine(text);
                    }
                }
                bd.SaveChanges();
            }

            List<Users> editUsersList = bd.Users.Where(t => t.DeptID == DeptList.SelectedItem.Value).ToList();
            Users editUsers = new Users();

            for (int i = 0; i < editUsersList.Count(); i++)
            {
                editUsers = (Users)editUsersList.ElementAt(i);
                editUsers.DeptID = null;
                editUsers.Job = "Angajat";

                if (Page.IsValid)
                {
                    bd.SaveChanges();
                }
            }
            DivisionList_SelectedIndexChanged(sender, e);
        }        
    }
}