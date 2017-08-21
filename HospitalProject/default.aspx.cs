using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HospitalProject
{
    public partial class _default : System.Web.UI.Page
    {
        HospitalDBDataContext hsp = new HospitalDBDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var getList = (from PE in hsp.PastExamines
                               join DO in hsp.Doctors on PE.dt_ID equals DO.dt_ID
                               join PT in hsp.Patients on PE.pt_ID equals PT.pt_ID
                               join DP in hsp.Departments on DO.dt_ID equals DP.dp_ID
                               where PT.pt_TC == Session["Login"].ToString()
                               select new
                               {
                                   PE.ex_Aciklama,
                                   PE.ex_Sonuc,
                                   PE.ex_Tarih,
                                   PE.ex_Ucret,
                                   DO.dt_NameSurname,
                                   DP.dp_Name
                               }).ToList();

                rptPastExamine.DataSource = getList;
                rptPastExamine.DataBind();
            }

        }
    }
}