using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TimeSheet.Dept_Manager
{
    public partial class Dept_managementAddProject : System.Web.UI.Page
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
            var clientList = from c in bd.Clients select new { c.Client };

            listClients.DataValueField = "Client";
            listClients.DataSource = clientList.ToArray();

            DataBind();
        }

        protected void insertProject_Click(object sender, EventArgs e)
        {
            Database1Entities bd = new Database1Entities();
            Projects newProject = new Projects();

            Projects isUnique = bd.Projects.Where(t => t.Project == addProject.Text).FirstOrDefault();

            if (isUnique == null)
            {
                newProject.ManagerID = SiteMaster.currentUser.ID;
                newProject.Project = addProject.Text;
                newProject.Client = listClients.SelectedValue;
            }
            bd.Projects.Add(newProject);

            if (Page.IsValid)
            {
                if (SiteMaster.logDeptMan)
                {
                    using (System.IO.StreamWriter file = new System.IO.StreamWriter(@"C:\LogFile.txt", true))
                    {
                        string text = DateTime.Now.ToString("dd/MM/yyyy HH:mm:ss -> ");
                        text = text
                            + SiteMaster.currentUser.Job.ToString()
                            + " added project "
                            + addProject.Text
                            + " to client "
                            + listClients.SelectedValue.ToString()
                            + " in department "
                            + SiteMaster.currentUser.DeptID.ToString();
                        file.WriteLine(text);
                    }
                }
                bd.SaveChanges();
            }
        }
    }
}