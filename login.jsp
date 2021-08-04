<%String msg=request.getParameter("msg");%>
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
  <script type="text/javascript">
  function validate()
  {
	  var a=document.login.name.value;
	  var b=document.login.pass.value;
	  if(a=="")
	  {

		  alert("Please Enter Your Username");
			document.login.name.focus();
			return false;
  }
 if(b=="")
	  {

		  alert("Please Enter Your Password");
			document.login.pass.focus();
			return false;
  }
  }

  </script>
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
            <li class="current"><a href="index.jsp">Home</a></li>
            <li><a href="login.jsp">Login</a></li>
			  <li><a href="parentreg.jsp">Parent Registration</a></li>
            <li><a href="dept.jsp">Department Info</a></li>
            <li><a href="projects.html">AboutUS</a></li>
            <li><a href="contact.html">ContactUs</a></li>
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
           <h1>Login Here</h1>
			<%if(msg!=null){%>
			<h1><%=msg%></h1>
			<%}%>
		   <form name="login" action="login1.jsp"  method="post" onSubmit="return validate()">
             <table cellpadding="10" cellspacing="20">
			 <tr><td>Name</td><td><input type="text" name="name"></td></tr>
			 <tr><td>Password</td><td><input type="password" name="pass"></td></tr>
			 <tr>
			 <td>
			 Role
			 </td>
			 <td>
			 <select name="role">
			 <option value="admin">Admin</option>
			 <option value="staff">Staff</option>
			<!-- <option value="parent">Parent</option> -->
			<option value="student">Student</option>
			 </select>
			 </td>
			 </tr>
			 <tr><td colspan="2"><center><input type="submit" value="Login"></center></td></tr>
			 </table>
            </form>
			</center>
		  </div><!--close content_container-->
		</div><!--close content_item-->
      </div><!--close content-->   
	</div><!--close site_content-->  	

    <footer>
	  <a href="index.html">Home</a> | <a href="ourwork.html">Our Work</a> | <a href="testimonials.html">Testimonials</a> | <a href="projects.html">Projects</a> | <a href="contact.html">Contact</a><br/><br/>
	  <a href="http://fotogrph.com">Images</a> |  <a href="http://www.heartinternet.co.uk/vps/">Virtual Server</a>  | website template by <a href="http://www.freehtml5templates.co.uk">Free HTML5 Templates</a>
    </footer>
	
  </div><!--close main-->
  
  <!-- javascript at the bottom for fast page loading -->
  <script type="text/javascript" src="js/jquery.min.js"></script>
  <script type="text/javascript" src="js/image_slide.js"></script>
  
</body>
</html>
