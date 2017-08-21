using System;
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
                string tc = Session["Login"].ToString();
                var userName = hsp.Patients.FirstOrDefault(u => u.pt_TC == tc).pt_NameSurname;
                lblName.Text = userName;
                lblName2.Text = userName;
            }
            else
                Response.Redirect("~/loginPage.aspx");
        }

        protected void lnkCikis_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("~/loginPage.aspx");
        }
    }
}