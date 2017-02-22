<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="software.Home" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

   <section id="sliderSection" class="del">

	<div class="row">
									<div style="position:relative;float:right;">
<a class="twitter-timeline" data-width="360" data-height="300" data-theme="dark" data-link-color="#F5F8FA" href="https://twitter.com/niituniversity">Tweets by niituniversity</a> <script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>			
</div>

	<div class="col-lg-8 col-md-8 col-sm-8">

		<div class="slick_slider" style="margin-right:100px">
            <div class="single_iteam">
              <a href="single_page.html"> <img src="img/nu1.jpg" alt="img"></a>
              <div class="slider_article">
                <h2><a class="slider_tittle" href="#">Welcome to the Online Discussion Portal</a></h2>
                <p>Here you can view the recent events to be held here @NU</p>
              </div>
            </div>
            <div class="single_iteam">
              <a href="single_page.html"> <img src="img/nu2.jpg" alt="img"></a>
              <div class="slider_article">
                <h2><a class="slider_tittle" href="#">Welcome to the Online Discussion Portal</a></h2>
                <p>Here you can view the recent events to be held here @NU</p>
              </div>
            </div>
            <div class="single_iteam">
              <a href="single_page.html"> <img src="img/nu3.jpg" alt="img"></a>c
              <div class="slider_article">
                <h2><a class="slider_tittle" href="#">Welcome to the Online Discussion Portal</a></h2>
                <p>Here you can view the recent events to be held here @NU</p>
              </div>
            </div>
            <div class="single_iteam">
              <a href="single_page.html"> <img src="img/nu1.jpg" alt="img"></a>
              <div class="slider_article">
                <h2><a class="slider_tittle" href="single_page.html">Fusce eu nulla semper porttitor felis sit amet</a></h2>
                <p>Nunc tincidunt, elit non cursus euismod, lacus augue ornare metus, egestas imperdiet nulla nisl quis mauris. Suspendisse a pharetra urna. Morbi dui...</p>
              </div>
            </div>
          </div>

        </div>
     <div class="col-lg-12 col-md-12 col-sm-12" >
          <div class="latest_post">
            <h2 style ="line-height:28px;"><span>Latest post</span></h2>
            <div class="latest_post_container">
              <div id="prev-button"><i class="fa fa-chevron-up"></i></div>
              <ul class="latest_postnav">
                <li>
                <asp:Repeater ID ="Repeater2" runat ="server">
                <HeaderTemplate>
                
                </HeaderTemplate>
                <ItemTemplate>
                   <div class ="outer">
                <div class ="name">
                    <center>
                    <b>
                    Posted By: <%#Eval("username") %>
                     </b>
                    </center>
                    <%--<button id="demo-menu-lower-left"
							class="mdl-button mdl-js-button mdl-button--icon" style="margin-right:-2px;float:right;margin-top:-25px;z-index;999;">
					  <i class="material-icons">more_vert</i>
					</button>
					<ul class="mdl-menu mdl-menu--bottom-left mdl-js-menu mdl-js-ripple-effect"
   for="demo-menu-lower-left">
  <li class="mdl-menu__item" style="margin-left:-12px;"> <a href ="Report_User.aspx">Report</a></li>
--%>
                   
                </div>
                 <hr  style ="margin-top:0px;"/>
                <div class ="contents">
                

                <center>
                    <b>Contents of Post :</b><br />
                    <%#Eval("description") %>
                    </center>
                </div>
                <div>
                <center>
                <b>
                    Image :
                    </b><br />
                    <img src = "../images/<%#Eval("image") %>" alt = "" style =" max-height:250px; max-width:450px; " />
                    </center>
                </div>
                <br />
              </div>
              <br />
              </ItemTemplate>
              </asp:Repeater>
                </li>
	                <li>
                <asp:Repeater ID ="Repeater3" runat ="server">
                <HeaderTemplate></HeaderTemplate>
                <ItemTemplate>
                   <div class ="outer">
                <div class ="name">
                    <center>
                    <b>
                    Posted By: <%#Eval("username") %>
                     </b>
                    </center>
                   
                </div>
                 <hr  style ="margin-top:0px;"/>
                <div class ="contents">
                <center>
                    <b>Contents of Post :</b><br />
                    <%#Eval("description") %>
                    </center>
                </div>
                
                
              </div>
              <br />
              </ItemTemplate>
              </asp:Repeater>
                </li>
                <li>
                
                <asp:Repeater ID =Repeater1 runat ="server">
                   
                    <HeaderTemplate>                
                </HeaderTemplate>
                  <ItemTemplate>                   

                  <div class ="outer">
                
                <div class ="name">
                    <center>
                    <b>
                    Posted By: <%#Eval("username") %>
                     </b>
                    </center>
                   
                </div>
                 <hr  style ="margin-top:0px;"/>
                <div class ="contents">
                <center>
                    <b>Details of Event</b><br />
                    <%#Eval("description") %>
                    </center>
                </div>
                  </div>
                    <br />
                    
                </ItemTemplate>

                  </asp:Repeater>

                </li>
                
              </ul>
         
             <div id="next-button"><i class="fa  fa-chevron-down"></i></div>
            </div>
          </div>
        </div>
      </div>
    </section>   
 
</asp:Content>
