﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HospitalProject
{
    public partial class patient : System.Web.UI.MasterPage
    {
        HospitalDBDataContext hsp = new HospitalDBDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Login"] != null)
            {
                var userName = hsp.Doctors.SingleOrDefault(u => u.dt_TC == Session["Login"].ToString()).dt_NameSurname;
                lblName.Text = userName;
                lblName2.Text = userName;
            }
            else
                Response.Redirect("~/loginPage.aspx");
        }
    }
}