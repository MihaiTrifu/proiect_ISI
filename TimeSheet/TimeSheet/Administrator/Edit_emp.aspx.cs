using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TimeSheet.Admin
{
    public partial class Edit_emp : System.Web.UI.Page
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
            var employeeList = from c in bd.Users select new { c.ID };

            EmployeesList.DataValueField = "ID";
            EmployeesList.DataSource = employeeList.ToArray();

            DataBind();
        }

        protected void SaveChanges(object sender, EventArgs e)
        {
            Database1Entities bd = new Database1Entities();

            Users editUser = bd.Users.Where(t => t.ID == EmployeesList.SelectedItem.Value).FirstOrDefault();

            if (Password.Text.Trim() != "" && PasswordCompare.Text.Trim() != "")
                editUser.Password = Password.Text;
            else
            {
                //afiseaza pass not changed
            }
            if (NewEmail.Text.Trim() != "")
                editUser.Mail = NewEmail.Text;

            if (Page.IsValid)
                bd.SaveChanges();
        }

        protected void DeleteUser(object sender, EventArgs e)
        {
            Database1Entities bd = new Database1Entities();

            Users editUser = bd.Users.Where(t => t.ID == EmployeesList.SelectedItem.Value).FirstOrDefault();

            bd.Users.Remove(editUser);

            if (Page.IsValid)
                bd.SaveChanges();
        }


    }
}