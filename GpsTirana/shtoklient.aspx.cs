using System;
using System.Collections.Generic;
using System.Data;
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
            //raport raporte = new raport();
            //raporte.Totali_me_Roaming_klient("arif");


            string gjinia = kthe_gjini();
            if (!string.IsNullOrEmpty(emer.Text)&& !string.IsNullOrEmpty(gjinia)&& !string.IsNullOrEmpty(idkarte.Value) && !string.IsNullOrEmpty(gjinia)
               && !string.IsNullOrEmpty(atesia.Value)&& !string.IsNullOrEmpty(email.Value)&& !string.IsNullOrEmpty(phone.Value)&& !string.IsNullOrEmpty(adresa.Value)&& !string.IsNullOrEmpty(kontrata.Value))
            {

                string id = idkarte.Value;
                kthe_info_id(id , gjinia);

            }
            else
            {

                ScriptManager.RegisterStartupScript(this.Page, this.Page.GetType(),
                          "err_msg",
                          "alert('Ploteso fushat e formes!)');",
                          true);

            }



        }

        public void kthe_info_id(string id ,string gjinia)
        {
            string emeri = string.Empty;
            string targa = string.Empty;
            sqlConfig sqlConfig = new sqlConfig();


            string query = "select Count(IdKarte) from client where IdKarte like '" + id + "' ";

            SqlCommand cmd = new SqlCommand(query, sqlConfig.strcon);
            string gjejTarge = "select t.targa , e.emer from client e inner join instalim t on e.id = t.id_klienti where e.IdKarte like '" + id + "'";
            sqlConfig.Single_Select(gjejTarge);
            sqlConfig.strcon.Open();
            var gjendet = cmd.ExecuteScalar();
            sqlConfig.strcon.Close();

            if (Convert.ToInt32(gjendet) != 0)
            {

                if (sqlConfig.dt.Rows.Count > 0)
                {
                    emeri = sqlConfig.dt.Rows[0].Field<string>("emer");
                    targa = sqlConfig.dt.Rows[0].Field<string>("targa");

                    ScriptManager.RegisterStartupScript(this.Page, this.Page.GetType(),
                          "err_msg",
                          "alert('ky klient eshte i rregjistruar me emer " + emeri.ToLower() + " dhe  me targe " + targa.ToLower() + "!');",
                          true);

                }
                else
                {
                    ScriptManager.RegisterStartupScript(this.Page, this.Page.GetType(),
                          "err_msg",
                          "alert('ky klient eshte i rregjistruar por nuk ka akoma nje sherbim');",
                          true);
                }



            }

            else
            {
               


                string queryy = "insert into client(emer, atesi,mbiemer,IdKarte,Email, numer_kontrate , gjinia, adress,date_inserted) values('" + emer.Text + "','" + atesia.Value + "','" + mbiemri.Value + "','" + idkarte.Value + "','" + email.Value + "','" + kontrata.Value + "','" + gjinia + "','" + adresa.Value + "','" + DateTime.Now + "')";

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

        protected string kthe_gjini()
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
            return mystring;

        }
    }
}