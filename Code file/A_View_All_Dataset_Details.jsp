<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>View_All_Dataset_Details_By_Blockchain</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-titillium600w.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style6 {font-size: 22px}
.style9 {color: #FF0000}
.style10 {color: #FF0000; font-weight: bold; }
.style12 {color: #FFFF00}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo style9">
        <h1 class="style5"><a href="index.html" class="style6 style10">Truthseeker The largest social media Ground Truth Dataset for Real or Fake content 
</a></h1>
      </div>
      <div class="searchform"></div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="314" alt="" /></a> <a href="#"><img src="images/slide2.jpg"  width="960" height="314" alt="" /></a> <a href="#"><img src="images/slide3.jpg"  width="960" height="314" alt="" /></a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
      <div class="rss">
        <p>&nbsp;</p>
      </div>
      <div class="menu_nav">
        <ul>
          <li><span><a href="index.html">Home</a></span></li>
          <li class="active"><span><a href="Admin.jsp">Admin</a></span></li>
          <li ><a href="User.html">User</a></li>
          <li><a href="Register.html"><span>Register</span></a></li>
        </ul>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2 class="style10">View All Datasets.... </h2>
          <p class="style10">&nbsp;</p>
          <div class="clr"></div>
		   <table width="629" border="1"  cellpadding="0" cellspacing="0"  >
        <tr bgcolor="#99CCCC">
		 <td  width="49" height="34" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style3 style12" ><strong>Pid</strong></div></td>
          <td  width="73" height="34" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style3 style12" ><strong>Title</strong></div></td>
          <td  width="87" height="34" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style3 style12" ><strong>Post Text </strong></div></td>
		  <td  width="153" height="34" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style3 style12" ><strong> Post Type </strong></div></td>
          <td  width="115" height="34" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style3 style12" ><strong>Hash Code</strong></div></td>
        </tr>
		  <%@ include file="connect.jsp" %>
		<%
		  
		  
		  
         
		 try
		 {
		 
         			  String s00="",s10="",s20="",s30="",s40="",s50="",s60="";
					  int i0=1,j0=0,count1=0,rank0=0,k0=0,j10=0;


							String query1="select * from datasets "; 
						   	Statement st1=connection.createStatement();
						   	ResultSet rs1=st1.executeQuery(query1);
					   		while ( rs1.next() )
					   		{
								
								
								s10=rs1.getString(2);
								s20=rs1.getString(3);
								s30=rs1.getString(4);
								s40=rs1.getString(5);
								s50=rs1.getString(6);
							
								
								count1++;
					%>
         
		  
		   
		     <tr>
              <td height="44"  valign="middle" bgcolor="#99FF33">
                  <div align="center" class="style3 style4 style9" >
                    <div align="center">
                    <%out.println(s10);%>
                </div>
              </div></td>
			  
			  <td height="44"  valign="middle" bgcolor="#FFFFFF">
                  <div align="center" class="style3 style5 style9" >
                    <div align="center">
                    <textarea><%out.println(s20);%> </textarea>              </div>
              </div>
		      <td height="44"  valign="middle" bgcolor="#FFFFFF">
                  <div align="center" class="style3 style6 style9"  >
                    <div align="center" >
       			    <textarea><%out.println(s30);%></textarea>               </div>
              </div></td>
			  
              <td height="44"  valign="middle" bgcolor="#FFFFFF">
                  <div align="center" class="style3 style9" ><strong>
               	   <%out.println(s40);%> 
              </strong></div></td>
			  
			  
			  <td height="44"  valign="middle" bgcolor="#FFFFFF">
                  <div align="center" class="style3 style9" ><strong>
               	  <textarea><%out.println(s50);%></textarea>
              </strong></div></td>
			  
			  
            </tr>
			
            <%
				
					         }
		
					}
					
					catch(Exception ex)
					{
					out.println(ex);
					}%>
        </table>
         
		 
		 
		 
		 
          <p><a href="A_Main.jsp">Back</a></p>
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="UserProfile.jsp"></a></li>
		    <li><a href="index.html">Log Out</a><br />
            </li>
            <li></li>
          </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg">
    
  <div class="footer">
    <div class="footer_resize">
      <p class="lf">&nbsp;</p>
      <p class="rf">&nbsp;</p>
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
</body>
</html>
