﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TimeSheet.Admin
{
    public partial class Add_emp : System.Web.UI.Page
    {
        protected void CreateUserWizard1_CreatedUser(object sender, EventArgs e)
        {
        }

        protected void AddEmp(object sender, EventArgs e)
        {
            Database1Entities bd = new Database1Entities();
            Users newEmp = new Users();

            Users isUnique = bd.Users.Where(t => t.ID == UserID.Text).FirstOrDefault();

            if (isUnique == null)
            {
                DuplicateError.Visible = false;
                ConfirmMessage.Visible = true;

                newEmp.First_name = FirstName.Text;
                newEmp.Last_name = LastName.Text;
                newEmp.ID = UserID.Text;
                newEmp.Password = Password.Text;
                newEmp.Mail = Email.Text;
                newEmp.Job = "Angajat";

                bd.Users.Add(newEmp);

                if (Page.IsValid)
                {
                    if (SiteMaster.logAdmin)
                    {
                        using (System.IO.StreamWriter file = new System.IO.StreamWriter(@"C:\LogFile.txt", true))
                        {
                            string text = DateTime.Now.ToString("dd/MM/yyyy HH:mm:ss -> ");
                            //text += SiteMaster.currentUser.Job.ToString();
                            text = text
                                + " added employee "
                                + UserID.Text;
                            file.WriteLine(text);
                        }
                    }
                    bd.SaveChanges();
                }
            }
            else
            {
                DuplicateError.Visible = true;
                ConfirmMessage.Visible = false;
            }
        }
    }

}