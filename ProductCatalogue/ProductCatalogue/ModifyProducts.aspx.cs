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
    public partial class ModifyProducts : System.Web.UI.Page
    {
        SqlDataAdapter adp = null;
        SqlConnection con = null;
        SqlDataAdapter Adp = null;
        SqlDataAdapter showAdp = null;
        SqlDataAdapter stateAdp = null;
        SqlDataAdapter cityAdp = null;

        string s;



        string a;
        string r;
        protected void Page_Load(object sender, EventArgs e)
        {
            a = Request.QueryString["V1"].ToString();
             r= Cache["V2"].ToString();
             string C = ConfigurationManager.ConnectionStrings["Con"].ToString();
con = new SqlConnection(C);

            //for showing dropdown for state
stateAdp = new SqlDataAdapter("Select State_CD from State ", con);


DataSet stateDs = new DataSet();

if (!IsPostBack) //if it not the first time
{
    ddstate.Items.Add("-Select-");
    stateAdp.Fill(stateDs, "D");
    ddstate.DataSource = stateDs.Tables["D"];
    ddstate.DataTextField = "State_CD";
    //ddstate.DataValueField = "State_CD";
    ddstate.DataBind();






          //for showing values in form

    adp = new SqlDataAdapter("Select * from Products  where Product_ID=@P", con);
    adp.SelectCommand.Parameters.AddWithValue("@P", a);

    DataSet ds = new DataSet();
    adp.Fill(ds, "Prod");

    DataRow dr = ds.Tables["Prod"].Rows[0];
    s = dr[6].ToString();
    if (s.Equals("Y"))
    {
        Response.Redirect("Modify_Y.aspx?V1=" + a);

    }

    txtProductID.Text = dr[0].ToString();
    txtProductName.Text = dr[1].ToString();
    txtDescription.Text = dr[2].ToString();




    txtEffDate.Text = DateTime.Parse(dr[3].ToString()).ToString("dd-MM-yyyy");
    txtEndDate.Text = DateTime.Parse(dr[4].ToString()).ToString("dd-MM-yyyy");
    ddlServiceType.Text = dr[5].ToString();




    showAdp = new SqlDataAdapter("Select State_Cd,Zipcode from Product_Avail  where Product_ID=@Pr", con);
    showAdp.SelectCommand.Parameters.AddWithValue("@Pr", a);


    DataSet showDs = new DataSet();


    showAdp.Fill(showDs, "Dss");
    Show.DataSource = showDs.Tables["Dss"];
    Show.DataBind();

   
}


            

 // for showing values in state and zip grid view





           
        }




        protected void showAgain()
        {
            showAdp = new SqlDataAdapter("Select State_Cd,Zipcode from Product_Avail  where Product_ID=@Pr", con);
            showAdp.SelectCommand.Parameters.AddWithValue("@Pr", a);


            DataSet showDs = new DataSet();


            showAdp.Fill(showDs, "Dss");
            Show.DataSource = showDs.Tables["Dss"];
            Show.DataBind();
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
                dr[3] = txtEffDate.Text;
                    //change this to ONLY DATE! 
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

            ClientScript.RegisterStartupScript(this.GetType(), "Success", "<script type='text/javascript'>alert('Product Modified Successfully!');window.location='NewPCR.aspx';</script>'");


        }

        protected void Show_Click(object sender, EventArgs e)
        {
           
        }

        protected void ddlServiceType_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void ddstate_SelectedIndexChanged(object sender, EventArgs e)
        {

         
            ddcity.Items.Clear();
            ddcity.Items.Add("-Select-");
            cityAdp = new SqlDataAdapter("Select Zip_code from Zip_code where State_CD=@E and Zip_Code not in(Select Zipcode from Product_Avail  where Product_ID=@Pr)", con);
            cityAdp.SelectCommand.Parameters.AddWithValue("@E", ddstate.Text);
            cityAdp.SelectCommand.Parameters.AddWithValue("@Pr", a);

            DataSet cityDs = new DataSet();
            cityAdp.Fill(cityDs, "L");
            ddcity.DataSource = cityDs.Tables["L"];
            ddcity.DataTextField = "Zip_Code";
            //ddcity.DataValueField = "Zip_Code";
            ddcity.DataBind();


        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            con.Open();
            SqlCommand cmd = con.CreateCommand();
            string status="N";
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into Product_Avail values('" + txtProductID.Text + "','" + ddlServiceType.SelectedValue + "','" + ddcity.Text + "','" + ddstate.Text + "','" + status + "','" +r+ "')";
            cmd.ExecuteNonQuery();
            con.Close();
            showAgain();
            
        }

        protected void Show_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int index = Int32.Parse(e.CommandArgument.ToString());
            GridViewRow row = Show.Rows[index];
            //string Product_id = row.Cells[0].Text;
            //string Service_Id = row.Cells[1].Text;
            string Zipcode = row.Cells[1].Text;
            con.Open();
            SqlCommand cmd = new SqlCommand("delete from Product_Avail where Product_ID=@P and Service_ID=@S and Zipcode=@Z", con);
            cmd.Parameters.AddWithValue("@P", txtProductID.Text);
            cmd.Parameters.AddWithValue("@S", ddlServiceType.SelectedValue);
            cmd.Parameters.AddWithValue("@Z", Zipcode);

            int result = cmd.ExecuteNonQuery();
            con.Close();
            showAgain();
        }
    }
}