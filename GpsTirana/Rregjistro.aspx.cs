using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Net.Mail;
using System.Net;

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
                        if (Convert.ToInt32(ka_sherbim) == 1)
                        {
                            ScriptManager.RegisterStartupScript(this.Page, this.Page.GetType(),
                                  "err_msg",
                                  "alert('ky klient ka te rregjistruar  " + Convert.ToInt32(ka_sherbim) + " makine ');",
                                  true);
                        }
                        else
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
                               "alert('ky klient nuk  ka asnje makine te rregjistruar');",
                               true);
                    }

                }
                else
                {
                    ScriptManager.RegisterStartupScript(this.Page, this.Page.GetType(),
                                "err_msg",
                                "alert('ky klient nuk  egziston i rregjistruar ');",
                                true);
                }




            }
            else
            {
                ScriptManager.RegisterStartupScript(this.Page, this.Page.GetType(),
                            "err_msg",
                            "alert('Ploteso fushat');",
                            true);

            }
        }




        protected void save(object sender, EventArgs e)
        {
            save_instalim();

        }

        protected void saveemail(object sender, EventArgs e)
        {
            try
            {
                string paisja = paisje();

                string sherbimi = lloj_sherbimi();

                string vendiInstalimit = vend_instalimi();
                string pagesa = menyra_pageses();


                sqlConfig sqlConfig = new sqlConfig();
                if (!string.IsNullOrEmpty(emer.Value) && !string.IsNullOrEmpty(idkarte.Value) && !string.IsNullOrEmpty(sherbimi)
                    && !string.IsNullOrEmpty(vendiInstalimit) && !string.IsNullOrEmpty(pagesa) && !string.IsNullOrEmpty(paisja) && !string.IsNullOrEmpty(modeli.Value) &&
                   !string.IsNullOrEmpty(targa.Value) && !string.IsNullOrEmpty(imei.Value) && !string.IsNullOrEmpty(Nr_teli.Value) && !string.IsNullOrEmpty(Text1.Value))
                {

                    sqlConfig.strcon.Open();
                    string query = "select idKlienti from client where emer = '" + emer.Value + "' and IdKarte ='" + idkarte.Value + "'";
                    SqlCommand cmd = new SqlCommand(query, sqlConfig.strcon);
                    var gjendet = cmd.ExecuteScalar();
                    sqlConfig.strcon.Close();
                    if (Convert.ToInt32(gjendet) != 0)
                    {
                        sqlConfig.strcon.Open();
                        string insert_sherbim = "insert into instalim values(" + gjendet + ",'" + targa.Value + "','" + modeli.Value + "','" + paisja + "','" + imei.Value + "','+355 " + Nr_teli.Value + "','" + sherbimi + "','" + vendiInstalimit + "','" + pagesa + "','" + Text2.Value + "','" + Convert.ToString(DateTime.Now) + "','" + Text1.Value + "' )";
                        SqlCommand cmdd = new SqlCommand(insert_sherbim, sqlConfig.strcon);
                        var ka_sherbim = cmdd.ExecuteNonQuery();

                        var client = new SmtpClient("smtp.gmail.com", 587)
                        {
                            Credentials = new NetworkCredential("rifi9898@gmail.com", "Rifi98@@$"),
                            EnableSsl = true
                        };
                        client.Send("rifi9898@gmail.com", "arif.bucpapaj98@gmail.com", "GpsAlbania", "Klientit me emer :" + emer.Value + " mori sherbim ne mjetin me targe: " + targa.Value.ToUpper() + " ");



                        ScriptManager.RegisterStartupScript(this.Page, this.Page.GetType(),
                                  "err_msg",
                                  "alert('ky sherbim i shtua me sukses tek " + emer.Value.ToUpper() + " dhe u dergua ne email');",
                                  true);



                    }
                    else
                    {
                        ScriptManager.RegisterStartupScript(this.Page, this.Page.GetType(),
                                   "err_msg",
                                   "alert('ky klient nuk  egziston i rregjistruar , rregjistro klientin ne fillim');",
                                   true);
                    }

                }
                else
                {
                    ScriptManager.RegisterStartupScript(this.Page, this.Page.GetType(),
                                 "err_msg",
                                 "alert('Ploteso fushat');",
                                 true);
                }










            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


        public string paisje()
        {
            string mystring = string.Empty;//gjinia

            if (paisje1.Checked == true)
            {

                mystring = paisje1.Value;

            }

            if (paisje2.Checked == true)
            {

                mystring = paisje2.Value;

            }
            if (paisje3.Checked == true)
            {

                mystring = paisje3.Value;

            }

            if (paisje4.Checked == true)
            {

                mystring = paisje4.Value;

            }

            return mystring;

        }
        public string lloj_sherbimi()
        {
            string mystring = string.Empty;//gjinia

            if (basic.Checked == true)
            {
                if (!string.IsNullOrEmpty(mystring))
                {
                    mystring = mystring + "," + basic.Value;
                }
                else
                {
                    mystring = basic.Value;
                }

            }

            if (kofani.Checked == true)
            {
                if (!string.IsNullOrEmpty(mystring))
                {
                    mystring = mystring + "," + kofani.Value;
                }
                else
                {
                    mystring = kofani.Value;
                }


            }
            if (shitje.Checked == true)
            {

                if (!string.IsNullOrEmpty(mystring))
                {
                    mystring = mystring + "," + shitje.Value;
                }
                else
                {
                    mystring = shitje.Value;
                }

            }

            if (fikje.Checked == true)
            {

                if (!string.IsNullOrEmpty(mystring))
                {
                    mystring = mystring + "," + fikje.Value;
                }
                else
                {
                    mystring = fikje.Value;
                }

            }
            if (Roaming.Checked == true)
            {
                if (!string.IsNullOrEmpty(mystring))
                {
                    mystring = mystring + "," + Roaming.Value;
                }
                else
                {
                    mystring = Roaming.Value;
                }
            }

            if (karburant.Checked == true)
            {
                if (!string.IsNullOrEmpty(mystring))
                {
                    mystring = mystring + "," + karburant.Value;
                }
                else
                {
                    mystring = karburant.Value;
                }

            }
            if (LVCAN.Checked == true)
            {
                if (!string.IsNullOrEmpty(mystring))
                {
                    mystring = mystring + "," + LVCAN.Value;
                }
                else
                {
                    mystring = LVCAN.Value;
                }

            }

            return mystring;

        }

        public string menyra_pageses()
        {
            string mystring = string.Empty;//gjinia

            if (tremuaj.Checked == true)
            {

                mystring = tremuaj.Value;

            }

            if (gjashtemuaj.Checked == true)
            {

                mystring = gjashtemuaj.Value;

            }
            if (muaj.Checked == true)
            {

                mystring = muaj.Value;

            }

            if (Muajii.Checked == true)
            {

                mystring = Muajii.Value;

            }


            return mystring;

        }
        public string vend_instalimi()
        {
            string mystring = string.Empty;//

            if (Dashboard.Checked == true)
            {

                mystring = Dashboard.Value;

            }

            if (Kofano.Checked == true)
            {

                mystring = Kofano.Value;

            }
            if (ObdSiguresa.Checked == true)
            {

                mystring = ObdSiguresa.Value;

            }

            if (Bagazh.Checked == true)
            {

                mystring = Bagazh.Value;

            }
            if (Kasetofon.Checked == true)
            {

                mystring = Kasetofon.Value;

            }
            if (PasagjerSiguresa.Checked == true)
            {

                mystring = PasagjerSiguresa.Value;

            }

            return mystring;

        }

        public bool save_instalim()
        {
            bool result = false;
            try
            {


                string paisja = paisje();

                string sherbimi = lloj_sherbimi();

                string vendiInstalimit = vend_instalimi();
                string pagesa = menyra_pageses();


                sqlConfig sqlConfig = new sqlConfig();
                if (!string.IsNullOrEmpty(emer.Value) && !string.IsNullOrEmpty(idkarte.Value) && !string.IsNullOrEmpty(sherbimi)
                    && !string.IsNullOrEmpty(vendiInstalimit) && !string.IsNullOrEmpty(pagesa) && !string.IsNullOrEmpty(paisja) && !string.IsNullOrEmpty(modeli.Value) &&
                   !string.IsNullOrEmpty(targa.Value) && !string.IsNullOrEmpty(imei.Value) && !string.IsNullOrEmpty(Nr_teli.Value) && !string.IsNullOrEmpty(Text1.Value))
                {

                    sqlConfig.strcon.Open();
                    string query = "select idKlienti from client where emer = '" + emer.Value + "' and IdKarte ='" + idkarte.Value + "'";
                    SqlCommand cmd = new SqlCommand(query, sqlConfig.strcon);
                    var gjendet = cmd.ExecuteScalar();
                    sqlConfig.strcon.Close();
                    if (Convert.ToInt32(gjendet) != 0)
                    {
                        sqlConfig.strcon.Open();
                        string insert_sherbim = "insert into instalim values(" + gjendet + ",'" + targa.Value + "','" + modeli.Value + "','" + paisja + "','" + imei.Value + "','+355 " + Nr_teli.Value + "','" + sherbimi + "','" + vendiInstalimit + "','" + pagesa + "','" + Text2.Value + "','" + Convert.ToString(DateTime.Now) + "','" + Text1.Value + "' )";
                        SqlCommand cmdd = new SqlCommand(insert_sherbim, sqlConfig.strcon);
                        var ka_sherbim = cmdd.ExecuteNonQuery();


                        ScriptManager.RegisterStartupScript(this.Page, this.Page.GetType(),
                                  "err_msg",
                                  "alert('ky sherbim i shtua me sukses tek " + emer.Value.ToUpper() + "');",
                                  true);


                        result = true;
                    }
                    else
                    {
                        ScriptManager.RegisterStartupScript(this.Page, this.Page.GetType(),
                                   "err_msg",
                                   "alert('ky klient nuk  egziston i rregjistruar , rregjistro klientin ne fillim');",
                                   true);
                    }

                }
                else
                {
                    ScriptManager.RegisterStartupScript(this.Page, this.Page.GetType(),
                                  "err_msg",
                                  "alert('Ploteso fushat');",
                                  true);
                }
                return result;

            }
            catch (Exception ex)
            {
                return result;
                throw ex;
            }

        }

        //public int ktheidklienti()
        //{
        //    sqlConfig sqlConfig = new sqlConfig();
        //    sqlConfig.strcon.Open();
        //    string query = "select idKlienti from client where emer = '" + emer.Value + "' and IdKarte ='" + idkarte.Value + "'";
        //    SqlCommand cmd = new SqlCommand(query, sqlConfig.strcon);
        //}

    }
}