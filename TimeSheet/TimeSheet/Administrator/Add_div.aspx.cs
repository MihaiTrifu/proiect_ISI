using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TimeSheet.Admin
{
    public partial class Add_div : System.Web.UI.Page
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
        }

        protected void addDivision(object sender, EventArgs e)
        {
            Database1Entities bd = new Database1Entities();
            Divisions newDiv = new Divisions();

            Divisions isUniqueName = bd.Divisions.Where(t => t.Name == DivisionName.Text).FirstOrDefault();
            Divisions isUniqueID = bd.Divisions.Where(t => t.DivisionID == DivisionID.Text).FirstOrDefault();

            if (isUniqueName == null && isUniqueID == null)
            {
                DuplicateError.Visible = false;
                ConfirmMessage.Visible = true;

                newDiv.Name = DivisionName.Text;
                newDiv.DivisionID = DivisionID.Text;
                newDiv.ManagerID = EmployeesList.SelectedItem.Value;

                bd.Divisions.Add(newDiv);

                Users user = bd.Users.Where(t => t.ID == newDiv.ManagerID).FirstOrDefault();
                user.Job = "Sef Divizie";

                if (Page.IsValid)
                {
                    if (SiteMaster.logAdmin)
                    {
                        using (System.IO.StreamWriter file = new System.IO.StreamWriter(@"C:\\LogFile.txt", true))
                        {
                            string text = DateTime.Now.ToString("dd/MM/yyyy HH:mm:ss -> ");
                            //text += SiteMaster.currentUser.Job.ToString();
                            text = text
                                + " added "
                                + DivisionName.Text.ToString()
                                + " division";
                            file.WriteLine(text);
                        }
                    }

                    bd.SaveChanges();
                    loadData();
                }
            }
            else
            {
                DuplicateError.Visible = true;
                ConfirmMessage.Visible = false;
            }
        }
    }
}