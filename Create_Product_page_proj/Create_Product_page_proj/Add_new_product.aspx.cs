using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Create_Product_page_proj
{
    public partial class Add_new_product : System.Web.UI.Page
    {
        SqlDataAdapter adp = null;
        SqlConnection con = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            //the connection is to be established

            //Dummy connection, remove it later
            //con = new SqlConnection("Integrated Security=SSPI;Persist Security Info=False;Initial Catalog=VZ82;Data Source=.");
            con = new SqlConnection("Persist Security Info=false;User ID=sa;Password=admin;Initial Catalog=Product_Catalogue;Data Source=192.168.0.150");
            //demo DataAdapter, MODIFY it!
            adp = new SqlDataAdapter("select * from Products", con);

            //if (!IsPostBack)
            //{
            //    DataSet ds = new DataSet();
            //    adp.Fill(ds, "Cities");
            //    ddlStates.DataSource = ds.Tables["Cities"];
            //    ddlStates.DataTextField = "City";
            //    ddlStates.DataBind();
            //}
            
        }

        protected void ddlStates_SelectedIndexChanged(object sender, EventArgs e)
        {
            //dummy code
            


        }

        protected void btnAddProduct_Click(object sender, EventArgs e)
        {
            //code to insert the data into the database
            DataSet ds = new DataSet();
            adp.Fill(ds, "Prod");
            DataRow dr = ds.Tables["Prod"].NewRow();
            dr[0] = 1;//use random number generator probably or change the product id field to be an \ which increments automatically
            dr[1] = txtProductName.Text;
            dr[2] = txtDescription.Text;
            //string effDate = txtEffDate.Text;
            //string endDate = txtEndDate.Text;
            //String.Format("{0:dd/MM/yyyy}",effDate);
            //String.Format("{0:dd/MM/yyyy}", endDate);


            //   IMPORTANT modification
            dr[3] = DateTime.Parse(txtEffDate.Text);//change this to ONLY DATE! 
            dr[4] = DateTime.Parse(txtEndDate.Text);
            dr[5] = ddlServiceType.SelectedValue;
            dr[6] = "N";
            ds.Tables["Prod"].Rows.Add(dr);

            SqlCommandBuilder com = new SqlCommandBuilder(adp);
            adp.InsertCommand = com.GetInsertCommand();
            adp.Update(ds, "Prod");
        }

        protected void ddlServiceType_SelectedIndexChanged(object sender, EventArgs e)
        {
            //dummy code
            //adp = new SqlDataAdapter("select * from Products", con);
            //DataSet ds = new DataSet();
            //adp.Fill(ds, "Prod");
            //GridView1.DataSource = ds.Tables["Prod"];
            //GridView1.DataBind();
        }
    }
}