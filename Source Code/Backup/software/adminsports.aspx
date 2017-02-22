<%@ Page Language="C#" MasterPageFile="~/Site5.Master" AutoEventWireup="true" CodeBehind="adminsports.aspx.cs" Inherits="software.adminsports" Title="Untitled Page" %>
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
                <h2><a class="slider_tittle" href="#">Welcome to the Online Discussion Portal</a></h2>
                <p>Here you can view the recent events to be held here @NU</p>
              </div>
            </div>
          </div>

        </div>
     <div class="col-lg-12 col-md-12 col-sm-12" >
          <div class="latest_post">
            <h2><span>Latest post</span></h2>
            <div class="latest_post_container">
              <div id="prev-button"><i class="fa fa-chevron-up"></i></div>
              <ul class="latest_postnav">
                <li>
                <asp:Repeater ID ="Repeater2" runat ="server">
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
                <div>
                <center>
                    Images<br />
                    <img src = "../images/<%#Eval("image") %>" alt = "" style =" max-height:250px; max-width:450px;" />
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
