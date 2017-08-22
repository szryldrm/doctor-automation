using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HospitalProject.doctors
{
    public partial class dtDashboard : System.Web.UI.Page
    {
        HospitalDBDataContext hsp = new HospitalDBDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
            Fill();
        }

        private void Fill()
        {
            if (Session["dtTC"] != null)
            {
                string tc = Session["dtTC"].ToString();

                var getList = (from PE in hsp.PastExamines
                               join DO in hsp.Doctors on PE.dt_ID equals DO.dt_ID
                               join PT in hsp.Patients on PE.pt_ID equals PT.pt_ID
                               join DP in hsp.Departments on DO.dt_ID equals DP.dp_ID
                               where DO.dt_TC == tc
                               select new
                               {
                                   PE.ex_ID,
                                   PE.ex_Aciklama,
                                   PE.ex_Sonuc,
                                   PE.ex_Tarih,
                                   PE.ex_Ucret,
                                   PT.pt_NameSurname,
                                   DP.dp_Name
                               }).ToList().OrderByDescending(x => x.ex_Tarih);

                rptPastExamine.DataSource = getList;
                rptPastExamine.DataBind();
            }
        }

        protected void btnKaydet_ServerClick(object sender, EventArgs e)
        {
            try
            {
                if (inputAciklama.Value == String.Empty || inputSonuc.Value == String.Empty || inputTC.Value == String.Empty || inputUcret.Value == String.Empty)
                {
                    alertDiv.Visible = true;
                    alertDiv.CssClass = "alert alert-warning";
                    lblAlert.Text = "Tüm Alanları Doldurun";
                }
                else
                {

                    var getPatient = (from pt in hsp.Patients
                                      where pt.pt_TC == inputTC.Value
                                      select pt).FirstOrDefault();

                    var getDoctor = (from dt in hsp.Doctors
                                     where dt.dt_TC == Session["dtTC"].ToString()
                                     select dt).FirstOrDefault();
                    PastExamine newExamines = new PastExamine() { dt_ID = getDoctor.dt_ID, pt_ID = getPatient.pt_ID, ex_Aciklama = inputAciklama.Value, ex_Sonuc = inputSonuc.Value, ex_Tarih = DateTime.Now, ex_Ucret = Convert.ToDecimal(inputUcret.Value) };


                    hsp.PastExamines.InsertOnSubmit(newExamines);
                    hsp.SubmitChanges();

                    alertDiv.Visible = true;
                    alertDiv.CssClass = "alert alert-success";
                    lblAlert.Text = "Güncelleme Başarılı";

                }

            }
            catch (Exception ex)
            {
                alertDiv.Visible = true;
                alertDiv.CssClass = "alert alert-danger";
                lblAlert.Text = "Hata Oluştu! Hata: " + ex.Message;
            }
        }
    }
}