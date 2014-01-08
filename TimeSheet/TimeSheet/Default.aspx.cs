using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TimeSheet
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
            Database1Entities bd = new Database1Entities();

            Users user = bd.Users.Where(t => t.ID == Login1.UserName).FirstOrDefault();

            if (user != null)
            {
                if (user.Password == Login1.Password)
                {
                    switch (user.Job)
                    {
                        case "Angajat":
                            Response.Redirect("~/Timesheet/Add_timesheet.aspx");
                            break;
                        case "Sef Departament":
                            Response.Redirect("~/Dept_Manager/Dept_Personal.aspx");
                            break;
                        case "Sef Divizie":
                            Response.Redirect("~/Div_Manager/Div_Personal.aspx");
                            break;
                        case "Director":
                            Response.Redirect("~/Director/Dir_Personal.aspx");
                            break;
                        case "Administrator":
                            Response.Redirect("~/Administrator/Add.aspx");
                            break;


                    }
                }
                else
                {
                    // afiseaza mesaj eroare - invalid password
                }
            }
            else
            {
                // afiseaza mesaj de eroare - userul nu exista
            }
        }
    }
}