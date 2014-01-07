using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TimeSheet.Classes
{
    public enum statusEnum : byte { OPEN, SUBMITTED, APPROVED, REJECTED };
    public enum monthEnum : byte { Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec };

    /**
     * In acest tip de obiect sunt retinute datele dintr-un timesheet zilnic. 
     */
    public class DailySheet
    {
        int noRows;
        int workedHours;
        int extraHours;
        int[][] timeSlot;
        String[] activity = new String[12]; // pp ca sunt maxim 12 randuri cu tot cu orele suplimentare, nimeni nu lucreaza mai mult de 12 ore :)
        statusEnum curentStatus;
        monthEnum month;

        public DailySheet()
        {
            noRows = 0;

            timeSlot = new int[2][];
            for (int i = 0; i < 2; i++)
            {
                timeSlot[i] = new int[12];
            }
        }

        public int takeWorkedHours()
        {
            this.workedHours = 0;

            for (int i = 0; i < 12; i++)
            {
                if (this.timeSlot[0][i] <= 16)
                {
                    this.workedHours += timeSlot[1][i] - timeSlot[0][i];
                }
            }

            return this.workedHours;
        }

        public int tekeExtraHours()
        {
            this.extraHours = 0;
            for (int i = 0; i < 12; i++)
            {
                if (this.timeSlot[0][i] > 16)
                {
                    this.workedHours += timeSlot[1][i] - timeSlot[0][i];
                }
            }
            return this.extraHours;
        }

        public void addWorkedHours(int noRow)
        {
            this.workedHours += timeSlot[1][noRow] - timeSlot[0][noRow];
        }

        public void addExtraHours(int noRow)
        {
            this.extraHours += timeSlot[1][noRow] - timeSlot[0][noRow];
        }

        public void changeStatus(statusEnum newStatus)
        {
            this.curentStatus = newStatus;
        }
    }
}