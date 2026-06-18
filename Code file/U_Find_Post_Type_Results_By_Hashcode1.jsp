<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Find Post Type Results By Hashcode</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-quicksand.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style1 {font-size: 24px}
.style3 {font-size: 18px}
.style6 {color: #000000; font-size: 16px; }
.style10 {color: #FFFF00}
.style11 {color: #FFFFFF}
.style12 {
	color: #FFFF00;
	font-size: 16px;
}
.style13 {font-size: 16px}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="index.html" class="style1"><span class="style11">Truthseeker The largest social media Ground Truth Dataset for Real or Fake content </span><br />
        </a></h1>
      </div>
      <div class="menu_nav">
        <ul>
          <li class="active"><a href="index.html"><span>Home Page</span></a></li>
        </ul>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="935" height="293" alt="" /> </a> <a href="#"><img src="images/slide2.jpg" width="935" height="293" alt="" /> </a> <a href="#"><img src="images/slide3.jpg" width="935" height="293" alt="" /> </a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2 class="style3" style="color:#FF0033">Found Post Type Results By Hashcode !!! </h2>
          <div class="post_content">
		  <p>&nbsp;</p>
          
					
					 <%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>
 <%@ page import ="java.security.Key" %>
 
 <%@ page import ="javax.crypto.Cipher" %> 
 
 <%@ page import ="java.math.BigInteger" %>
 
 <%@ page import ="javax.crypto.spec.SecretKeySpec" %>
 
 <%@ page import ="org.bouncycastle.util.encoders.Base64" %>
 
 <%@ page import ="java.security.MessageDigest,java.security.DigestInputStream" %>
 
 <%@ page import ="java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.io.BufferedInputStream" %>
 
 <table width="303" height="129" border="3"  cellpadding="0" cellspacing="0"  style="border-collapse: collapse;  margin:10px 10px 10px 10px; font-family:Verdana, Arial, Helvetica, sans-serif; font-size:14px;">
        <tr>
         	  
			 <td  width="49" height="34" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style13 style10" ><strong>Pid</strong></div></td>
          <td  width="73" height="34" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style13 style10" ><strong>Title</strong></div></td>
          <td  width="87" height="34" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style13 style10" ><strong>Post Text </strong></div></td>
		  <td  width="153" height="34" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style13 style10" ><strong> Post Type </strong></div></td>
          <td  width="115" height="34" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style3 style12 style10 style10" ><strong>Hash Code</strong></div></td>
        </tr>
 
 
 
					<%
 String s00="",s10="",s20="",s30="",s40="",s50="",s60="";
int i=0,count=0;
try 
{

   String Type=request.getParameter("type");
  
  
    String filename="filename.txt";
      				PrintStream p = new PrintStream(new FileOutputStream(filename));
					p.print(new String(Type));
			
					MessageDigest md = MessageDigest.getInstance("SHA1");
					FileInputStream fis11 = new FileInputStream(filename);
					DigestInputStream dis1 = new DigestInputStream(fis11, md);
					BufferedInputStream bis1 = new BufferedInputStream(dis1);
					//Read the bis so SHA1 is auto calculated at dis
					while (true) {
						int b1 = bis1.read();
						if (b1 == -1)
							break;
					}
 
					BigInteger bi1 = new BigInteger(md.digest());
					String spl1 = bi1.toString();
					String h1= bi1.toString(16);
  
 
	String query="select * from datasets where hc='"+h1+"' "; 
	Statement st=connection.createStatement();
	ResultSet rs=st.executeQuery(query);
	while ( rs.next() )
	{
	
			s10=rs.getString(2);
			s20=rs.getString(3);
			s30=rs.getString(4);
			s40=rs.getString(5);
			s50=rs.getString(6);
				
			
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
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
</table>
          
		  </div>
          <div class="clr"></div>
        </div>
        <p class="pages"><a href="U_Main.jsp">Back</a></p>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="footer">
    <div class="footer_resize">
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
<div align=center></div>
</body>
</html>