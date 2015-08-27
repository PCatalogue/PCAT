using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace GetAllProducts
{
    public class ProductRate
    {
        public string Product_ID { get; set; }
        public decimal Rate { get; set; }
        public DateTime Rate_eff_date { get; set; }
        public DateTime Rate_end_date { get; set; }
        public string State_code { get; set; }
    }
}