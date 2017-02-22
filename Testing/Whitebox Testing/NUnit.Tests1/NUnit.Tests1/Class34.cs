using NUnit.Framework;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using OpenQA.Selenium;
using OpenQA.Selenium.Firefox;





namespace SeleniumTests
{
    [TestFixture]
    public class Class34
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
        public void TestSuperadminadduserpost()
        {
            driver.Navigate().GoToUrl(baseURL + "/WebForm2.aspx");
            driver.FindElement(By.Id("txtUserName")).Clear();
            driver.FindElement(By.Id("txtUserName")).SendKeys("superadmin");
            driver.FindElement(By.Id("txtpassword")).Clear();
            driver.FindElement(By.Id("txtpassword")).SendKeys("superadmin");
            driver.FindElement(By.Id("btnSubmit")).Click();
            driver.FindElement(By.LinkText("ADD USER")).Click();
            driver.FindElement(By.Id("ctl00_ContentPlaceHolder1_Txtname")).Clear();
            driver.FindElement(By.Id("ctl00_ContentPlaceHolder1_Txtname")).SendKeys("Yatham Praveen");
            driver.FindElement(By.Id("ctl00_ContentPlaceHolder1_TxtAge")).Clear();
            driver.FindElement(By.Id("ctl00_ContentPlaceHolder1_TxtAge")).SendKeys("19");
            driver.FindElement(By.Id("ctl00_ContentPlaceHolder1_Txtcontact")).Clear();
            driver.FindElement(By.Id("ctl00_ContentPlaceHolder1_Txtcontact")).SendKeys("7737158755");
            driver.FindElement(By.Id("ctl00_ContentPlaceHolder1_Txttype")).Clear();
            driver.FindElement(By.Id("ctl00_ContentPlaceHolder1_Txttype")).SendKeys("1");
            driver.FindElement(By.Id("ctl00_ContentPlaceHolder1_Txtusername")).Clear();
            driver.FindElement(By.Id("ctl00_ContentPlaceHolder1_Txtusername")).SendKeys("yp");
            driver.FindElement(By.Id("ctl00_ContentPlaceHolder1_Txtpassword")).Clear();
            driver.FindElement(By.Id("ctl00_ContentPlaceHolder1_Txtpassword")).SendKeys("yp");
            driver.FindElement(By.Id("ctl00_ContentPlaceHolder1_Txtbranch")).Clear();
            driver.FindElement(By.Id("ctl00_ContentPlaceHolder1_Txtbranch")).SendKeys("User");
            driver.FindElement(By.Id("ctl00_ContentPlaceHolder1_Button1")).Click();
            driver.FindElement(By.Id("ctl00_A1")).Click();
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

        private class SelectElement
        {
            private IWebElement webElement;

            public SelectElement(IWebElement webElement)
            {
                this.webElement = webElement;
            }

            internal void SelectByText(string v)
            {
                throw new NotImplementedException();
            }
        }
    }
}
