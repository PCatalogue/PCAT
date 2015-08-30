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
    public partial class Modify_Y : System.Web.UI.Page
    {
        SqlDataAdapter adp = null;
        SqlConnection con = null;
        SqlDataAdapter Adp = null;

        string a;
        protected void Page_Load(object sender, EventArgs e)
        {
            a = Request.QueryString["V1"].ToString();

            string C = ConfigurationManager.ConnectionStrings["Con"].ToString();
            con = new SqlConnection(C);
            if (!IsPostBack)
            {
                adp = new SqlDataAdapter("Select * from Products  where Product_ID=@P", con);
                adp.SelectCommand.Parameters.AddWithValue("@P", a);

                DataSet ds = new DataSet();
                adp.Fill(ds, "Prod");

                DataRow dr = ds.Tables["Prod"].Rows[0];
                txtProductID.Text = dr[0].ToString();
                txtProductName.Text = dr[1].ToString();
                txtDescription.Text = dr[2].ToString();




                txtEffDate.Text = DateTime.Parse(dr[3].ToString()).ToString("dd-MM-yyyy");
                txtEndDate.Text = DateTime.Parse(dr[4].ToString()).ToString("dd-MM-yyyy");
                //txtEffDate.Text = dr[3].ToString();
                //txtEndDate.Text = dr[4].ToString();
                ddlServiceType.Text = dr[5].ToString();

            }
        }

        protected void btnSaveProduct_Click(object sender, EventArgs e)
        {
            try
            {
                Adp = new SqlDataAdapter("select * from Products where Product_ID=@p", con);
                Adp.SelectCommand.Parameters.AddWithValue("@p", a);
                DataSet ds = new DataSet();
                Adp.Fill(ds, "prod");

                DataRow dr = ds.Tables["prod"].Rows[0];

                //dr[0] = txtProductID.Text;
                dr[1] = txtProductName.Text;
                dr[2] = txtDescription.Text;
                dr[3] = txtEffDate.Text;//change this to ONLY DATE! 
                dr[4] = txtEndDate.Text;
                dr[5] = ddlServiceType.SelectedValue;
                dr[6] = "N";
                dr[8] = DateTime.Now.ToString();

                SqlCommandBuilder cb = new SqlCommandBuilder(Adp);
                Adp.UpdateCommand = cb.GetUpdateCommand();
                Adp.Update(ds, "prod");

            }
            catch (SqlException ex)
            {
                Console.WriteLine("Couldnot update" + ex.Message);
            }
            catch (FormatException fx)
            {
                Console.WriteLine("Couldnot update" + fx.Message);
            }


            ClientScript.RegisterStartupScript(this.GetType(), "Success", "<script type='text/javascript'>alert('Product Modified Successfully!');window.location='Show_Products.aspx';</script>'");
        }


        protected void ddlServiceType_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}