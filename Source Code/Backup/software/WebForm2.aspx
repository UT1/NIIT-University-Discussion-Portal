<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="software.WebForm2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>

    <meta charset="utf-8">
    <title>Login</title>


        <style>
    @import url(http://fonts.googleapis.com/css?family=Exo:100,200,400);
    @import url(http://fonts.googleapis.com/css?family=Source+Sans+Pro:700,400,300);



    .body{
        position: fixed;
        overflow-y: scroll;
        width: 100%;
    	top: -20px;
    	left: -20px;
    	right: -40px;
    	bottom: -40px;
    	width: auto;
    	height: auto;
    	background-image: url("../img/1.jpg");
    	background-size: cover;
    	-webkit-filter: blur(0px);

    }



    .header{
    	position: absolute;
    	top: calc(50% - 35px);
    	left: calc(50% - 255px);
    	

    }

    .header div{
    	float: left;
    	color: #fff;
    	font-family: 'Exo', sans-serif;
    	font-size: 40px;
    	font-weight: 400;
    	margin-top:-50%;
    }

    .header div span{
    	color: #F29E20 !important;
    }

    .login{
    	position: absolute;
        margin-top:20%;
        margin-left:54%;  
    	height: 150px;
    	width: 500px;
    	padding: 10px;

    }

    .loginu{
    	width: 250px;
    	height: 30px;
    	background: transparent;
    	border: 1px solid red;
    	border-radius: 2px;
    	color: #fff;
    	font-family: 'Exo', sans-serif;
    	font-size: 16px;
    	font-weight: 400;
    	padding: 4px;
    	margin-left:-150px;
    }

    .loginp{
    	width: 250px;
    	height: 30px;
    	background: transparent;
    	border: 1px solid red;
    	border-radius: 2px;
    	color: #fff;
    	font-family: 'Exo', sans-serif;
    	font-size: 16px;
    	font-weight: 400;
    	padding: 4px;
    	margin-top: 10px;
    	margin-left:-148px;
    }

    .loginb{
    	width: 260px;
    	height: 35px;
    	background: #fff;
    	border: 1px solid #fff;
    	cursor: pointer;
    	border-radius: 2px;
    	color: #a18d6c;
    	font-family: 'Exo', sans-serif;
    	font-size: 16px;
    	font-weight: 400;
    	padding: 6px;
    	margin-top: 10px;
    	margin-left:-1px;
    }

    .loginb:hover{
    	opacity: 0.8;
    }

    .loginb:active{
    	opacity: 0.6;
    }

    .loginu:focus{
    	outline: none;
    	border: 1px solid rgba(255,255,255,0.9);
    }

    .loginp:focus{
    	outline: none;
    	border: 1px solid rgba(255,255,255,0.9);
    }

    .loginb:focus{
    	outline: none;
    }

    
    </style>

</head>

    <body oncontextmenu="return false">

      <div class="body" ></div>
    		<div class="grad"></div>
    		<div class="header">
    		<b>
    			<div>NIIT University   <span>Discussion Portal</span></div>
    		</b>
    		</div>
    		<br>
    		<form name="login" runat ="server">
    		<div class="login">
                <asp:RequiredFieldValidator ID="rfvUser" ErrorMessage="Please enter Username" 
    ControlToValidate="txtUserName" runat="server" />
                <asp:TextBox ID="txtUserName" runat="server" class ="loginu" placeholder ="Username"></asp:TextBox><br />

                <asp:RequiredFieldValidator ID="rfvPWD" runat="server" 
    ControlToValidate="txtpassword" ErrorMessage="Please enter Password"/>
                <asp:TextBox ID="txtpassword" runat="server" class ="loginp" TextMode = "Password"></asp:TextBox>

                <asp:Button ID="btnSubmit" runat="server" Text="Login" class ="loginb" onclick="btnSubmit_Click" />
                <asp:Label ID="Label1" runat="server" Text="" style ="color:Red;" ></asp:Label>
    		</div>



    </form>





</head>
</html>
