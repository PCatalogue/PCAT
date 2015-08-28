using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using NUnit.Framework;
using System.Data.SqlClient;


namespace GetAllProducts
{
    [TestFixture]
    public class GetAllProductsTest
    {
        [Test]
        public void ProductsNotEmptyTest()
        {
            GetAllProducts g = new GetAllProducts();
            List<ProductClass> p = g.GetAllProductsList();
            Assert.IsNotEmpty(p, "The list is empty, it was supposed to be non-empty!!!");
        }

        [Test,ExpectedException(typeof(FormatException))]
        public void FormatExceptionTest()
        {
            string rate = "this is rate!!!";
            GetAllProducts g = new GetAllProducts();
            ProductClass pc=new ProductClass();
            pc.Rate = Convert.ToDecimal(rate);
            List<ProductClass> p = g.GetAllProductsList();
            p.Add(pc);
        }
        [Test]
        [Ignore("Decide how to throw the InvalidCastException")]
        [ExpectedException(typeof(InvalidCastException))]
        public void InvalidCastExceptionTest()
        {
            //string id = "";
            //GetAllProducts g = new GetAllProducts();
            //ProductClass pc = new ProductClass();
            //pc.Product_ID = Convert.ToString(id);
            //List<ProductClass> p = g.GetAllProductsList();
            //p.Add(pc);
        }
    }

    [TestFixture]
    public class GetProductsByServiceIDTest
    {
        //Same purpose as CorrectArguementTest

        //[Test]
        //public void ListNotEmptyTest()
        //{
        //    int sid = 6;
        //    string state_cd = "NY";
        //    GetAllProducts g = new GetAllProducts();
        //    List<ProductClass> p = g.GetProductsByServiceID(sid.ToString(), state_cd);
        //    Assert.IsNotEmpty(p, "The list is empty, it was supposed to be non-empty!!!");
        //}

        [Test]
        //[ExpectedException(typeof(FormatException))]
        public void FormatExceptionTest()
        {
            FormatException fe=null;
            try
            {
                string rate = "A string can't be a rate!";
                GetAllProducts g = new GetAllProducts();
                ProductClass pc = new ProductClass();
                pc.Rate = Convert.ToDecimal(rate);
                List<ProductClass> p = g.GetAllProductsList();
                p.Add(pc);
            }
            catch (FormatException f)
            {
                fe = f;
            }
            Assert.IsNotNull(fe,"Expected to throw Format Exception");
        }

        [TestCase(null,null)]
        [ExpectedException(typeof(SqlException))]
        public void NullParameterTest(string n1,string n2)
        {

            GetAllProducts g = new GetAllProducts();
            List<ProductClass> p = g.GetProductsByServiceID(n1, n2);
            
            //Assert.IsNotEmpty(p, "The list is empty, it was supposed to be non-empty!!!");
        }

        [TestCase("2",1)]
        [ExpectedException(typeof(ArgumentException))]
        public void WrongArguementFormatTest(string service_id, string state_code)
        {
            GetAllProducts g = new GetAllProducts();
            List<ProductClass> p = g.GetProductsByServiceID(service_id, state_code);
            Assert.IsEmpty(p, "The list is non-empty, it was expected to be empty due to wrong arguement type!!!");
        }

        [TestCase("2", "NY")]
        public void CorrectArguementTest(string service_id, string state_code)
        {
            GetAllProducts g = new GetAllProducts();
            List<ProductClass> p = g.GetProductsByServiceID(service_id, state_code);
            Assert.IsNotEmpty(p, "The list is empty, it was expected to be non-empty!!!");
        }
    }

    [TestFixture]
    public class GetEnterpriseProductsTest
    {
        [Test]
        public void ListNotEmptyTest()
        {
            int zip = 6;
            string state_cd = "AL";
            GetAllProducts g = new GetAllProducts();
            List<ProductClass> p = g.GetEnterpriseProducts(state_cd,zip);
            Assert.IsNotEmpty(p, "The list is empty, it was supposed to be non-empty!!!");
        }

        [Test, ExpectedException(typeof(FormatException))]
        public void FormatExceptionTest()
        {
            string stateCode = "Alabama";
            string zip = "9852ddfd";
            GetAllProducts g = new GetAllProducts();
            ProductClass pc = new ProductClass();
            List<ProductClass> p = g.GetEnterpriseProducts(stateCode,Int32.Parse(zip));
            p.Add(pc);
        }


    }

    //[TestFixture]
    //public class 
}