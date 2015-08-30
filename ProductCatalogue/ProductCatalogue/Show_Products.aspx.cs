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
    public partial class Show_Products : System.Web.UI.Page
    {
        SqlConnection Con = null;
        SqlDataAdapter Adp = null;
        SqlDataAdapter Adp1 = null;
        string a;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Cache["V1"] != null)
            {
                a = Cache["V1"].ToString();
            }

            try
            {
                string C = ConfigurationManager.ConnectionStrings["Con"].ToString();
                Con = new SqlConnection(C);



                Adp = new SqlDataAdapter("Select * from Products  where Service_ID=@P", Con);
                Adp.SelectCommand.Parameters.AddWithValue("@P", a);


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
                        ClientScript.RegisterStartupScript(this.GetType(), "Success", "<script type='text/javascript'>alert('Some Error Occured!');window.location='Homepage.aspx';</script>'");
                        break;
                }
            }


          
        }

        protected void Show()
        {
            try
            {
                Adp = new SqlDataAdapter("Select * from Products  where Service_ID=@P", Con);
                Adp.SelectCommand.Parameters.AddWithValue("@P", a);


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
                        ClientScript.RegisterStartupScript(this.GetType(), "Success", "<script type='text/javascript'>alert('Some Error Occured!');window.location='Homepage.aspx';</script>'");
                        break;
                    default:

                        break;
                }
            }

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Add_Product.aspx?V1=" + a);
                    
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                if (!string.IsNullOrEmpty(txtsearch.Text))
                {

                    //DataTable ds = new DataTable();
                    //ds = null;
                    GridView1.DataSource = null;
                    GridView1.DataBind();

                    //GridView1.DataBind();


                    Adp1 = new SqlDataAdapter("Select * from Products  where Product_ID=@r", Con);
                    Adp1.SelectCommand.Parameters.AddWithValue("@r", txtsearch.Text);


                    DataSet Ds1 = new DataSet();


                    Adp1.Fill(Ds1, "Dr");
                    GridView1.DataSource = Ds1.Tables["Dr"];
                    GridView1.DataBind();

                }

                else
                {

                    Adp = new SqlDataAdapter("Select * from Products  where Service_ID=@P", Con);
                    Adp.SelectCommand.Parameters.AddWithValue("@P", a);


                    DataSet Ds = new DataSet();


                    Adp.Fill(Ds, "D");
                    GridView1.DataSource = Ds.Tables["D"];
                    GridView1.DataBind();

                }
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
                        ClientScript.RegisterStartupScript(this.GetType(), "Success", "<script type='text/javascript'>alert('Some Error Occured!');window.location='Homepage.aspx';</script>'");
                        break;
                    default:

                        break;
                }
            }





        }

        protected void Button3_Click(object sender, EventArgs e)
        {

        }

        protected void Button4_Click(object sender, EventArgs e)
        {

        }

        protected void Button4_Click1(object sender, EventArgs e)
        {
            Response.Redirect("Bundle_Begin.aspx");
        }

        protected void Button3_Click1(object sender, EventArgs e)
        {
            Response.Redirect("Bundle_View.aspx");
        }
    }
}