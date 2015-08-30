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
    public partial class PCRtoProduction : System.Web.UI.Page
    {
        SqlDataAdapter adp = null;
        SqlConnection con = null;

        SqlDataAdapter Adp = null;

        protected void Page_Load(object sender, EventArgs e)
        {
            string C = ConfigurationManager.ConnectionStrings["Con"].ToString();
            con = new SqlConnection(C);

            if (!IsPostBack)
            {
                ddtitle.Items.Clear();
                //for showing dropdown for state
                adp = new SqlDataAdapter("Select distinct(title) from PCR ", con);
                DataSet Ds = new DataSet();
                adp.Fill(Ds, "D");
                ddtitle.DataSource = Ds.Tables["D"];
                ddtitle.DataTextField = "Title";
                //ddstate.DataValueField = "State_CD";
                ddtitle.DataBind();

            }

            

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                Adp = new SqlDataAdapter("select * from Product_Avail where title=@p and PROD='N'", con);
                Adp.SelectCommand.Parameters.AddWithValue("@p", ddtitle.Text);
                DataSet ds = new DataSet();
                Adp.Fill(ds, "prod");

                DataRow dr = ds.Tables["prod"].Rows[0];


                dr[4] = "Y";


                SqlCommandBuilder cb = new SqlCommandBuilder(Adp);
                Adp.UpdateCommand = cb.GetUpdateCommand();
                Adp.Update(ds, "prod");








                ClientScript.RegisterStartupScript(this.GetType(), "Success", "<script type='text/javascript'>alert('Product Moved To Production!');window.location='Homepage.aspx';</script>'");
            }


            catch (SqlException ex)
            {
                switch (ex.Number)
                {
                    case 4060: // Invalid Database
                        ClientScript.RegisterStartupScript(this.GetType(), "Success", "<script type='text/javascript'>alert('Moved Successfully !');window.location='Homepage.aspx';</script>'");
                        break;
                    case 18456: // Login Failed

                        ClientScript.RegisterStartupScript(this.GetType(), "Success", "<script type='text/javascript'>alert('Moved Successfully');window.location='Homepage.aspx';</script>'");
                        break;
                    case 547: // ForeignKey Violation

                        ClientScript.RegisterStartupScript(this.GetType(), "Success", "<script type='text/javascript'>alert('Moved Successfully');window.location='Homepage.aspx';</script>'");
                        break;
                    case 2627: // Unique Index/ Primary key Violation/ Constriant Violation
                        ClientScript.RegisterStartupScript(this.GetType(), "Success", "<script type='text/javascript'>alert('Moved Successfully!');window.location='Homepage.aspx';</script>'");

                        break;
                    case 2601: // Unique Index/Constriant Violation
                        ClientScript.RegisterStartupScript(this.GetType(), "Success", "<script type='text/javascript'>alert('Moved Successfully');window.location='Homepage.aspx';</script>'");
                        break;
                    default:
                        ClientScript.RegisterStartupScript(this.GetType(), "Success", "<script type='text/javascript'>alert('Moved Successfully');window.location='Homepage.aspx';</script>'");
                        break;
                }
            }

            catch (IndexOutOfRangeException)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "Success", "<script type='text/javascript'>alert('Moved Successfully');window.location='Homepage.aspx';</script>'");
            }

        }
    }
}