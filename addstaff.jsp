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
	  var a=document.f1.name.value;
	  var b=document.f1.pass.value;
	  var c=document.f1.desi.value;
	  var d=document.f1.subject.value;
	  var e=document.f1.age.value;
	  if(a=="")
	  {

		  alert("Please Enter Your Username");
			document.f1.name.focus();
			return false;
  }
 if(b=="")
	  {

		  alert("Please Enter Your Password");
			document.f1.pass.focus();
			return false;
  }
   if(c=="")
	  {

		  alert("Please Enter Your Designation");
			document.f1.desi.focus();
			return false;
  }
  if(d=="")
	  {

		  alert("Please Enter Your Subject");
			document.f1.subject.focus();
			return false;
  }
  if(e=="")
	  {
	  alert("Age Should Not Be Empty");
	  document.f1.age.focus();
	  return false;
	  }
	  if(isNaN(e))
	  {
		  alert("Age Must Be in Numaric value");
		  document.f1.age.focus();
		  return false;
	  }
	  return true;
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
            <li><a href="admin.jsp" class="current">Home</a></li>
              <li><a href="addstaff.jsp">Add Staff</a></li>
              <li><a href="viewstaff.jsp">View Staff</a></li>
			   <li><a href="addstudent.jsp">Add Student</a></li>
			  <li><a href="viewstu.jsp">View Students</a></li>
			  <li><a href="addatt.jsp">Upload workingdays</a></li>
			  <li><a href="viewreport.jsp">View Report</a></li>
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
			 <h1>Staff Details</h1>
			 <form  name="f1" action="addstaff1.jsp" method="post" onSubmit="return validate()">
			 <table cellspacing="15">
			 <tr><td>Staff Name</td><td><input type="text" name="name"></td></tr>
			 <tr><td>Password</td><td><input type="password" name="pass"></td></tr>
			 <tr><td>Designation</td><td><input type="text" name="desi"></td></tr>
			 <tr><td>Subject</td><td><input type="text" name="subject"></td></tr>
			  <tr><td>Age</td><td><input type="text" name="age"></td></tr>
			 <tr><td>Year</td>
			 <td><select name="year">
			 <option value="IYEAR">IYEAR</option>
			 <option value="IIYEAR-ISEM">IIYEAR-ISEM</option>
			 <option value="IIYEAR-IISEM">IIYEAR-IISEM</option>
			 <option value="IIIYEAR-ISEM">IIIYEAR-ISEM</option>
			 <option value="IIIYEAR-IISEM">IIIYEAR-IISEM</option>
			 <option value="IVYEAR-ISEM">IVYEAR-ISEM</option>
			 <option value="IIYEAR-IISEM">IVYEAR-IISEM</option>
			 </select></td></tr>
			 <tr><td>Branch</td>
			 <td><select name="branch">
			 <option value="CSE">CSE</option>
			 <option value="IT">IT</option>
			 <option value="ECE">ECE</option>
			 <option value="EEE">EEE</option>
			 <option value="CIVIL">CIVIL</option>
			 <option value="MECHANICAL">MECHNICAL</option>
			 </select></td></tr>
			 <tr><td></td><td><input type="submit" value="Add Staff"></td></tr>
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
