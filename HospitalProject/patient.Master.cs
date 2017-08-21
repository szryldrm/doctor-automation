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
            if (IsPostBack) return;
            checkSession();
        }

        private void checkSession()
        {
            if (Session["TC"] == null)
            {
                Response.Redirect("~/Default.aspx");
            }
            else
            {
                lblName.Text = Session["Name"].ToString();
            }
        }

        protected void lnkCikis_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("~/Default.aspx");
        }
    }
}