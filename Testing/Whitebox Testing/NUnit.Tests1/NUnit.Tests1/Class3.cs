using NUnit.Framework;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using OpenQA.Selenium;
using OpenQA.Selenium.Firefox;
using Mntone.XPath;



namespace NUnit.Tests1
{
    [TestFixture]
    public class Class3
    {
        private IWebDriver driver;
        private StringBuilder verificationErrors;
        private string baseURL;
        private bool acceptNextAlert = true;

        [SetUp]
        public void SetupTest()
        {
            driver = new FirefoxDriver();
            baseURL = "http://localhost:52963";
            verificationErrors = new StringBuilder();
        }

        [TearDown]
        public void TeardownTest()
        {
            try
            {
                driver.Quit();
            }
            catch (Exception)
            {
                // Ignore errors if unable to close the browser
            }
            Assert.AreEqual("", verificationErrors.ToString());
        }

        [Test]
        public void TheCTest3()
        {
            driver.Navigate().GoToUrl(baseURL + "/WebForm2.aspx");
            driver.FindElement(By.Id("txtUserName")).Clear();
            driver.FindElement(By.Id("txtUserName")).SendKeys("ss");
            driver.FindElement(By.Id("txtpassword")).Clear();
            driver.FindElement(By.Id("txtpassword")).SendKeys("ss");
            driver.FindElement(By.Id("btnSubmit")).Click();
            driver.FindElement(By.XPath("//div[@id='navbar']/ul/li[2]/div[2]/button")).Click();
            driver.FindElement(By.XPath("(//a[contains(text(),'LOST POST')])[2]")).Click();
            driver.FindElement(By.XPath("(//a[contains(text(),'Select')])[8]")).Click();
            driver.FindElement(By.Id("ctl00_ContentPlaceHolder1_TxtEditLost")).Clear();
            driver.FindElement(By.Id("ctl00_ContentPlaceHolder1_TxtEditLost")).SendKeys("A Blue Coloured Class Mate Notebook has been Lost. Founder may contact :\nABC\n9123654789");
            driver.FindElement(By.Id("ctl00_ContentPlaceHolder1_BtnEditLost")).Click();

        }
        private bool IsElementPresent(By by)
        {
            try
            {
                driver.FindElement(by);
                return true;
            }
            catch (NoSuchElementException)
            {
                return false;
            }
        }

        private bool IsAlertPresent()
        {
            try
            {
                driver.SwitchTo().Alert();
                return true;
            }
            catch (NoAlertPresentException)
            {
                return false;
            }
        }

        private string CloseAlertAndGetItsText()
        {
            try
            {
                IAlert alert = driver.SwitchTo().Alert();
                string alertText = alert.Text;
                if (acceptNextAlert)
                {
                    alert.Accept();
                }
                else
                {
                    alert.Dismiss();
                }
                return alertText;
            }
            finally
            {
                acceptNextAlert = true;
            }
        }
    }
}
