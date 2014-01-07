using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TimeSheet.Classes;

namespace TimeSheet.Dept_Manager
{
    public partial class Dept_newTimesheet : System.Web.UI.Page
    {
        public RowTable[] rows = new RowTable[20];
        public DailySheet dailySheet = new DailySheet();
        int nrRows = 0;

        protected void initDroplist(DropDownList dropList, int no)
        {
            string aux = "";
            for (int i = 8; i < no + 8; i++)
            { 
                aux = i.ToString();
                dropList.Items.Add(aux);
            }
        }
/*
        protected void setRows(RowTable rt, Button button, DropDownList bg, DropDownList ed, DropDownList actv)
        {
            rt.delete = button;
            rt.timeBegin = bg;
            rt.timeEnd = ed;
            rt.activity = actv;
        }
*/
/*
        protected void Page_Load(object sender, EventArgs e)
        {
            setRows(rows[0], deleteRow1, timeslot11, timeslot12, activity1);
            setRows(rows[1], deleteRow2, timeslot21, timeslot22, activity2);
            setRows(rows[2], deleteRow3, timeslot31, timeslot32, activity3);
            setRows(rows[3], deleteRow4, timeslot41, timeslot42, activity4);
         
            nrRows = 4;
        }
*/

        protected void addActivity_Click(object sender, EventArgs e)
        {
            TableRow newRow = new TableRow();

            TableCell cell1 = new TableCell();
            TableCell cell2 = new TableCell();
            TableCell cell3 = new TableCell();
            TableCell cell4 = new TableCell();

            nrRows++;
            //setRows(rows[nrRows], deleteRow1, timeslot11, timeslot12, activity1);
            rows[nrRows].timeBegin.SelectedIndex = 0;
            rows[nrRows].timeEnd.SelectedIndex = 0;

            cell1.Controls.Add(rows[nrRows].timeBegin);
            cell2.Controls.Add(rows[nrRows].timeEnd);
            cell3.Controls.Add(rows[nrRows].activity);
            cell4.Controls.Add(rows[nrRows].delete);

            newRow.Controls.Add(cell1);
            newRow.Controls.Add(cell2);
            newRow.Controls.Add(cell3);
            newRow.Controls.Add(cell4);

            // todo add this newRow @ activitytable
        }

        protected void deleteRow1_Click(object sender, EventArgs e)
        {

        }
 
    }
}