using NUnit.Framework;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using OpenQA.Selenium;
using OpenQA.Selenium.Firefox;




namespace NUnit.Tests1
{
    [TestFixture]
    public class Class2
    {
        private IWebDriver driver;
        private StringBuilder verificationErrors;
        private string baseURL;
        private bool acceptNextAlert = true;

        [SetUp]
        public void SetupTest()
        {
            driver = new FirefoxDriver();
            baseURL = "http://localhost:52963/";
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
        public void TheCTest2()
        {
            driver.Navigate().GoToUrl(baseURL + "WebForm2.aspx");
            driver.FindElement(By.Id("txtUserName")).Clear();
            driver.FindElement(By.Id("txtUserName")).SendKeys("ss");
            driver.FindElement(By.Id("txtpassword")).Clear();
            driver.FindElement(By.Id("txtpassword")).SendKeys("ss");
            driver.FindElement(By.Id("btnSubmit")).Click();
            driver.FindElement(By.XPath("//section[@id='sliderSection']/div/div[2]")).Click();
            driver.FindElement(By.CssSelector("button.dropbtn")).Click();
            driver.FindElement(By.LinkText("LOST POST")).Click();
            driver.FindElement(By.Id("ctl00_ContentPlaceHolder1_TextBox2")).Clear();
            driver.FindElement(By.Id("ctl00_ContentPlaceHolder1_TextBox2")).SendKeys("NoteBook Lost");
            driver.FindElement(By.Id("ctl00_ContentPlaceHolder1_TextBox1")).Clear();
            driver.FindElement(By.Id("ctl00_ContentPlaceHolder1_TextBox1")).SendKeys("A Blue Coloured Class Mate Notebook has been Lost. Founder may contact :\nABC\n9123654789");
            driver.FindElement(By.Id("ctl00_ContentPlaceHolder1_Button1")).Click();

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
