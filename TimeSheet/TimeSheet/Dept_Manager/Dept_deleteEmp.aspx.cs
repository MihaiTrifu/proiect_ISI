using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TimeSheet.Dept_Manager
{
    public partial class Dept_deleteEmp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            load_data();
        }

        protected void load_data()
        {
            if (!IsPostBack)
            {
                Database1Entities bd = new Database1Entities();
                var employeeList = from c in bd.Users where c.Job == "Angajat" && c.DeptID == null select new { c.ID };

                CheckBoxList1.DataValueField = "ID";
                CheckBoxList1.DataSource = employeeList.ToArray();
                DataBind();
            }
        }

        protected void addEmp(object sender, EventArgs e)
        {
            var selectedItems = CheckBoxList1.Items.Cast<ListItem>().Where(x => x.Selected);
            Database1Entities bd = new Database1Entities();
            Users user = new Users();
            string userID;

            for (int i = 0; i < selectedItems.Count(); i++)
            {
                userID = selectedItems.ElementAt(i).Value;
                user = bd.Users.Where(t => t.ID == userID).FirstOrDefault();
                user.DeptID = "D1";

                if (Page.IsValid)
                    bd.SaveChanges();
            }
            load_data();
            //Response.Redirect("~/Dept_Manager/Dept_deleteEmp.aspx");
        }

        protected void removeEmp(object sender, EventArgs e)
        {

        }
    }
}