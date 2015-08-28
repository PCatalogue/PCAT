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
// Module:       ProductRateTest.cs
// Description:  Tests for the Product Rate class in the Get All Products assembly.
//  
// Date:       Author:           Comments:
// 27-08-2015 18:09:16  admin     Module created.
///////////////////////////////////////////////////////////////////////////////
namespace GetAllProductsTest
{

    /// <summary>
    /// Tests for the Product Rate Class
    /// Documentation: 
    /// </summary>
    [TestClass()]
    public class ProductRateTest
    {
        #region Class Variables
        private TestContext testContextInstance;
        private ProductRate _productRate;
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
            //New instance of Product Rate
            _productRate = new ProductRate();
        }

        /// <summary>
        /// Code that is run after each test
        /// </summary>
        [TestCleanup()]
        public void Cleanup()
        {
            //TODO:  Put dispose in here for _productRate or delete this line
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
            _productRate.Product_ID = expected;
            Assert.AreEqual(expected, _productRate.Product_ID, "GetAllProducts.ProductRate.Product_ID property test failed");
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
            _productRate.Rate = expected;
            Assert.AreEqual(expected, _productRate.Rate, "GetAllProducts.ProductRate.Rate property test failed");
        }

        /// <summary>
        /// Rate eff date Property Test
        /// Documentation:  
        /// Property Type:  DateTime
        /// Access       :  Read/Write
        /// </summary>
        [TestMethod()]
        public void Rate_eff_dateTest()
        {
            DateTime expected = new DateTime(1969,7,21);
            _productRate.Rate_eff_date = expected;
            Assert.AreEqual(expected, _productRate.Rate_eff_date, "GetAllProducts.ProductRate.Rate_eff_date property test failed");
        }

        /// <summary>
        /// Rate end date Property Test
        /// Documentation:  
        /// Property Type:  DateTime
        /// Access       :  Read/Write
        /// </summary>
        [TestMethod()]
        public void Rate_end_dateTest()
        {
            DateTime expected = new DateTime(1969,7,21);
            _productRate.Rate_end_date = expected;
            Assert.AreEqual(expected, _productRate.Rate_end_date, "GetAllProducts.ProductRate.Rate_end_date property test failed");
        }

        /// <summary>
        /// State code Property Test
        /// Documentation:  
        /// Property Type:  string
        /// Access       :  Read/Write
        /// </summary>
        [TestMethod()]
        public void State_codeTest()
        {
            string expected = "test";
            _productRate.State_code = expected;
            Assert.AreEqual(expected, _productRate.State_code, "GetAllProducts.ProductRate.State_code property test failed");
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
