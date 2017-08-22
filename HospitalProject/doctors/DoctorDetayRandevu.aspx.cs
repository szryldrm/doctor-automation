using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HospitalProject.doctors
{
    public partial class DoctorDetayRandevu : System.Web.UI.Page
    {
        HospitalDBDataContext hsp = new HospitalDBDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["dtTC"] != null)
            {
                if (Request.QueryString["detayid"] != null)
                {
                    try
                    {
                        getExaminesInformation();

                    }
                    catch (Exception)
                    {
                        Response.Redirect("~/Dashboard.aspx");
                    }
                }
                else
                    Response.Redirect("~/Dashboard.aspx");
            }
        }

        protected void btnKaydet_ServerClick(object sender, EventArgs e)
        {
            try
            {
                if (inputAciklama.Value == String.Empty || inputSonuc.Value == String.Empty || inputTarih.Value == String.Empty || inputUcret.Value == String.Empty)
                {
                    alertDiv.Visible = true;
                    alertDiv.CssClass = "alert alert-warning";
                    lblAlert.Text = "Tüm Alanları Doldurun";
                }
                else
                {
                    var updateExamines = hsp.PastExamines.First(x => x.ex_ID == Convert.ToInt32(Request.QueryString["detayid"]));

                    updateExamines.ex_Aciklama = inputAciklama.Value;
                    updateExamines.ex_Sonuc = inputSonuc.Value;
                    updateExamines.ex_Tarih = Convert.ToDateTime(inputTarih.Value);
                    updateExamines.ex_Ucret = Convert.ToDecimal(inputUcret.Value);

                    hsp.SubmitChanges();
                    alertDiv.Visible = true;
                    alertDiv.CssClass = "alert alert-success";
                    lblAlert.Text = "Güncelleme Başarılı";
                    getExaminesInformation();
                    
                }

            }
            catch (Exception ex)
            {

                alertDiv.Visible = true;
                alertDiv.CssClass = "alert alert-danger";
                lblAlert.Text = "Hata Oluştu! Hata: " + ex.Message;
            }
        }

        private void getExaminesInformation()
        {
            int id = Convert.ToInt32(Request.QueryString["detayid"].ToString());
            var getDetay = (from PE in hsp.PastExamines
                            join DO in hsp.Doctors on PE.dt_ID equals DO.dt_ID
                            join PT in hsp.Patients on PE.pt_ID equals PT.pt_ID
                            where PE.ex_ID == id
                            select new
                            {
                                PE.ex_Aciklama,
                                PE.ex_Sonuc,
                                PE.ex_Tarih,
                                PE.ex_Ucret,
                                PT.pt_NameSurname
                            }).FirstOrDefault();

            lblAciklama.InnerText = getDetay.ex_Aciklama;
            lblHastaAdi.InnerText = getDetay.pt_NameSurname;
            lblSonuc.InnerText = getDetay.ex_Sonuc;
            lblTarih.InnerText = getDetay.ex_Tarih.ToShortDateString();
            lblUcret.InnerText = getDetay.ex_Ucret.ToString();
        }

        protected void btnSil_ServerClick(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["detayid"].ToString());
            PastExamine ptDel = hsp.PastExamines.First(u => u.ex_ID == id);
            hsp.PastExamines.DeleteOnSubmit(ptDel);

            hsp.SubmitChanges();

            Response.Redirect("~/doctors/dtDashboard.aspx");
        }
    }
}