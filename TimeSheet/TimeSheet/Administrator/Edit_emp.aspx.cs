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

            bool passwordChanged = false;
            bool mailChanged = false;

            if (Password.Text.Trim() != "" && PasswordCompare.Text.Trim() != "")
            {
                editUser.Password = Password.Text;
                passwordChanged = true;
            }
            else
            {
                //afiseaza pass not changed
            }

            if (NewEmail.Text.Trim() != "")
            {
                editUser.Mail = NewEmail.Text;
                mailChanged = true;
            }

            if (Page.IsValid)
            {
                if (SiteMaster.logAdmin)
                {
                    using (System.IO.StreamWriter file = new System.IO.StreamWriter(@"C:\LogFile.txt", true))
                    {
                        string text = DateTime.Now.ToString("dd/MM/yyyy HH:mm:ss -> ");
                        //text += SiteMaster.currentUser.Job.ToString();
                        text += " changed";
                        
                        if (passwordChanged && mailChanged)
                            text += " password and mail for employee ";
                        else if (passwordChanged)
                            text += " password for employee ";
                        else if (mailChanged)
                            text += " mail for employee ";

                        text += EmployeesList.SelectedItem.Value;
                            
                        file.WriteLine(text);
                    }
                }
                bd.SaveChanges();
                loadData();
            }
        }

        protected void DeleteUser(object sender, EventArgs e)
        {
            Database1Entities bd = new Database1Entities();

            Users editUser = bd.Users.Where(t => t.ID == EmployeesList.SelectedItem.Value).FirstOrDefault();

            bd.Users.Remove(editUser);

            if (Page.IsValid)
            {
                if (SiteMaster.logAdmin)
                {
                    using (System.IO.StreamWriter file = new System.IO.StreamWriter(@"C:\LogFile.txt", true))
                    {
                        string text = DateTime.Now.ToString("dd/MM/yyyy HH:mm:ss -> ");
                        //text += SiteMaster.currentUser.Job.ToString();
                        text = text
                            + " deleted employee "
                            + EmployeesList.SelectedItem.Value;
                        file.WriteLine(text);
                    }
                }
                bd.SaveChanges();
                loadData();
            }
        }


    }
}