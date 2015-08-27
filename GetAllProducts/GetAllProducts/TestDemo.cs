using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using NUnit.Framework;


namespace GetAllProducts
{
    [TestFixture]
    public class TestDemo
    {
        [Test]
        public void Test1()
        {
            int a = 10;
            int b = 20;
            GetAllProducts g = new GetAllProducts();
            List<ProductClass> p = g.GetAllProductsList();
            Assert.IsEmpty(p, "The list is empty!!!");
        }
    }
}