using NUnit.Framework;

namespace ConsoleApp1
{
    [TestFixture]
    class MyTestCase
    {
        [Test]
        public void Add ()
        {
            MyMath math = new MyMath();
            Assert.AreEqual(31, math.Add(20, 11));
        }

        [Test]
        public void Sub()
        {
            MyMath math = new MyMath();
            Assert.AreEqual(20, math.Sub(30, 10));
        }

    }
}
