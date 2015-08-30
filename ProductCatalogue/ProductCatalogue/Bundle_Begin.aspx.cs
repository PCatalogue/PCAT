using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace ProductCatalogue
{
    public partial class Bundle_Begin : System.Web.UI.Page
    {

        SqlConnection Con = null;
        SqlDataAdapter Adp = null;
        SqlDataAdapter Adp1 = null;
        SqlDataAdapter Adp2 = null;
        SqlDataAdapter Adp3 = null;
        static int rows;

        protected void Page_Load(object sender, EventArgs e)
        {

            string C = ConfigurationManager.ConnectionStrings["Con"].ToString();
            Con = new SqlConnection(C);
            if (!IsPostBack)
            {
                Adp3 = new SqlDataAdapter("Select * From State", Con);
                DataSet Ds3 = new DataSet();
                Adp3.Fill(Ds3);
                Drop_State.DataSource = Ds3;
                Drop_State.DataTextField = "State_name";
                Drop_State.DataValueField = "State_CD";
                Drop_State.DataBind();
                Drop_State.Items.Insert(0, "Select");
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                DateTime Dt = DateTime.Parse(Bundle_Eff_Date.Text);
                DateTime Dt1 = DateTime.Parse(Bundle_End_Date.Text);
                decimal num = decimal.Parse(Bundle_Discount.Text);
                String C = ConfigurationManager.ConnectionStrings["Con"].ToString();
                Con = new SqlConnection(C);
                Con.Open();
                SqlCommand cmd = new SqlCommand("BundleInsert", Con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Bundle_Name", Bundle_Name.Text);
                cmd.Parameters.AddWithValue("@Bundle_Desc", Bundle_Desc.Text);
                cmd.Parameters.AddWithValue("@Bundle_Discount", num);
                cmd.Parameters.AddWithValue("@Bundle_Eff_Date", Dt);
                cmd.Parameters.AddWithValue("@Bundle_End_Date", Dt1);
                cmd.Parameters.AddWithValue("@PROD", Prod.SelectedValue);
                cmd.Parameters.AddWithValue("@DB_Last_Updated", DateTime.Now);
                cmd.Parameters.AddWithValue("@Drop1", DropDownList1.Text);
                cmd.Parameters.AddWithValue("@Drop2", DropDownList2.Text);
                cmd.Parameters.AddWithValue("@Drop3", DropDownList3.Text);
                cmd.Parameters.AddWithValue("@Drop4", Drop_State.SelectedValue);
                rows = cmd.ExecuteNonQuery();
            }
            catch (Exception)
            {

                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Cannot Insert Due to Valid Exceptions ');", true);

                // MessageBox.Show("Cannot Insert Due to Valid Exceptions");
            }
            if (rows >= 1)
            {
                string display = "Successful Insertion";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + display + "');", true);
                Response.Redirect("Show_Products.aspx");
                    

            }
            else
            {
                string display = "Could not be inserted";
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('" + display + "');", true);
                Response.Redirect("https://www.google.co.in/");
            }
            Con.Close();


        }

        protected void Drop_State_SelectedIndexChanged(object sender, EventArgs e)
        {
            Adp = new SqlDataAdapter("select distinct pro.Product_ID,Product_Name,pro.Service_ID,pro.PROD,State_CD from Products pro Inner join Product_Avail pav on pro.Product_ID=pav.Product_ID where pro.PROD='Y'and pro.Service_ID=3 and pav.State_CD=@State_Code", Con);
            Adp.SelectCommand.Parameters.AddWithValue("@State_Code", Drop_State.SelectedValue);
            DataSet Ds = new DataSet();
            Adp.Fill(Ds);
            DropDownList1.DataSource = Ds;
            DropDownList1.DataTextField = "Product_Name";
            DropDownList1.DataValueField = "Product_Name";
            DropDownList1.DataBind();
            DropDownList1.Items.Insert(0, "Select");
            Adp1 = new SqlDataAdapter("select distinct pro.Product_ID,Product_Name,pro.Service_ID,pro.PROD,State_CD from Products pro Inner join Product_Avail pav on pro.Product_ID=pav.Product_ID where pro.PROD='Y'and pro.Service_ID=2 and pav.State_CD=@State_Code", Con);
            Adp1.SelectCommand.Parameters.AddWithValue("@State_Code", Drop_State.SelectedValue);
            DataSet Ds1 = new DataSet();
            Adp1.Fill(Ds1);
            DropDownList2.DataSource = Ds1;
            DropDownList2.DataTextField = "Product_Name";
            DropDownList2.DataValueField = "Product_Name";
            DropDownList2.DataBind();
            DropDownList2.Items.Insert(0, "Select");
            Adp2 = new SqlDataAdapter("select distinct pro.Product_ID,Product_Name,pro.Service_ID,pro.PROD,State_CD from Products pro Inner join Product_Avail pav on pro.Product_ID=pav.Product_ID where pro.PROD='Y'and pro.Service_ID=1 and pav.State_CD=@State_Code", Con);
            Adp2.SelectCommand.Parameters.AddWithValue("@State_Code", Drop_State.SelectedValue);
            DataSet Ds2 = new DataSet();
            Adp2.Fill(Ds2);
            DropDownList3.DataSource = Ds2;
            DropDownList3.DataTextField = "Product_Name";
            DropDownList3.DataValueField = "Product_Name";
            DropDownList3.DataBind();
            DropDownList3.Items.Insert(0, "Select");

        }
    }
}