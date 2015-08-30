using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Script.Serialization;

namespace ProductCatalogue
{
    /// <summary>
    /// Summary description for check
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class check : System.Web.Services.WebService
    {

        [WebMethod]
        public void IDExists(string Product_ID)
        {

            bool Product_ID_Inuse = false;
            using (SqlConnection con = new SqlConnection("Persist Security Info=False;User ID=sa;Password=admin;Initial Catalog=Product_Catalogue;Data Source=192.168.0.153"))
           {

               SqlCommand cmd = new SqlCommand("spIDExists", con);
               cmd.CommandType = CommandType.StoredProcedure;

               cmd.Parameters.AddWithValue("@Product_ID", Product_ID);
               //cmd.Parameters.Add(new SqlParameter()
               //{
               //    ParameterName = @Product_ID,
               //    Value=Product_ID


               //});


               con.Open();
               Product_ID_Inuse = Convert.ToBoolean(cmd.ExecuteScalar());
           }


            CheckProduct chk = new CheckProduct();
            chk.Product_ID = Product_ID;
            chk.Product_ID_Inuse = Product_ID_Inuse;
            JavaScriptSerializer js = new JavaScriptSerializer();
            Context.Response.Write(js.Serialize(chk));

        }
    }
}
