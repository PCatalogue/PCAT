using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace ProductCatalogue
{
    public partial class NewPCR : System.Web.UI.Page
    {

        SqlDataAdapter adp = null;
        SqlConnection con = null;
        string value;
        string titlevalue;
        protected void Page_Load(object sender, EventArgs e)
        {

            string C = ConfigurationManager.ConnectionStrings["Con"].ToString();
            con = new SqlConnection(C);
            //demo DataAdapter, MODIFY it!
            adp = new SqlDataAdapter("select * from PCR", con);

        }

        protected void ddservices_SelectedIndexChanged(object sender, EventArgs e)
        {
            

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            try
            {

                DataSet ds = new DataSet();
                adp.Fill(ds, "Pcr");
                DataRow dr = ds.Tables["Pcr"].NewRow();

                dr[0] = txttitle.Text;
                dr[1] = ddservices.SelectedValue;

                ds.Tables["Pcr"].Rows.Add(dr);

                SqlCommandBuilder com = new SqlCommandBuilder(adp);
                adp.InsertCommand = com.GetInsertCommand();
                adp.Update(ds, "Pcr");

                value = ddservices.SelectedValue;
                titlevalue = txttitle.Text;
                Cache["V1"] = value;
                Cache["V2"] = titlevalue;
                Response.Redirect("Show_Products.aspx");

            }

            catch (SqlException ex)
            {
                switch (ex.Number)
                {
                    case 4060: // Invalid Database
                        ClientScript.RegisterStartupScript(this.GetType(), "Success", "<script type='text/javascript'>alert('Some Error Occured!');window.location='Homepage.aspx';</script>'");
                        break;
                    case 18456: // Login Failed

                        ClientScript.RegisterStartupScript(this.GetType(), "Success", "<script type='text/javascript'>alert('Some Error Occured!');window.location='Homepage.aspx';</script>'");
                        break;
                    case 547: // ForeignKey Violation

                        ClientScript.RegisterStartupScript(this.GetType(), "Success", "<script type='text/javascript'>alert('Some Error Occured!');window.location='Homepage.aspx';</script>'");
                        break;
                    case 2627: // Unique Index/ Primary key Violation/ Constriant Violation
                        ClientScript.RegisterStartupScript(this.GetType(), "Success", "<script type='text/javascript'>alert('Title Already Exists!');window.location='NewPCR.aspx';</script>'");

                        break;
                    case 2601: // Unique Index/Constriant Violation
                        //ClientScript.RegisterStartupScript(this.GetType(), "Success", "<script type='text/javascript'>alert('Some Error Occured!');window.location='Homepage.aspx';</script>'");
                        break;
                    default:

                        break;
                }
            }


            }



        }
    }
