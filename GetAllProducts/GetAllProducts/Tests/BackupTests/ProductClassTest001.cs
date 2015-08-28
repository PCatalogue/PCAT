#region Includes
using System;
using System.Collections.Generic;
using System.Text;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using GetAllProducts;
using System.Linq;
using System.Web;
#endregion

///////////////////////////////////////////////////////////////////////////////
// Copyright 2015 (c) by Get All Products All Rights Reserved.
//  
// Project:      
// Module:       ProductClassTest.cs
// Description:  Tests for the Product Class class in the Get All Products assembly.
//  
// Date:       Author:           Comments:
// 27-08-2015 18:09:16  admin     Module created.
///////////////////////////////////////////////////////////////////////////////
namespace GetAllProductsTest
{

    /// <summary>
    /// Tests for the Product Class Class
    /// Documentation: 
    /// </summary>
    [TestClass()]
    public class ProductClassTest
    {
        #region Class Variables
        private TestContext testContextInstance;
        private ProductClass _productClass;
        #endregion

        #region Setup/Teardown

        /// <summary>
        ///Gets or sets the test context which provides
        ///information about and functionality for the current test run.
        ///</summary>
        public TestContext TestContext
        {
            get
            {
                return testContextInstance;
            }
            set
            {
                testContextInstance = value;
            }
        }

        /// <summary>
        /// Code that is run before each test
        /// </summary>
        [TestInitialize()]
        public void Initialize()
        {
            //New instance of Product Class
            _productClass = new ProductClass();
        }

        /// <summary>
        /// Code that is run after each test
        /// </summary>
        [TestCleanup()]
        public void Cleanup()
        {
            //TODO:  Put dispose in here for _productClass or delete this line
        }
        #endregion

        #region Property Tests

        #region GeneratedProperties

        /// <summary>
        /// Product Identification Property Test
        /// Documentation:  
        /// Property Type:  string
        /// Access       :  Read/Write
        /// </summary>
        [TestMethod()]
        public void Product_IDTest()
        {
            string expected = "test";
            _productClass.Product_ID = expected;
            Assert.AreEqual(expected, _productClass.Product_ID, "GetAllProducts.ProductClass.Product_ID property test failed");
        }

        /// <summary>
        /// Product name Property Test
        /// Documentation:  
        /// Property Type:  string
        /// Access       :  Read/Write
        /// </summary>
        [TestMethod()]
        public void Product_nameTest()
        {
            string expected = "test";
            _productClass.Product_name = expected;
            Assert.AreEqual(expected, _productClass.Product_name, "GetAllProducts.ProductClass.Product_name property test failed");
        }

        /// <summary>
        /// Product desc Property Test
        /// Documentation:  
        /// Property Type:  string
        /// Access       :  Read/Write
        /// </summary>
        [TestMethod()]
        public void Product_descTest()
        {
            string expected = "test";
            _productClass.Product_desc = expected;
            Assert.AreEqual(expected, _productClass.Product_desc, "GetAllProducts.ProductClass.Product_desc property test failed");
        }

        /// <summary>
        /// Prod eff date Property Test
        /// Documentation:  
        /// Property Type:  DateTime
        /// Access       :  Read/Write
        /// </summary>
        [TestMethod()]
        public void Prod_eff_dateTest()
        {
            DateTime expected = new DateTime(1969,7,21);
            _productClass.Prod_eff_date = expected;
            Assert.AreEqual(expected, _productClass.Prod_eff_date, "GetAllProducts.ProductClass.Prod_eff_date property test failed");
        }

        /// <summary>
        /// Prod end date Property Test
        /// Documentation:  
        /// Property Type:  DateTime
        /// Access       :  Read/Write
        /// </summary>
        [TestMethod()]
        public void Prod_end_dateTest()
        {
            DateTime expected = new DateTime(1969,7,21);
            _productClass.Prod_end_date = expected;
            Assert.AreEqual(expected, _productClass.Prod_end_date, "GetAllProducts.ProductClass.Prod_end_date property test failed");
        }

        /// <summary>
        /// Service Identification Property Test
        /// Documentation:  
        /// Property Type:  string
        /// Access       :  Read/Write
        /// </summary>
        [TestMethod()]
        public void Service_IDTest()
        {
            string expected = "test";
            _productClass.Service_ID = expected;
            Assert.AreEqual(expected, _productClass.Service_ID, "GetAllProducts.ProductClass.Service_ID property test failed");
        }

        /// <summary>
        /// Rate Property Test
        /// Documentation:  
        /// Property Type:  decimal
        /// Access       :  Read/Write
        /// </summary>
        [TestMethod()]
        public void RateTest()
        {
            decimal expected = 19.95M;
            _productClass.Rate = expected;
            Assert.AreEqual(expected, _productClass.Rate, "GetAllProducts.ProductClass.Rate property test failed");
        }

        #endregion // End of GeneratedProperties

        #endregion

        #region Method Tests

        #region GeneratedMethods

        // No methods were found. No tests are generated for methods.

        #endregion // End of GeneratedMethods

        #endregion

    }
}
