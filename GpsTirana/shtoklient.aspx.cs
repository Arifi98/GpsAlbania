using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GpsTirana
{
    public partial class shtoklient : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void save(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(emer.Text))
            {

                string id = idkarte.Value;
                kthe_info_id(id);

            }
            else
            {

                ScriptManager.RegisterStartupScript(this.Page, this.Page.GetType(),
                          "err_msg",
                          "alert('Ploteso fushat e formes!)');",
                          true);

            }



        }

        public void kthe_info_id(string id)
        {
            sqlConfig sqlConfig = new sqlConfig();
            sqlConfig.strcon.Open();

            string query = "select Count(IdKarte) from client where IdKarte like '" + id + "' ";

            SqlCommand cmd = new SqlCommand(query, sqlConfig.strcon);

            var gjendet = cmd.ExecuteScalar();
            sqlConfig.strcon.Close();
            if (Convert.ToInt32(gjendet) != 0)
            {
                //ateher ka nje id me kte idkarte 


                ScriptManager.RegisterStartupScript(this.Page, this.Page.GetType(),
                          "err_msg",
                          "alert('ky klient eshte i rregjistruar tek klienti .... me targe .....!)');",
                          true);



            }
            else
            {
                string mystring = string.Empty;//gjinia

                if (gjinia2.Checked == true)
                {

                    mystring = gjinia2.Value;

                }

                if (gjinia1.Checked == true)
                {

                    mystring = gjinia1.Value;

                }


                string queryy = "insert into client(emer, atesi,mbiemer,IdKarte,Email, numer_kontrate , gjinia, adress,date_inserted) values('" + emer.Text + "','" + atesia.Value + "','" + mbiemri.Value + "','" + idkarte.Value + "','" + email.Value + "','" + kontrata.Value + "','" + mystring + "','" + adresa.Value + "','" + DateTime.Now + "')";

                if (sqlConfig.insert(queryy))
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", "admin()", true);

                }
                else
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", "operator()", true);

                }


            }


        }

        protected void GetGender()
        {
        }
    }
}