using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TimeSheet.Dept_Manager
{
    public partial class Dept_managementAddClient : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void insertClient_Click(object sender, EventArgs e)
        {
            Database1Entities bd = new Database1Entities();
            Clients newClient = new Clients();

            Clients isUnique = bd.Clients.Where(t => t.Client == addClient.Text).FirstOrDefault();

            if (isUnique == null)
            {
                newClient.ManagerID = SiteMaster.currentUser.ID;
                newClient.Client = addClient.Text;
            }
            bd.Clients.Add(newClient);

            if (Page.IsValid)
            {
                if (SiteMaster.logDeptMan)
                {
                    using (System.IO.StreamWriter file = new System.IO.StreamWriter(@"C:\LogFile.txt", true))
                    {
                        string text = DateTime.Now.ToString("dd/MM/yyyy HH:mm:ss -> ");
                        text = text
                            + SiteMaster.currentUser.Job.ToString()
                            + SiteMaster.currentUser.ID.ToString()
                            + " added client "
                            + addClient.Text;
                        file.WriteLine(text);
                    }
                }
                bd.SaveChanges();
            }
        }
    }
}