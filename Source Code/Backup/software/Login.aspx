<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="software.Login" %>

<!DOCTYPE html>
<html>
<style>
form { 
    border: 3px solid #f1f1f1;
}

input[type=text], input[type=password] {
    width: 30%;
    padding: 12px 20px;
    margin: 8px 0;
    display: block;
    border: 1px solid #ccc;
    box-sizing: border-box;
    
}

.button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 30%;
	margin-left: 120px;
	
}


.imgcontainer {
    text-align: center;
    margin: 24px 0 12px 0;
}

img.avatar {
    width: 40%;
    border-radius: 50%;
}

.container {
    padding: 16px;
}

span.psw {
    float: right;
    padding-top: 20px;
	
}

</style>
<body>

 <form id="form1" runat="server">
  <div class="imgcontainer">
    <img src="img/niit3.jpg" alt="Avatar" class="avatar">
  </div>

  <div class="container" align="center">
    <label><b>Username</b></label>
    <asp:TextBox ID="txtUserName" runat="server" ></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfvUser" ErrorMessage="Please enter Username" 
    ControlToValidate="txtUserName" runat="server" />

    <label style ="margin-left:-12%;"><b>Password</b></label>
    <asp:TextBox ID="txtpassword" runat="server" TextMode = "Password" ></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfvPWD" runat="server" 
    ControlToValidate="txtpassword" ErrorMessage="Please enter Password"/>
    
    
    <asp:Button ID="btnSubmit" runat="server" Text="Submit" class ="button" 
          style ="margin-left:-2%;" onclick="btnSubmit_Click" />   
    
    <input type="checkbox" checked="checked"> Remember me
  </div>
 <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
  <div class="container" style="background-color:#f1f1f1">
    <span class="psw"><a href="#">Forgot  password?</a></span>
  </div>
</form>

</body>
</html>
