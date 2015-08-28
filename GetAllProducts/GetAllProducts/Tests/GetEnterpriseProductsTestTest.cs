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
// Module:       GetEnterpriseProductsTestTest.cs
// Description:  Tests for the Get Enterprise Products Test class in the Get All Products assembly.
//  
// Date:       Author:           Comments:
// 27-08-2015 18:09:16  admin     Module created.
///////////////////////////////////////////////////////////////////////////////
namespace GetAllProductsTest
{

    /// <summary>
    /// Tests for the Get Enterprise Products Test Class
    /// Documentation: 
    /// </summary>
    [TestClass()]
    public class GetEnterpriseProductsTestTest
    {
        #region Class Variables
        private TestContext testContextInstance;
        private GetEnterpriseProductsTest _getEnterpriseProductsTest;
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
            //New instance of Get Enterprise Products Test
            _getEnterpriseProductsTest = new GetEnterpriseProductsTest();
        }

        /// <summary>
        /// Code that is run after each test
        /// </summary>
        [TestCleanup()]
        public void Cleanup()
        {
            //TODO:  Put dispose in here for _getEnterpriseProductsTest or delete this line
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
        /// List Not Empty Test Method Test
        /// Documentation   :  
        /// Method Signature:  void ListNotEmptyTest()
        /// </summary>
        [TestMethod()]
        [Ignore("Please Implement")]
        public void ListNotEmptyTestTest()
        {
            DateTime methodStartTime = DateTime.Now;

            //Parameters

            _getEnterpriseProductsTest.ListNotEmptyTest();

            TimeSpan methodDuration = DateTime.Now.Subtract(methodStartTime);
            Console.WriteLine(String.Format("GetAllProducts.GetEnterpriseProductsTest.ListNotEmptyTest Time Elapsed: {0}", methodDuration));
        }

        #endregion // End of GeneratedMethods

        #endregion

    }
}
