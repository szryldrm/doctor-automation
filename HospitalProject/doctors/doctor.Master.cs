using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HospitalProject.doctors
{
    public partial class doctor : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
            checkSession();
        }

        HospitalDBDataContext hsp = new HospitalDBDataContext();
        private void checkSession()
        {
            if (Session["dtTC"] == null)
            {
                Response.Redirect("~/Default.aspx");
            }
            else
            {
                lblName.Text = Session["Name"].ToString();
                lblName2.Text = Session["Name"].ToString();
            }
        }

        protected void lnkCikis_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("~/Default.aspx");
        }
    }
}