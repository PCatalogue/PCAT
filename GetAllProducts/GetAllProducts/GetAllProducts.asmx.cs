using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data.SqlClient;
using System.Data;
using System.Globalization;
using System.Configuration;


namespace GetAllProducts
{
    /// <summary>
    /// Summary description for GetAllProducts
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class GetAllProducts : System.Web.Services.WebService
    {

        // to retrieve all the available products irrespective of state or zip codes


        [WebMethod]
        public List<ProductClass> GetAllProductsList()
        {
            //SqlConnection con = new SqlConnection("Persist Security Info=false;User ID=sa;Password=admin;Initial Catalog=Product_Catalogue;Data Source=192.168.0.153");
            string con = ConfigurationManager.ConnectionStrings["Con"].ConnectionString;
            SqlDataAdapter adp = new SqlDataAdapter("select * from Products p inner join product_avail pav on p.product_id=pav.product_id where pav.PROD like 'Y'", con);
            DataSet ds = new DataSet();
            adp.Fill(ds, "AllProd");
            List<ProductClass> P = new List<ProductClass>();
            foreach (DataRow dr in ds.Tables["AllProd"].Rows)
            {
                P.Add(new ProductClass { Product_ID = Convert.ToString(dr["Product_ID"]), Product_name = Convert.ToString(dr["Product_Name"]), Product_desc = Convert.ToString(dr["Product_Desc"]), Prod_eff_date = Convert.ToDateTime(dr["Product_Eff_Date"]), Prod_end_date = Convert.ToDateTime(dr["Product_End_Date"]), Service_ID = Convert.ToString(dr["Service_ID"]) });
            }


            return P;
        }


        // to retrieve products that are production ready under a particular service ID


        [WebMethod]
        public List<ProductClass> GetProductsByServiceID(string serviceid, string state_code)
        {
            //SqlConnection con = new SqlConnection("Persist Security Info=false;User ID=sa;Password=admin;Initial Catalog=Product_Catalogue;Data Source=192.168.0.153");
            string con = ConfigurationManager.ConnectionStrings["Con"].ConnectionString;
            List<ProductClass> P = new List<ProductClass>();
            if (Int32.Parse(serviceid) != 4)
            {
                SqlDataAdapter adp = new SqlDataAdapter("select distinct p.product_id,p.product_name,p.product_desc,p.product_eff_date, p.product_end_date,p.service_id,pav.state_cd,pra.rate_amount from product_avail pav inner join products p on pav.product_id=p.product_id inner join product_rates pra on pav.product_id=pra.product_id and pav.state_cd=pra.state_cd where p.prod like 'Y' and p.service_id=@sid and pra.state_cd=@st_cd", con);


                adp.SelectCommand.Parameters.AddWithValue("@sid", serviceid);
                adp.SelectCommand.Parameters.AddWithValue("@st_cd", state_code);
                DataSet ds = new DataSet();
                adp.Fill(ds, "Prod");

                foreach (DataRow dr in ds.Tables["Prod"].Rows)
                {
                    P.Add(new ProductClass { Product_ID = Convert.ToString(dr["Product_ID"]), Product_name = Convert.ToString(dr["Product_Name"]), Product_desc = Convert.ToString(dr["Product_Desc"]), Prod_eff_date = Convert.ToDateTime(dr["Product_Eff_Date"]), Prod_end_date = Convert.ToDateTime(dr["Product_End_Date"]), Rate = Convert.ToDecimal(dr["Rate_amount"]), Service_ID = Convert.ToString(dr["Service_id"]) });
                }
            }

            else
            {
                SqlDataAdapter adp = new SqlDataAdapter("select * from bundles where prod='Y'", con);
                DataSet ds = new DataSet();
                adp.Fill(ds, "Bundle");
                //List<ProductClass> P = new List<ProductClass>();
                foreach (DataRow dr in ds.Tables["Bundle"].Rows)
                {
                    P.Add(new ProductClass { Product_ID = Convert.ToString(dr["Bundle_ID"]), Product_name = Convert.ToString(dr["Bundle_Name"]), Product_desc = Convert.ToString(dr["Bundle_Desc"]), Prod_eff_date = Convert.ToDateTime(dr["Bundle_Eff_Date"]), Prod_end_date = Convert.ToDateTime(dr["Bundle_End_Date"]), Service_ID = serviceid, Rate = Convert.ToDecimal(dr["Bundle_Price"]) });
                }
            }
            return P;
        }


        // to retrieve the products under a service ID that are production ready and available in a given zip code

        [WebMethod]
        public List<ProductClass> GetProductsByZipAndServiceID(string serviceid, int zip)
        {
            //SqlConnection con = new SqlConnection("Persist Security Info=false;User ID=sa;Password=admin;Initial Catalog=Product_Catalogue;Data Source=192.168.0.153");

            string con = ConfigurationManager.ConnectionStrings["Con"].ConnectionString;
            List<ProductClass> P = new List<ProductClass>();
            if (Int32.Parse(serviceid) != 4)
            {
                SqlDataAdapter adp = new SqlDataAdapter("select distinct p.product_id,p.product_name,p.product_desc,p.product_eff_date, p.product_end_date, p.service_id,pav.state_cd,pra.rate_amount from product_avail pav inner join products p on pav.product_id=p.product_id inner join product_rates pra on pav.product_id=pra.product_id and pav.state_cd=pra.state_cd where p.prod like 'Y' and p.service_id=@sid and pav.zipcode=@zip ", con);

                adp.SelectCommand.Parameters.AddWithValue("@sid", serviceid);
                adp.SelectCommand.Parameters.AddWithValue("@zip", zip);
                DataSet ds = new DataSet();
                adp.Fill(ds, "Prod");
                foreach (DataRow dr in ds.Tables["Prod"].Rows)
                {
                    P.Add(new ProductClass { Product_ID = Convert.ToString(dr["Product_ID"]), Product_name = Convert.ToString(dr["Product_Name"]), Product_desc = Convert.ToString(dr["Product_Desc"]), Prod_eff_date = Convert.ToDateTime(dr["Product_Eff_Date"]), Prod_end_date = Convert.ToDateTime(dr["Product_End_Date"]), Rate = Convert.ToDecimal(dr["Rate_amount"]) });
                }
            }
            else
            {
                SqlDataAdapter adp = new SqlDataAdapter("select distinct bundle_id,bundle_name,bundle_desc,bundle_eff_date,bundle_end_date,bundle_price from bundles where state_cd in (select distinct state_cd from zip_code where zip_code=@zip)", con);
                adp.SelectCommand.Parameters.AddWithValue("@zip", zip);
                DataSet ds = new DataSet();
                adp.Fill(ds, "Bundle");
                //List<ProductClass> P = new List<ProductClass>();
                foreach (DataRow dr in ds.Tables["Bundle"].Rows)
                {
                    P.Add(new ProductClass { Product_ID = Convert.ToString(dr["Bundle_ID"]), Product_name = Convert.ToString(dr["Bundle_Name"]), Product_desc = Convert.ToString(dr["Bundle_Desc"]), Prod_eff_date = Convert.ToDateTime(dr["Bundle_Eff_Date"]), Prod_end_date = Convert.ToDateTime(dr["Bundle_End_Date"]), Service_ID = serviceid, Rate = Convert.ToDecimal(dr["Bundle_Price"]) });
                }
            }

            return P;
        }


        // Service for the Enterprise team
        // to retrieve the list of products that are production ready under a given state or zip, along with their pricing details.


        [WebMethod]
        public List<ProductClass> GetEnterpriseProducts(string state_code, int zip)
        {
            //SqlConnection con = new SqlConnection("Persist Security Info=false;User ID=sa;Password=admin;Initial Catalog=Product_Catalogue;Data Source=192.168.0.153");

            string con = ConfigurationManager.ConnectionStrings["Con"].ConnectionString;
            SqlDataAdapter adp = new SqlDataAdapter("select * from products p inner join product_rates pr on p.product_id=pr.product_id where pr.state_cd=@scode and pr.prod like 'Y'", con);

            adp.SelectCommand.Parameters.AddWithValue("@scode", state_code);
            //adp.SelectCommand.Parameters.AddWithValue("@zip", zip);
            DataSet ds = new DataSet();
            adp.Fill(ds, "Prod");
            List<ProductClass> P = new List<ProductClass>();
            foreach (DataRow dr in ds.Tables["Prod"].Rows)
            {
                P.Add(new ProductClass { Product_ID = Convert.ToString(dr["Product_ID"]), Product_name = Convert.ToString(dr["Product_Name"]), Product_desc = Convert.ToString(dr["Product_Desc"]), Prod_eff_date = Convert.ToDateTime(dr["Product_Eff_Date"]), Prod_end_date = Convert.ToDateTime(dr["Product_End_Date"]), Rate = Convert.ToDecimal(dr["Rate_amount"]) });
            }
            return P;
        }



        // Service for billing team

        // retrieve all the product and rate related info according to the production status
        [WebMethod]
        public List<ProductRate> GetProductRates()
        {
            //SqlConnection con = new SqlConnection("Persist Security Info=false;User ID=sa;Password=admin;Initial Catalog=Product_Catalogue;Data Source=192.168.0.153");

            string con = ConfigurationManager.ConnectionStrings["Con"].ConnectionString;
            SqlDataAdapter adp = new SqlDataAdapter("select * from product_rates where prod like 'Y'", con);

            //adp.SelectCommand.Parameters.AddWithValue("@scode", state_code);
            //adp.SelectCommand.Parameters.AddWithValue("@zip", zip);
            DataSet ds = new DataSet();
            adp.Fill(ds, "Prod");
            //CultureInfo provider = CultureInfo.InvariantCulture;
            List<ProductRate> P = new List<ProductRate>();
            foreach (DataRow dr in ds.Tables["Prod"].Rows)
            {
                //DateTime dt = Convert.ToDateTime(dr["Rate_end_date"]);

                P.Add(new ProductRate { Product_ID = Convert.ToString(dr["Product_ID"]), Rate_eff_date = Convert.ToDateTime(dr["Rate_Eff_Date"]), Rate_end_date = Convert.ToDateTime(dr["Rate_end_date"]), Rate = Convert.ToDecimal(dr["Rate_amount"]), State_code = Convert.ToString(dr["State_cd"]) });
            }
            adp = new SqlDataAdapter("select bundle_id,bundle_name,bundle_desc,bundle_eff_date,bundle_end_date,bundle_price,state_cd from bundles", con);
            adp.Fill(ds, "Bundle");
            foreach (DataRow db in ds.Tables["Bundle"].Rows)
            {
                P.Add(new ProductRate { Product_ID = Convert.ToString(db["Bundle_ID"]), Rate_eff_date = Convert.ToDateTime(db["Bundle_Eff_Date"]), Rate_end_date = Convert.ToDateTime(db["Bundle_end_date"]), Rate = Convert.ToDecimal(db["Bundle_price"]), State_code = Convert.ToString(db["State_cd"]) });
            }

            return P;
        }

        [WebMethod]
        public List<ProductClass> GetProductDescriptionByProductName(string Product_name)
        {
            //SqlConnection con = new SqlConnection("Persist Security Info=false;User ID=sa;Password=admin;Initial Catalog=Product_Catalogue;Data Source=192.168.0.153");

            string con = ConfigurationManager.ConnectionStrings["Con"].ConnectionString;
            List<ProductClass> P = new List<ProductClass>();


            if (Product_name.Contains("Bundle") == true || Product_name.Contains("bundle") == true || Product_name.Contains("BUNDLE") == true)
            {
                SqlDataAdapter adp = new SqlDataAdapter("select distinct bundle_id,bundle_desc,bundle_eff_date,bundle_end_date,bundle_price from bundles where bundle_name=@pName", con);

                //Convert.ToString(dr["Product_Eff_Date"]

                //convert this DateTime to Date only!!!
                adp.SelectCommand.Parameters.AddWithValue("@pname", Product_name);
                DataSet ds = new DataSet();
                adp.Fill(ds, "AllProd");
                foreach (DataRow dr in ds.Tables["AllProd"].Rows)
                {
                    P.Add(new ProductClass { Product_ID = Convert.ToString(dr["Bundle_ID"]), Product_desc = Convert.ToString(dr["Bundle_Desc"]), Service_ID = "4" });
                }

            }
            else
            {
                SqlDataAdapter adp = new SqlDataAdapter("select Product_id, product_desc,service_id from products where product_name=@pname", con);
                adp.SelectCommand.Parameters.AddWithValue("@pname", Product_name);
                DataSet ds = new DataSet();
                adp.Fill(ds, "AllProd");
                foreach (DataRow dr in ds.Tables["AllProd"].Rows)
                {
                    P.Add(new ProductClass { Product_ID = Convert.ToString(dr["Product_ID"]), Product_desc = Convert.ToString(dr["Product_Desc"]), Service_ID = Convert.ToString(dr["Service_ID"]) });

                }
            }
            return P;
        }


    }
}
