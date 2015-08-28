//using GetAllProducts;
//using Microsoft.VisualStudio.TestTools.UnitTesting;
//using System;
//using Microsoft.VisualStudio.TestTools.UnitTesting.Web;
//using System.Collections.Generic;

//namespace GetProductsTest
//{
    
    
//     <summary>
//    This is a test class for GetAllProductsTest and is intended
//    to contain all GetAllProductsTest Unit Tests
//    </summary>
//    [TestClass()]
//    public class GetAllProductsTest
//    {


//        private TestContext testContextInstance;

//         <summary>
//        Gets or sets the test context which provides
//        information about and functionality for the current test run.
//        </summary>
//        public TestContext TestContext
//        {
//            get
//            {
//                return testContextInstance;
//            }
//            set
//            {
//                testContextInstance = value;
//            }
//        }

//        #region Additional test attributes
         
//        You can use the following additional attributes as you write your tests:
        
//        Use ClassInitialize to run code before running the first test in the class
//        [ClassInitialize()]
//        public static void MyClassInitialize(TestContext testContext)
//        {
//        }
        
//        Use ClassCleanup to run code after all tests in a class have run
//        [ClassCleanup()]
//        public static void MyClassCleanup()
//        {
//        }
        
//        Use TestInitialize to run code before running each test
//        [TestInitialize()]
//        public void MyTestInitialize()
//        {
//        }
        
//        Use TestCleanup to run code after each test has run
//        [TestCleanup()]
//        public void MyTestCleanup()
//        {
//        }
        
//        #endregion


//         <summary>
//        A test for GetProductDescriptionByProductName
//        </summary>
//         TODO: Ensure that the UrlToTest attribute specifies a URL to an ASP.NET page (for example,
//         http://.../Default.aspx). This is necessary for the unit test to be executed on the web server,
//         whether you are testing a page, web service, or a WCF service.
//        [TestMethod()]
//        [HostType("ASP.NET")]
//        [AspNetDevelopmentServerHost("C:\\Users\\admin\\Desktop\\user82\\Test\\GetAllProducts\\GetAllProducts", "/")]
//        [UrlToTest("http://localhost:6001/")]
//        public void GetProductDescriptionByProductNameTest()
//        {
//            GetAllProducts target = new GetAllProducts(); // TODO: Initialize to an appropriate value
//            string Product_name = string.Empty; // TODO: Initialize to an appropriate value
//            List<ProductClass> expected = null; // TODO: Initialize to an appropriate value
//            List<ProductClass> actual;
//            actual = target.GetProductDescriptionByProductName(Product_name);
//            Assert.AreEqual(expected, actual);
//            Assert.Inconclusive("Verify the correctness of this test method.");
//            int a = 1;
//            Assert.AreEqual(1, a,"Failed");
//        }

//         <summary>
//        A test for GetProductRates
//        </summary>
//         TODO: Ensure that the UrlToTest attribute specifies a URL to an ASP.NET page (for example,
//         http://.../Default.aspx). This is necessary for the unit test to be executed on the web server,
//         whether you are testing a page, web service, or a WCF service.
//        [TestMethod()]
//        [HostType("ASP.NET")]
//        [AspNetDevelopmentServerHost("C:\\Users\\admin\\Desktop\\user82\\Test\\GetAllProducts\\GetAllProducts", "/")]
//        [UrlToTest("http://localhost:6001/")]
//        public void GetProductRatesTest()
//        {
//            GetAllProducts target = new GetAllProducts(); // TODO: Initialize to an appropriate value
//            List<ProductRate> expected = null; // TODO: Initialize to an appropriate value
//            List<ProductRate> actual;
//            actual = target.GetProductRates();
//            Assert.AreEqual(expected, actual);
//            Assert.Inconclusive("Verify the correctness of this test method.");
//        }

//        /// <summary>
//        ///A test for GetProductsByServiceID
//        ///</summary>
//        // TODO: Ensure that the UrlToTest attribute specifies a URL to an ASP.NET page (for example,
//        // http://.../Default.aspx). This is necessary for the unit test to be executed on the web server,
//        // whether you are testing a page, web service, or a WCF service.
//        [TestMethod()]
//        [HostType("ASP.NET")]
//        [AspNetDevelopmentServerHost("C:\\Users\\admin\\Desktop\\user82\\Test\\GetAllProducts\\GetAllProducts", "/")]
//        [UrlToTest("http://localhost:6001/")]
//        public void GetProductsByServiceIDTest()
//        {
//            GetAllProducts target = new GetAllProducts(); // TODO: Initialize to an appropriate value
//            string serviceid = string.Empty; // TODO: Initialize to an appropriate value
//            string state_code = string.Empty; // TODO: Initialize to an appropriate value
//            List<ProductClass> expected = null; // TODO: Initialize to an appropriate value
//            List<ProductClass> actual;
//            actual = target.GetProductsByServiceID(serviceid, state_code);
//            Assert.AreEqual(expected, actual);
//            Assert.Inconclusive("Verify the correctness of this test method.");
//        }

//        /// <summary>
//        ///A test for GetProductsByZipAndServiceID
//        ///</summary>
//        // TODO: Ensure that the UrlToTest attribute specifies a URL to an ASP.NET page (for example,
//        // http://.../Default.aspx). This is necessary for the unit test to be executed on the web server,
//        // whether you are testing a page, web service, or a WCF service.
//        [TestMethod()]
//        [HostType("ASP.NET")]
//        [AspNetDevelopmentServerHost("C:\\Users\\admin\\Desktop\\user82\\Test\\GetAllProducts\\GetAllProducts", "/")]
//        [UrlToTest("http://localhost:6001/")]
//        public void GetProductsByZipAndServiceIDTest()
//        {
//            GetAllProducts target = new GetAllProducts(); // TODO: Initialize to an appropriate value
//            string serviceid = string.Empty; // TODO: Initialize to an appropriate value
//            int zip = 0; // TODO: Initialize to an appropriate value
//            List<ProductClass> expected = null; // TODO: Initialize to an appropriate value
//            List<ProductClass> actual;
//            actual = target.GetProductsByZipAndServiceID(serviceid, zip);
//            Assert.AreEqual(expected, actual);
//            Assert.Inconclusive("Verify the correctness of this test method.");
//        }
//    }
//}
