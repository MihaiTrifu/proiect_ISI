using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

namespace TimeSheet.Dept_Manager
{
    public class RowTable
    {
        public DropDownList timeBegin = new DropDownList();
        public DropDownList timeEnd = new DropDownList();
        public DropDownList activity = new DropDownList();
        public Button delete = new Button();
    }
}