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
// Module:       GetProductsByServiceIDTestTest.cs
// Description:  Tests for the Get Products By Service Identification Test class in the Get All Products assembly.
//  
// Date:       Author:           Comments:
// 27-08-2015 18:09:16  admin     Module created.
///////////////////////////////////////////////////////////////////////////////
namespace GetAllProductsTest
{

    /// <summary>
    /// Tests for the Get Products By Service Identification Test Class
    /// Documentation: 
    /// </summary>
    [TestClass()]
    public class GetProductsByServiceIDTestTest
    {
        #region Class Variables
        private TestContext testContextInstance;
        private GetProductsByServiceIDTest _getProductsByServiceIdTest;
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
            //New instance of Get Products By Service Identification Test
            _getProductsByServiceIdTest = new GetProductsByServiceIDTest();
        }

        /// <summary>
        /// Code that is run after each test
        /// </summary>
        [TestCleanup()]
        public void Cleanup()
        {
            //TODO:  Put dispose in here for _getProductsByServiceIdTest or delete this line
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

            _getProductsByServiceIdTest.FormatExceptionTest();

            TimeSpan methodDuration = DateTime.Now.Subtract(methodStartTime);
            Console.WriteLine(String.Format("GetAllProducts.GetProductsByServiceIDTest.FormatExceptionTest Time Elapsed: {0}", methodDuration));
        }

        /// <summary>
        /// Null Parameter Test Method Test
        /// Documentation   :  
        /// Method Signature:  void NullParameterTest(string n1, string n2)
        /// </summary>
        [TestMethod()]
        [Ignore("Please Implement")]
        public void NullParameterTestTest()
        {
            DateTime methodStartTime = DateTime.Now;

            //Parameters
            string n1 = "test";
            string n2 = "test";

            _getProductsByServiceIdTest.NullParameterTest(n1, n2);

            TimeSpan methodDuration = DateTime.Now.Subtract(methodStartTime);
            Console.WriteLine(String.Format("GetAllProducts.GetProductsByServiceIDTest.NullParameterTest Time Elapsed: {0}", methodDuration));
        }

        /// <summary>
        /// Wrong Arguement Format Test Method Test
        /// Documentation   :  
        /// Method Signature:  void WrongArguementFormatTest(string service_id, string state_code)
        /// </summary>
        [TestMethod()]
        [Ignore("Please Implement")]
        public void WrongArguementFormatTestTest()
        {
            DateTime methodStartTime = DateTime.Now;

            //Parameters
            string service_id = "test";
            string state_code = "test";

            _getProductsByServiceIdTest.WrongArguementFormatTest(service_id, state_code);

            TimeSpan methodDuration = DateTime.Now.Subtract(methodStartTime);
            Console.WriteLine(String.Format("GetAllProducts.GetProductsByServiceIDTest.WrongArguementFormatTest Time Elapsed: {0}", methodDuration));
        }

        /// <summary>
        /// Correct Arguement Test Method Test
        /// Documentation   :  
        /// Method Signature:  void CorrectArguementTest(string service_id, string state_code)
        /// </summary>
        [TestMethod()]
        [Ignore("Please Implement")]
        public void CorrectArguementTestTest()
        {
            DateTime methodStartTime = DateTime.Now;

            //Parameters
            string service_id = "test";
            string state_code = "test";

            _getProductsByServiceIdTest.CorrectArguementTest(service_id, state_code);

            TimeSpan methodDuration = DateTime.Now.Subtract(methodStartTime);
            Console.WriteLine(String.Format("GetAllProducts.GetProductsByServiceIDTest.CorrectArguementTest Time Elapsed: {0}", methodDuration));
        }

        #endregion // End of GeneratedMethods

        #endregion

    }
}
