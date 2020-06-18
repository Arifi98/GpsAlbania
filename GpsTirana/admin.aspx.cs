using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.Services;
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
        [WebMethod]
        public static List<user> GetClient()
        {
            List<user> users = new List<user>();
            var query = "SELECT * FROM useri";
            //SqlConnection conn = new SqlConnection(@"Data Source=(LocalDb)\MSSQLLocalDB;Integrated Security=true;Initial Catalog=Gps");

            using (SqlConnection con = new SqlConnection(@"Data Source=(LocalDb)\MSSQLLocalDB;Integrated Security=true;Initial Catalog=Gps"))
            {
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    con.Open();
                    using (SqlDataReader sdr = cmd.ExecuteReader())
                    {
                        while (sdr.Read())
                        {
                            users.Add(new user
                            {
                                id = Convert.ToInt32(sdr["id"]),
                                username = sdr["username"].ToString(),
                                password = sdr["password"].ToString(),
                                role = sdr["role"].ToString(),
                                email = sdr["email"].ToString()
                            });
                        }
                    }
                    con.Close();
                }
            }

            return users;
        }
    }
}