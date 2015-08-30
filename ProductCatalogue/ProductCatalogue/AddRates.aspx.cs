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
    public partial class AddRates : System.Web.UI.Page
    {


        SqlDataAdapter adp = null;
        SqlDataAdapter rateadp = null;
        SqlConnection con = null;
        SqlDataAdapter stateAdp = null;
        string a;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Cache["V1"] != null)
            {
                a = Request.QueryString["V1"].ToString();
            }
            string C = ConfigurationManager.ConnectionStrings["Con"].ToString();
            con = new SqlConnection(C);
            //demo DataAdapter, MODIFY it!
            adp = new SqlDataAdapter("Select * from Products  where Product_ID=@P", con);
            adp.SelectCommand.Parameters.AddWithValue("@P", a);

            rateadp = new SqlDataAdapter("select * from Product_Rates", con);
            stateAdp = new SqlDataAdapter("Select State_CD from State ", con);


            DataSet stateDs = new DataSet();

            if (!IsPostBack) //if it not the first time
            {

                DataSet ds = new DataSet();
                adp.Fill(ds, "Prod");

                DataRow dr = ds.Tables["Prod"].Rows[0];
                txtProductID.Text = dr[0].ToString();
                txtProductName.Text = dr[1].ToString();
                


                ddstate.Items.Add("-Select-");
                stateAdp.Fill(stateDs, "D");
                ddstate.DataSource = stateDs.Tables["D"];
                ddstate.DataTextField = "State_CD";
                //ddstate.DataValueField = "State_CD";
                ddstate.DataBind();


            }
        }

        protected void btnAddRates_Click(object sender, EventArgs e)
        {

            try
            {

                DataSet rateds = new DataSet();
                rateadp.Fill(rateds, "Rate");
                DataRow dq = rateds.Tables["Rate"].NewRow();





                //Rates Table
                dq[1] = txtProductID.Text;
                dq[2] = double.Parse(txtamount.Text);
                dq[3] = ddstate.Text;
                dq[4] = txtEffDate.Text;
                dq[5] = txtEndDate.Text;
                dq[6] = "N";
                dq[8] = DateTime.Now.ToString();
                dq[9] = Int32.Parse(txtDiscount.Text);




                rateds.Tables["Rate"].Rows.Add(dq);

                SqlCommandBuilder com1 = new SqlCommandBuilder(rateadp);
                rateadp.InsertCommand = com1.GetInsertCommand();
                rateadp.Update(rateds, "Rate");




                ClientScript.RegisterStartupScript(this.GetType(), "Success", "<script type='text/javascript'>alert('Rate Added Successfully!');window.location='Show_Products.aspx';</script>'");


            }



            catch (SqlException ex)
            {
                switch (ex.Number)
                {
                    case 4060: // Invalid Database
                        ClientScript.RegisterStartupScript(this.GetType(), "Success", "<script type='text/javascript'>alert('Some Error Occured!');window.location='Show_Products.aspx';</script>'");
                        break;
                    case 18456: // Login Failed

                        ClientScript.RegisterStartupScript(this.GetType(), "Success", "<script type='text/javascript'>alert('Some Error Occured!');window.location='Show_Products.aspx';</script>'");
                        break;
                    case 547: // ForeignKey Violation

                        ClientScript.RegisterStartupScript(this.GetType(), "Success", "<script type='text/javascript'>alert('Some Error Occured!');window.location='Show_Products.aspx';</script>'");
                        break;
                    case 2627: // Unique Index/ Primary key Violation/ Constriant Violation
                        ClientScript.RegisterStartupScript(this.GetType(), "Success", "<script type='text/javascript'>alert('Product Id Already Exists!');window.location='Add_Product.aspx';</script>'");

                        break;
                    case 2601: // Unique Index/Constriant Violation
                        ClientScript.RegisterStartupScript(this.GetType(), "Success", "<script type='text/javascript'>alert('Some Error Occured!');window.location='Show_Products.aspx';</script>'");
                        break;




                    default:

                        break;
                }
            }

           

            
            
        }

        
    }
}