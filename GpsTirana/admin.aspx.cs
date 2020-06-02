using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GpsTirana
{
    public partial class admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(Session["name"].ToString()))
            {
                loginUsername.Text = "Welcome   " + FirstLetterToUpper(Session["name"].ToString());
                email.Text = Convert.ToString(ktheEmail(Session["name"].ToString()));
            }
            else
            {
                loginUsername.Text = "Welcome   User";

            }




        }



        public object ktheEmail(string username)
        {

            sqlConfig sqlConfig = new sqlConfig();
            var emaill = sqlConfig.ktheRol("select email  from useri where username ='" + username + "'");
            return emaill;
        }

        public string FirstLetterToUpper(string str)
        {
            if (str == null)
                return null;

            if (str.Length > 1)
                return char.ToUpper(str[0]) + str.Substring(1);

            return str.ToUpper();
        }
    }
}