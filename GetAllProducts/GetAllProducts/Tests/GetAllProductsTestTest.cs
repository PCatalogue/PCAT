#region Includes
using System;
using System.Collections.Generic;
using System.Text;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using GetAllProducts;
using System.Linq;
using System.Web;
using NUnit.Framework;
using System.Data.SqlClient;
#endregion

///////////////////////////////////////////////////////////////////////////////
// Copyright 2015 (c) by Get All Products All Rights Reserved.
//  
// Project:      
// Module:       GetAllProductsTestTest.cs
// Description:  Tests for the Get All Products Test class in the Get All Products assembly.
//  
// Date:       Author:           Comments:
// 27-08-2015 18:09:16  admin     Module created.
///////////////////////////////////////////////////////////////////////////////
namespace GetAllProductsTest
{

    /// <summary>
    /// Tests for the Get All Products Test Class
    /// Documentation: 
    /// </summary>
    [TestClass()]
    public class GetAllProductsTestTest
    {
        #region Class Variables
        private TestContext testContextInstance;
        private GetAllProductsTest _getAllProductsTest;
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
            //New instance of Get All Products Test
            _getAllProductsTest = new GetAllProductsTest();
        }

        /// <summary>
        /// Code that is run after each test
        /// </summary>
        [TestCleanup()]
        public void Cleanup()
        {
            //TODO:  Put dispose in here for _getAllProductsTest or delete this line
        }
        #endregion

        #region Property Tests

        #region GeneratedProperties

        // No public properties were found. No tests are generated for non-public scoped properties.

        #endregion // End of GeneratedProperties

        #endregion

        #region Method Tests

        #region GeneratedMethods

        /// <summary>
        /// Products Not Empty Test Method Test
        /// Documentation   :  
        /// Method Signature:  void ProductsNotEmptyTest()
        /// </summary>
        [TestMethod()]
        [Ignore("Please Implement")]
        public void ProductsNotEmptyTestTest()
        {
            DateTime methodStartTime = DateTime.Now;

            //Parameters

            _getAllProductsTest.ProductsNotEmptyTest();

            TimeSpan methodDuration = DateTime.Now.Subtract(methodStartTime);
            Console.WriteLine(String.Format("GetAllProducts.GetAllProductsTest.ProductsNotEmptyTest Time Elapsed: {0}", methodDuration));
        }

        /// <summary>
        /// Format Exception Test Method Test
        /// Documentation   :  
        /// Method Signature:  void FormatExceptionTest()
        /// </summary>
        [TestMethod()]
        [Ignore("Please Implement")]
        public void FormatExceptionTestTest()
        {
            DateTime methodStartTime = DateTime.Now;

            //Parameters

            _getAllProductsTest.FormatExceptionTest();

            TimeSpan methodDuration = DateTime.Now.Subtract(methodStartTime);
            Console.WriteLine(String.Format("GetAllProducts.GetAllProductsTest.FormatExceptionTest Time Elapsed: {0}", methodDuration));
        }

        /// <summary>
        /// Invalid Cast Exception Test Method Test
        /// Documentation   :  
        /// Method Signature:  void InvalidCastExceptionTest()
        /// </summary>
        [TestMethod()]
        [Ignore("Please Implement")]
        public void InvalidCastExceptionTestTest()
        {
            DateTime methodStartTime = DateTime.Now;

            //Parameters

            _getAllProductsTest.InvalidCastExceptionTest();

            TimeSpan methodDuration = DateTime.Now.Subtract(methodStartTime);
            Console.WriteLine(String.Format("GetAllProducts.GetAllProductsTest.InvalidCastExceptionTest Time Elapsed: {0}", methodDuration));
        }

        #endregion // End of GeneratedMethods

        #endregion

    }
}
