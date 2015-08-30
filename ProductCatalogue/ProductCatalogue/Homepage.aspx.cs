using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

namespace ProductCatalogue
{
    public partial class Homepage : System.Web.UI.Page
    {
        SqlConnection Con = null;
        SqlDataAdapter Adp = null;
        SqlDataAdapter Adp1 = null;
        SqlDataAdapter Adp2 = null;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            try
            {
                string C = ConfigurationManager.ConnectionStrings["Con"].ToString();
                Con = new SqlConnection(C);

Adp=new SqlDataAdapter("select P.Product_Name,A.Zipcode,State_CD,P.PROD from Products P inner join Product_Avail A on P.Product_ID=A.Product_ID where A.Service_ID=@P",Con);
                //Adp = new SqlDataAdapter("Select * from Products  where Service_ID=@P", Con);
                Adp.SelectCommand.Parameters.AddWithValue("@P", ddservices.SelectedValue);


                DataSet Ds = new DataSet();


                Adp.Fill(Ds, "D");
                GridView1.DataSource = Ds.Tables["D"];
                GridView1.DataBind();



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
                        ClientScript.RegisterStartupScript(this.GetType(), "Success", "<script type='text/javascript'>alert('Title Already Exists!');window.location='Homepage.aspx';</script>'");

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