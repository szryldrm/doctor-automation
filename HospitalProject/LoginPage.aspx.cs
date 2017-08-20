using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace HospitalProject
{
    public partial class LoginPage : System.Web.UI.Page
    {
        HospitalDBDataContext hsp = new HospitalDBDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnLogin_ServerClick(object sender, EventArgs e)
        {
            var query = (from data in hsp.Patients
                         where data.pt_TC == txtUserName.Value  && data.pt_Password == txtPassword.Value
                         select data).Any();
            if (txtUserName.Value == String.Empty && txtPassword.Value == String.Empty)
            {
                alertDiv.Visible = true;
                alertDiv.CssClass = "alert alert-warning";
                lblAlert.Text = "Kullanıcı Adı veya Şifre Boş Olamaz!";
            }
            else if (query)
            {
                alertDiv.Visible = true;
                alertDiv.CssClass = "alert alert-success";
                lblAlert.Text = "Giriş Başarılı Yönlendiriliyorsunuz...";
                Session["Login"] = hsp.Patients.SingleOrDefault(u => u.pt_TC == txtUserName.Value).pt_TC;
                HtmlMeta meta = new HtmlMeta();
                meta.HttpEquiv = "Refresh";
                meta.Content = "2;url=../default.aspx";
                this.Page.Controls.Add(meta);
            }
            else
            {
                alertDiv.Visible = true;
                alertDiv.CssClass += "alert alert-danger";
                lblAlert.Text = "Kullanıcı Adı veya Şifre Hatalı";
            }
        }
    }
}