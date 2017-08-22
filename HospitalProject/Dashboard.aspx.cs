using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HospitalProject
{
    public partial class Dashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
            Fill();
        }

        HospitalDBDataContext hsp = new HospitalDBDataContext();

        private void Fill()
        {
            if (Session["TC"] != null)
            {
                string tc = Session["TC"].ToString();

                var getList = (from PE in hsp.PastExamines
                               join DO in hsp.Doctors on PE.dt_ID equals DO.dt_ID
                               join PT in hsp.Patients on PE.pt_ID equals PT.pt_ID
                               join DP in hsp.Departments on DO.dt_ID equals DP.dp_ID
                               where PT.pt_TC == tc
                               select new
                               {
                                   PE.ex_ID,
                                   PE.ex_Aciklama,
                                   PE.ex_Sonuc,
                                   PE.ex_Tarih,
                                   PE.ex_Ucret,
                                   DO.dt_NameSurname,
                                   DP.dp_Name
                               }).ToList().OrderByDescending(x => x.ex_Tarih);

                rptPastExamine.DataSource = getList;
                rptPastExamine.DataBind();
            }
        }
    }
}
