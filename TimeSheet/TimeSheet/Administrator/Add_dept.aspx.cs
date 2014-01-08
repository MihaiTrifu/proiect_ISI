using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TimeSheet.Admin
{
    public partial class Add_dept : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Database1Entities bd = new Database1Entities();
                var employeeList = from c in bd.Users where c.Job == "Angajat" select new { c.ID };
                var divisionList = from c in bd.Divisions select new { c.DivisionID };

                DivisionsList.DataValueField = "DivisionID";
                DivisionsList.DataSource = divisionList.ToArray();

                EmployeesList.DataValueField = "ID";
                EmployeesList.DataSource = employeeList.ToArray();
                DataBind();
            }
        }

        protected void addDepartment(object sender, EventArgs e)
        {
            Database1Entities bd = new Database1Entities();
            Dept newDept = new Dept();

            Dept isUniqueName = bd.Dept.Where(t => t.Name == DepartmentName.Text).FirstOrDefault();
            Dept isUniqueID = bd.Dept.Where(t => t.DeptID == DepartmentID.Text).FirstOrDefault();

            bool isUniqueNameInDivision = true;
            bool isUniqueIDInDivision = true;

            if (isUniqueID != null)
                if (isUniqueID.DivisionID == DivisionsList.SelectedItem.Value)
                    isUniqueIDInDivision = false;

            if (isUniqueName != null)
                if (isUniqueName.DivisionID == DivisionsList.SelectedItem.Value)
                    isUniqueNameInDivision = false;

            if (isUniqueNameInDivision && isUniqueIDInDivision)
            {
                DuplicateError.Visible = false;
                ConfirmMessage.Visible = true;

                newDept.Name = DepartmentName.Text;
                newDept.DeptID = DepartmentID.Text;
                newDept.ManagerID = EmployeesList.SelectedItem.Value;
                newDept.DivisionID = DivisionsList.SelectedItem.Value;

                bd.Dept.Add(newDept);

                Users user = bd.Users.Where(t => t.ID == newDept.ManagerID).FirstOrDefault();
                user.Job = "Sef Departament";

                if (Page.IsValid)
                    bd.SaveChanges();
            }
            else
            {
                DuplicateError.Visible = true;
                ConfirmMessage.Visible = false;
            }
        }

    }
}