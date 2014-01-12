using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TimeSheet.Admin
{
    public partial class Audit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LogAdmin.Checked = SiteMaster.logAdmin;
                LogEmp.Checked = SiteMaster.logEmp;
                LogDeptMan.Checked = SiteMaster.logDeptMan;
                LogDivMan.Checked = SiteMaster.logDivMan;
                LogDir.Checked = SiteMaster.logDir;
            }
        }

        protected void LogLogChanges(bool turnedOn, string userType)
        {
            if (SiteMaster.logAdmin)
            {
                using (System.IO.StreamWriter file = new System.IO.StreamWriter(@"C:\LogFile.txt", true))
                {
                    string text = DateTime.Now.ToString("dd/MM/yyyy HH:mm:ss -> ");
                    //text += SiteMaster.currentUser.Job.ToString();
                    text += " turned";
                    
                    if (turnedOn)
                        text += " on audit for ";
                    else 
                        text += " off audit for ";

                    text += userType;

                    file.WriteLine(text);
                }
            }
        }

        protected void LogEmp_CheckedChanged(object sender, EventArgs e)
        {
            SiteMaster.logEmp = LogEmp.Checked;
            LogLogChanges(LogEmp.Checked, "employees");
        }

        protected void LogDeptMan_CheckedChanged(object sender, EventArgs e)
        {
            SiteMaster.logDeptMan = LogDeptMan.Checked;
            LogLogChanges(LogDeptMan.Checked, "department managers");
        }

        protected void LogDivMan_CheckedChanged(object sender, EventArgs e)
        {
            SiteMaster.logDivMan = LogDivMan.Checked;
            LogLogChanges(LogDivMan.Checked, "division managers");
        }

        protected void LogDir_CheckedChanged(object sender, EventArgs e)
        {
            SiteMaster.logDir = LogDir.Checked;
            LogLogChanges(LogDir.Checked, "the director");
        }

        protected void LogAdmin_CheckedChanged(object sender, EventArgs e)
        {
            SiteMaster.logAdmin = true;
            LogLogChanges(LogAdmin.Checked, "the admin");
            SiteMaster.logAdmin = LogAdmin.Checked;
        }
    }
}