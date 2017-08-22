using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HospitalProject
{
    public partial class patientProfile : System.Web.UI.Page
    {
        HospitalDBDataContext hsp = new HospitalDBDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["TC"] != null)
            {
                var getPatient = (from pt in hsp.Patients
                                  where pt.pt_TC == Session["TC"].ToString()
                                  select pt).FirstOrDefault();

                lblAdSoyad.Text = getPatient.pt_NameSurname;
                lblAdres.Text = getPatient.pt_Adres;
                if (getPatient.pt_Cinsiyet == "E")
                {
                    lblCinsiyet.Text = "Erkek";
                }
                else
                {
                    lblCinsiyet.Text = "Kadın";
                }
                lblMeslek.Text = getPatient.pt_Meslek;
                lblTel.Text = getPatient.pt_Tel;
            }
        }

        protected void btnYonlendir_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/updateProfile.aspx");
        }
    }
}