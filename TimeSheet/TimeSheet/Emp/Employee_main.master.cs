using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TimeSheet.Dept_Manager
{
    public partial class Employee_main : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        // pagina asta este comuna tututor tipurilor de angajati
        // pentru a nu crea mai multe pagini identice, e doar una, doar ca butonul directeaza in functie de
        // rangul fiecarui angajat
        protected void Button1_Click(object sender, EventArgs e)
        {
            // if employee -> nothing
            // if department manager -> Dept_EmpTimesheet
            // if division manager ->
            // if director -> 
        }
    }
}