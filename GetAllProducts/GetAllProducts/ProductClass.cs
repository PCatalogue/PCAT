using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace GetAllProducts
{
    public class ProductClass
    {
        public string Product_ID { get; set; }
        public string Product_name { get; set; }
        public string Product_desc { get; set; }
        public DateTime Prod_eff_date { get; set; }
        public DateTime Prod_end_date { get; set; }
        public string Service_ID { get; set; }
        public decimal Rate { get; set; }
        //public DateTime Rate_eff_date { get; set; }
        //public DateTime Rate_end_date { get; set; }

        //public char PROD { get; set; } //confirm if the production status is required or not!!!
    }
}