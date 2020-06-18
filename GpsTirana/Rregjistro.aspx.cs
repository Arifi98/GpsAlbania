using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GpsTirana
{
    public partial class Rregjistro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void shiko_nese_ka_sherbim(object sender, EventArgs e)
        {
            sqlConfig sqlConfig = new sqlConfig();
            if (!string.IsNullOrEmpty(emer.Value) && !string.IsNullOrEmpty(idkarte.Value))
            {

                sqlConfig.strcon.Open();
                string query = "select idKlienti from client where emer = '" + emer.Value + "' and IdKarte ='" + idkarte.Value + "'";
                SqlCommand cmd = new SqlCommand(query, sqlConfig.strcon);
                var gjendet = cmd.ExecuteScalar();
                sqlConfig.strcon.Close();
                if (Convert.ToInt32(gjendet) != 0)
                {
                    sqlConfig.strcon.Open();
                    string kthe_sa_makina_ka_klienti = "select count(*) from client e inner join instalim t on e.idKlienti = t.id_klienti where e.IdKarte like '" + idkarte.Value + "'";
                    SqlCommand cmdd = new SqlCommand(kthe_sa_makina_ka_klienti, sqlConfig.strcon);
                    var ka_sherbim = cmdd.ExecuteScalar();

                    if (Convert.ToInt32(ka_sherbim) != 0)
                    {

                        ScriptManager.RegisterStartupScript(this.Page, this.Page.GetType(),
                                  "err_msg",
                                  "alert('ky klient ka te rregjistruar  " + Convert.ToInt32(ka_sherbim) + " makina ');",
                                  true);
                    }

                }
                else
                {
                    ScriptManager.RegisterStartupScript(this.Page, this.Page.GetType(),
                                "err_msg",
                                "alert('ky klient nuk  ka te rregjistruar asnje  makine ');",
                                true);
                }




            }
        }
    }
}