using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HospitalProject.doctors
{
    public partial class doctorsProfile : System.Web.UI.Page
    {
        HospitalDBDataContext hsp = new HospitalDBDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["dtTC"] != null)
            {
                var getDoctor = (from DO in hsp.Doctors
                                 join DP in hsp.Departments on DO.dp_ID equals DP.dp_ID
                                 where DO.dt_TC == Session["dtTC"].ToString()
                                 select new
                                 {
                                     DO.dt_NameSurname,
                                     DO.dt_Adres,
                                     DO.dt_Cinsiyet,
                                     DP.dp_Name,
                                     DO.dt_Tel
                                 }).FirstOrDefault();

                lblAdSoyad.Text = getDoctor.dt_NameSurname;
                lblAdres.Text = getDoctor.dt_Adres;
                if (getDoctor.dt_Cinsiyet == "E")
                {
                    lblCinsiyet.Text = "Erkek";
                }
                else
                {
                    lblCinsiyet.Text = "Kadın";
                }
                lblBolum.Text = getDoctor.dp_Name;
                lblTel.Text = getDoctor.dt_Tel;
            }
        }
    }
}