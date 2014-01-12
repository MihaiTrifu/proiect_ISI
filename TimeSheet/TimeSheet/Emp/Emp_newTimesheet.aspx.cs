using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TimeSheet.Emp
{
    public partial class Emp_newTimesheet : System.Web.UI.Page
    {
        int noWorkedHours = 0;
        int noExtraHours = 0;
        private static int noRows = 1;
        private int myRows;


        public string status = "Open";
        public string year = "1900";
        public string month = "August";
        public string day = "1";

        public DropDownList[] activity = new DropDownList[12];
        public DropDownList[] timeSlotBegin = new DropDownList[12];
        public DropDownList[] timeSlotEnd = new DropDownList[12];
        public CheckBox[] delete = new CheckBox[12];

        protected void Page_Load(object sender, EventArgs e)
        {
            activity[0] = activity1;
            activity[1] = activity2;
            activity[2] = activity3;
            activity[3] = activity4;
            activity[4] = activity5;
            activity[5] = activity6;
            activity[6] = activity7;
            activity[7] = activity8;
            activity[8] = activity9;
            activity[9] = activity10;
            activity[10] = activity11;
            activity[11] = activity12;

            timeSlotBegin[0] = timeBegin1;
            timeSlotBegin[1] = timeBegin2;
            timeSlotBegin[2] = timeBegin3;
            timeSlotBegin[3] = timeBegin4;
            timeSlotBegin[4] = timeBegin5;
            timeSlotBegin[5] = timeBegin6;
            timeSlotBegin[6] = timeBegin7;
            timeSlotBegin[7] = timeBegin8;
            timeSlotBegin[8] = timeBegin9;
            timeSlotBegin[9] = timeBegin10;
            timeSlotBegin[10] = timeBegin11;
            timeSlotBegin[11] = timeBegin12;

            timeSlotEnd[0] = timeEnd1;
            timeSlotEnd[1] = timeEnd2;
            timeSlotEnd[2] = timeEnd3;
            timeSlotEnd[3] = timeEnd4;
            timeSlotEnd[4] = timeEnd5;
            timeSlotEnd[5] = timeEnd6;
            timeSlotEnd[6] = timeEnd7;
            timeSlotEnd[7] = timeEnd8;
            timeSlotEnd[8] = timeEnd9;
            timeSlotEnd[9] = timeEnd10;
            timeSlotEnd[10] = timeEnd11;
            timeSlotEnd[11] = timeEnd12;

            delete[0] = delete1;
            delete[1] = delete2;
            delete[2] = delete3;
            delete[3] = delete4;
            delete[4] = delete5;
            delete[5] = delete6;
            delete[6] = delete7;
            delete[7] = delete8;
            delete[8] = delete9;
            delete[9] = delete10;
            delete[10] = delete11;
            delete[11] = delete12;

            noWorkedHours = WorkedHours();
            noExtraHours = ExtraHours();

            statusLabel.Text = status;
            yearLabel.Text = year;
            monthLabel.Text = month;
            dayLabel.Text = day;

            if (noWorkedHours > 8)
            {
                noExtraHours = noExtraHours + noWorkedHours - 8;
                noWorkedHours = 8;
            }

            hoursLabel.Text = noWorkedHours.ToString();
            extraHoursLabel.Text = noExtraHours.ToString();
        }

        protected void addRowsButton_Click(object sender, EventArgs e)
        {
            myRows = ++noRows;

            activity[myRows - 1].Enabled = true;
            timeSlotEnd[myRows - 1].Enabled = true;
            timeSlotBegin[myRows - 1].Enabled = true;
            delete[myRows - 1].Enabled = true;

            timeSlotBegin[myRows - 1].SelectedIndex = timeSlotEnd[myRows - 2].SelectedIndex;
        }

        protected int WorkedHours()
        {
            int number = 0;
            for (int i = 0; i < 12; i++)
            {
                if (timeSlotBegin[i].Enabled == true && number < 8)
                {
                    number += Math.Abs(timeSlotBegin[i].SelectedIndex - timeSlotBegin[i].SelectedIndex);
                }
            }
            return number;
        }

        protected int ExtraHours()
        {
            int number = 0;
            for (int i = 0; i < 12; i++)
            {
                if (timeSlotBegin[i].Enabled == true && number >= 8)
                {
                    number += Math.Abs(timeSlotEnd[i].SelectedIndex - timeSlotBegin[i].SelectedIndex);
                }
            }
            return number;
        }

        protected void deleteButton_Click(object sender, EventArgs e)
        {
            for (int i = 0; i < 12; i++)
            {
                if (delete[i].Checked == true)
                {
                    if (i < 11)
                    {
                        for (int j = i; j < 11; j++)
                        {
                            timeSlotBegin[j].SelectedIndex = timeSlotBegin[j + 1].SelectedIndex;
                            timeSlotEnd[j].SelectedIndex = timeSlotEnd[j + 1].SelectedIndex;
                            //activity[j].SelectedIndex = activity[j + 1].SelectedIndex;
                            delete[j].Checked = delete[j + 1].Checked;
                        }
                    }
                    else 
                    {
                        timeSlotBegin[i].SelectedIndex = 0;
                        timeSlotEnd[i].SelectedIndex = 0;
                        //activity[i].SelectedIndex = 0;
                        delete[i].Checked = false;
                    }
                }
            }
        }

        protected void ExitButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Emp_addTimesheet.aspx");
        }

        protected void monthlyViewButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Emp_monthlyView.aspx");
        }

    }
}