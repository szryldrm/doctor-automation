using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HospitalProject
{
    public partial class randevuDetay : System.Web.UI.Page
    {
        HospitalDBDataContext hsp = new HospitalDBDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["TC"] != null)
            {
                if (Request.QueryString["detayid"] != null)
                {
                    try
                    {
                        int id = Convert.ToInt32(Request.QueryString["detayid"].ToString());
                        var getDetay = (from PE in hsp.PastExamines
                                       join DO in hsp.Doctors on PE.dt_ID equals DO.dt_ID
                                       where PE.ex_ID == id
                                       select new
                                       {
                                           PE.ex_Aciklama,
                                           PE.ex_Sonuc,
                                           PE.ex_Tarih,
                                           PE.ex_Ucret,
                                           DO.dt_NameSurname
                                       }).FirstOrDefault();

                        lblAciklama.InnerText = getDetay.ex_Aciklama;
                        lblDoktor.InnerText = getDetay.dt_NameSurname;
                        lblSonuc.InnerText = getDetay.ex_Sonuc;
                        lblTarih.InnerText = getDetay.ex_Tarih.ToShortDateString();
                        lblUcret.InnerText = getDetay.ex_Ucret.ToString();

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
    }
}