<%@page import="java.sql.*"%>
<%
	
	String msg=request.getParameter("msg");
	String n=(String)session.getAttribute("name");
	session.setAttribute("name",n);
	String subject=(String)session.getAttribute("subject");
	session.setAttribute("subject",subject);
	String y=(String)session.getAttribute("year");
	session.setAttribute("year",y);
	String b=(String)session.getAttribute("branch");
	session.setAttribute("branch",b);
	try
	{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ams","root","");
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select year,branch from staff where name='"+n+"'");
%>
<!DOCTYPE html> 
<html>

<head>
  <title>Attendance Management System</title>
  <meta name="description" content="website description" />
  <meta name="keywords" content="website keywords, website keywords" />
  <meta http-equiv="content-type" content="text/html; charset=windows-1252" />
  <link rel="stylesheet" type="text/css" href="css/style.css" />
  <!-- modernizr enables HTML5 elements and feature detects -->
  <script type="text/javascript" src="js/modernizr-1.5.min.js"></script>
</head>

<body>
  <div id="main">		

    <header>
	  <div id="strapline">
	    <div id="welcome_slogan">
	      <h3>Welcome To Attendance Management System</h3>
	    </div><!--close welcome_slogan-->
      </div><!--close strapline-->	  
	  <nav>
	    <div id="menubar">
          <ul id="nav">
            <li><a href="staff.jsp" class="current">Home</a></li>
              <li><a href="viewstudents.jsp">View Sudents</a></li>
			  <li><a href="attendance.jsp">Attendance</a></li>
			  <li><a href="changepass.jsp">Change Password</a></li>
			  <li><a href="index.jsp">Logout</a></li>
          </ul>
        </div><!--close menubar-->	
      </nav>
    </header>
    
    <div id="slideshow_container">  
	  <div class="slideshow">
	    <ul class="slideshow">
          <li class="show"><img width="940" height="250" src="images/att4.jpg" alt="&quot;Enter your caption here&quot;" /></li>
          <li><img width="940" height="250" src="images/att5.jpg" alt="&quot;Enter your caption here&quot;" /></li>
        <li><img width="940" height="250" src="images/att6.png" alt="&quot;Enter your caption here&quot;" /></li>
		</ul> 
	  </div><!--close slideshow-->  	
	</div><!--close slideshow_container-->   
	
	<div id="site_content">		
	  
	     <div class="sidebar_container">       
		<div class="sidebar">
          <div class="sidebar_item">
            <p align="justify">Opportune Technologies Time & Attendance Management module is a full featured solution that allows you to have thorough attendance planning, review & control over time management of your college. The solution allows improvising of student attendance tracking and reporting.</p>
          </div><!--close sidebar_item--> 
        </div><!--close sidebar-->     		
		<div class="sidebar">
          <div class="sidebar_item">
            <p align="justify">This functionality allows you to upload the attendance of all the syudents in one go. This function is of great help for college where major student attendance is on field work.</p>         
		  </div><!--close sidebar_item--> 
        </div><!--close sidebar-->
		<div class="sidebar">
          <div class="sidebar_item">
            <p align="justify">Opportune’s Time & Attendance system can configure and customise the Attendance rules module according to your organization rules</p>         
		  </div><!--close sidebar_item--> 
        </div><!--close sidebar-->  		
        <div class="sidebar">
          <div class="sidebar_item">
            <h2>Contact</h2>
            <p>Phone: +44 (0)1234 567891</p>
            <p>Email: <a href="mailto:info@youremail.co.uk">info@youremail.co.uk</a></p>
          </div><!--close sidebar_item--> 
        </div><!--close sidebar-->
       </div><!--close sidebar_container-->	
	   
	  <div id="content">
        <div class="content_item">
		   <center>
		   <%if(msg!=null){%>
		   <h1><%=msg%></h1>
		   <%}%>
		   <table cellspacing='10'>
		   <%while(rs.next()){%>
		   <tr>
		   <td><center><a href='attendance1.jsp?y=<%=rs.getString(1)%>&b=<%=rs.getString(2)%>'><font color='green'><%=rs.getString(1)%> <%=rs.getString(2)%></a></center></td>
			</tr>
			 <%}
			   }
			   catch(Exception e)
			   {
			   System.out.println(e);
			   }%>
			   
			 </table>
			
		   </center>
		  </div><!--close content_container-->
		</div><!--close content_item-->
      </div><!--close content-->   
	</div><!--close site_content-->  	

  
	
  </div><!--close main-->
  
  <!-- javascript at the bottom for fast page loading -->
  <script type="text/javascript" src="js/jquery.min.js"></script>
  <script type="text/javascript" src="js/image_slide.js"></script>
  
</body>
</html>
