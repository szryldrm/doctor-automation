using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace HospitalProject
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
            check();
        }

        private void check()
        {
            if (Session["TC"] != null)
            {
                Response.Redirect("Dashboard.aspx");
            }
        }

        HospitalDBDataContext hsp = new HospitalDBDataContext();

        protected void btnLogin_ServerClick(object sender, EventArgs e)
        {
            try
            {
                string UserName = txtUserName.Value.Trim();
                string PWD = txtPassword.Value.Trim();
                var q = hsp.Patients.Where(x => x.pt_TC == UserName && x.pt_Password == PWD).ToList();
                if (q.Count() == 1)
                {
                    alertDiv.Visible = true;
                    alertDiv.CssClass = "alert alert-success";
                    lblAlert.Text = "Giriş Başarılı Yönlendiriliyorsunuz...";
                    Session["TC"] = q.FirstOrDefault().pt_TC;
                    Session["Name"] = q.FirstOrDefault().pt_NameSurname;
                    HtmlMeta meta = new HtmlMeta();
                    meta.HttpEquiv = "Refresh";
                    meta.Content = "2;url=../Dashboard.aspx";
                    this.Page.Controls.Add(meta);
                }
            }
            catch (Exception ex)
            {
                alertDiv.Visible = true;
                alertDiv.CssClass = "alert alert-warning";
                lblAlert.Text = "Hata oluştu! Hata: " + ex.Message;
            }
            //var query = (from data in hsp.Patients
            //             where data.pt_TC == txtUserName.Value && data.pt_Password == txtPassword.Value
            //             select data).Any();
            //if (txtUserName.Value == String.Empty && txtPassword.Value == String.Empty)
            //{
            //    alertDiv.Visible = true;
            //    alertDiv.CssClass = "alert alert-warning";
            //    lblAlert.Text = "Kullanıcı Adı veya Şifre Boş Olamaz!";
            //}
        }
    }
}