using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HospitalProject
{
    public partial class updateProfile : System.Web.UI.Page
    {
        HospitalDBDataContext hsp = new HospitalDBDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["TC"] != null)
            {
                getUserInformation();
            }
        }

        

        protected void btnKaydet_ServerClick(object sender, EventArgs e)
        {
            try
            {
                var updateUser = hsp.Patients.First(x => x.pt_TC == Session["TC"].ToString());

                updateUser.pt_NameSurname = inputAdSoyad.Value;
                updateUser.pt_Meslek = inputMeslek.Value;
                updateUser.pt_Cinsiyet = inputCinsiyet.Value.Substring(0, 1).ToUpper();
                updateUser.pt_Adres = inputAdres.Value;
                updateUser.pt_Tel = inputTel.Value.Trim();

                hsp.SubmitChanges();
                alertDiv.Visible = true;
                alertDiv.CssClass = "alert alert-success";
                lblAlert.Text = "Güncelleme Başarılı";
                getUserInformation();
            }
            catch (Exception ex)
            {

                alertDiv.Visible = true;
                alertDiv.CssClass = "alert alert-danger";
                lblAlert.Text = "Hata Oluştu! Hata: " + ex.Message;
            }

            
        }

        private void getUserInformation()
        {
            var getPatient = (from pt in hsp.Patients
                              where pt.pt_TC == Session["TC"].ToString()
                              select pt).FirstOrDefault();

            lblAdSoyad.InnerText = getPatient.pt_NameSurname;
            lblAdres.InnerText = getPatient.pt_Adres;
            if (getPatient.pt_Cinsiyet == "E")
            {
                lblCinsiyet.InnerText = "Erkek";
            }
            else
            {
                lblCinsiyet.InnerText = "Kadın";
            }
            lblMeslek.InnerText = getPatient.pt_Meslek;
            lblTel.InnerText = getPatient.pt_Tel;
        }
    }


}