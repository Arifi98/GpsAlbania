using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace GpsTirana
{
    public class sqlConfig
    {





        public SqlConnection strcon = new SqlConnection(ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString);
        public SqlCommand cmd = new SqlCommand();
        public SqlDataAdapter da = new SqlDataAdapter();
        public DataTable dt = new DataTable();
        public DataSet ds = new DataSet();
        public int result;
        public string sqladd;
        public string sqledit;
        public string sqlselect;
        public string msgadd;
        public string msgedit;
        public string sql;
        public string msg;






        public bool insert(string query)
        {
            try
            {
                strcon.Open();

                cmd = new SqlCommand();
                cmd.Connection = strcon;
                cmd.CommandText = query;

                cmd.ExecuteNonQuery();
                return true;
            }
            catch (Exception ex)
            {
                return false;
                throw ex;
            }
            finally
            {
                strcon.Close();
            }
        }


        public void SaveUpdate(string sqlselect, string sqladd, string msgadd, string sqledit, string msgedit)
        {
            try
            {
                strcon.Open();

                cmd = new SqlCommand();
                cmd.Connection = strcon;
                cmd.CommandText = sqlselect;
                da = new SqlDataAdapter();
                da.SelectCommand = cmd;
                dt = new DataTable();
                da.Fill(dt);

                int maxrows = dt.Rows.Count;

                if (maxrows > 0)
                {
                    //updating in the database; 
                    cmd = new SqlCommand();
                    cmd.Connection = strcon;
                    cmd.CommandText = sqledit;
                    result = cmd.ExecuteNonQuery();
                    if (result > 0)
                    {

                    }

                }
                else
                {
                    //adding in the database
                    cmd = new SqlCommand();
                    cmd.Connection = strcon;
                    cmd.CommandText = sqladd;
                    result = cmd.ExecuteNonQuery();
                    if (result > 0)
                    {
                        //MessageBox.Show(msgadd);
                        //user 
                        if (msgadd == "New User has been saved in the database.")
                        {
                            //auto inc
                            strcon.Close();
                            //UpdateAutonumber(2);
                            strcon.Open();
                        }
                        //end user

                        //Product 
                        if (msgadd == "New Product has been saved in the database.")
                        {
                            msg = "New Product has been saved in the database.";

                        }
                        //end Product
                        //Category 
                        if (msgadd == "New Category has been saved in the database.")
                        {
                            //auto inc
                            strcon.Close();
                            //UpdateAutonumber(4);
                            strcon.Open();
                        }
                        //end Category
                    }
                }

            }
            catch (Exception ex)
            {
                //MessageBox.Show(ex.Message);
            }
            finally
            {
                strcon.Close();
            }

        }

        public object ktheid(string sqlselect)
        {


            object resulti = -1;
            try
            {
                strcon.Open();

                cmd = new SqlCommand();
                cmd.Connection = strcon;
                cmd.CommandText = sqlselect;
                resulti = cmd.ExecuteScalar();


            }
            catch (Exception ex)
            {

            }
            finally
            {
                da.Dispose();
                strcon.Close();
            }


            return resulti;

        }

        public object kthesasi(string sqlselect)
        {


            object resulti = -1;
            try
            {
                strcon.Open();

                cmd = new SqlCommand();
                cmd.Connection = strcon;
                cmd.CommandText = sqlselect;
                resulti = cmd.ExecuteScalar();


            }
            catch (Exception ex)
            {

            }
            finally
            {
                da.Dispose();
                strcon.Close();
            }


            return resulti;

        }

        public object ktheRol(string sqlselect)
        {
            object resulti = -1;
            try
            {
                strcon.Open();

                cmd = new SqlCommand();
                cmd.Connection = strcon;
                cmd.CommandText = sqlselect;
                resulti = cmd.ExecuteScalar();
                strcon.Close();
                return resulti;

            }
            catch (Exception ex)
            {
                return resulti;
            }




        }


        //public void LoadData(string sqlselect, DataTable dtg)
        //{
        //    try
        //    {
        //        strcon.Open();

        //        cmd = new SqlCommand();
        //        cmd.Connection = strcon;
        //        cmd.CommandText = sqlselect;
        //        da = new SqlDataAdapter();
        //        da.SelectCommand = cmd;
        //        dt = new DataTable();
        //        da.Fill(dt);
        //        dtg.DataSource = dt;
        //    }
        //    catch (Exception ex)
        //    {
        //        //MessageBox.Show(ex.Message);
        //    }
        //    finally
        //    {
        //        da.Dispose();
        //        strcon.Close();
        //    }
        //}
        public void SaveDataMsg(string sql, string msg)
        {
            try
            {
                strcon.Open();

                cmd = new SqlCommand();
                cmd.Connection = strcon;
                cmd.CommandText = sql;
                result = cmd.ExecuteNonQuery();
                if (result > 0)
                {

                }

            }
            catch (Exception ex)
            {

            }
            finally
            {
                da.Dispose();
                strcon.Close();
            }

        }
        public void SaveData(string sql)
        {
            try
            {
                strcon.Open();

                cmd = new SqlCommand();
                cmd.Connection = strcon;
                cmd.CommandText = sql;
                result = cmd.ExecuteNonQuery();


            }
            catch (Exception ex)
            {

            }
            finally
            {
                da.Dispose();
                strcon.Close();
            }

        }


        public void Single_Select(string sqlselect)
        {
            try
            {
                strcon.Open();

                cmd = new SqlCommand();
                cmd.Connection = strcon;
                cmd.CommandText = sqlselect;
                da = new SqlDataAdapter();
                da.SelectCommand = cmd;
                dt = new DataTable();
                da.Fill(dt);
                //txt.Text = dt.Rows[0].Field<string>(0);
            }
            catch (Exception ex)
            {
                //MessageBox.Show(ex.Message);
            }
            finally
            {
                da.Dispose();
                strcon.Close();
            }
        }



        public DataTable DataTable(string sqlselect)
        {
            try
            {
                strcon.Open();

                cmd = new SqlCommand();
                cmd.Connection = strcon;
                cmd.CommandText = sqlselect;
                da = new SqlDataAdapter();
                da.SelectCommand = cmd;
                dt = new DataTable();
                da.Fill(dt);
                //txt.Text = dt.Rows[0].Field<string>(0);

            }
            catch (Exception ex)
            {
                //MessageBox.Show(ex.Message);
            }
            finally
            {
                da.Dispose();
                strcon.Close();
            }
            return dt;
        }




    }
}