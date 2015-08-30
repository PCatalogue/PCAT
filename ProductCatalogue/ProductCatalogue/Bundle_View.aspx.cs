using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace ProductCatalogue
{
    public partial class Bundle_View : System.Web.UI.Page
    {
        SqlConnection Connect = null;
        SqlDataAdapter Adapter = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            String C = ConfigurationManager.ConnectionStrings["Con"].ToString();
            Connect = new SqlConnection(C);
            Adapter = new SqlDataAdapter("Select Bundle_ID,Bundle_Name,Bundle_Desc,Bundle_Discount,Bundle_Eff_Date,Bundle_End_Date,PROD,Bundle_Price,State_CD From Bundles", Connect);
            DataSet Data1 = new DataSet();
            Adapter.Fill(Data1, "Bundle");
            GridView1.DataSource = Data1.Tables["Bundle"];
            GridView1.DataBind();
        }

        protected void RctBundle_Click(object sender, EventArgs e)
        {
            String C1 = ConfigurationManager.ConnectionStrings["Con"].ToString();
            Connect = new SqlConnection(C1);
            Adapter = new SqlDataAdapter("Select Bundle_ID,Bundle_Name,Bundle_Desc,Bundle_Discount,Bundle_Eff_Date,Bundle_End_Date,PROD,Bundle_Price,State_CD From Bundles Where Bundle_ID=(Select max(Bundle_ID) From Bundles)", Connect);
            DataSet Data1 = new DataSet();
            Adapter.Fill(Data1, "Bundle");
            GridView1.DataSource = Data1.Tables["Bundle"];
            GridView1.DataBind();

        }

        protected void AllBundles_Click(object sender, EventArgs e)
        {
           
        }
    }
}