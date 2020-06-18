using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Threading;

namespace GpsTirana
{
    public partial class signin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LOGIN(object sender, EventArgs e)
        {
            var username = usernamee.Value;
            var passi = pasi.Value;


            sqlConfig sqlConfig = new sqlConfig();
            var rol = sqlConfig.ktheRol("select role  from useri where username ='" + username + "'  and password ='" + passi + "'");
            //Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", "successalert()", true);


            if (Convert.ToInt32(rol) == 1)
            {
                Session["name"] = username;
                Response.Redirect("admintable.aspx");
            }
            if (Convert.ToInt32(rol) == 2)
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "randomtext", "Operator()", true);
               

            }
            if (Convert.ToInt32(rol) != 1 && Convert.ToInt32(rol) != 2)
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "randomtext", "a()", true);
            }
        }



    }
}
