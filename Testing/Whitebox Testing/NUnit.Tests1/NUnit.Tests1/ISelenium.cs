namespace NUnit.Tests1
{
    internal interface ISelenium
    {
        void Open(string v);
        void Type(string v1, string v2);
        void Click(string v);
        void WaitForPageToLoad(string v);
        void Start();
        void Stop();
    }
}