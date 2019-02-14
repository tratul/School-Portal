<!doctype html>
<body>
	<head>
	<link rel="stylesheet" type="text/css" href="css/mystyle.css">
  <style>  
	  a:link {
      color: green;
      background-color: transparent;
      text-decoration: none;
   }
   </style>
	</head>
	
	
	<div class="headersection template clear">
		<h4><i>Welcome to Online School Management System</i></h4>
			<div align="right">
						<a href="#" >Home</a>&nbsp;|
						<a href="login.php">Login</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
						<a href="Student_reg.php"><img height="30" src="image/log.png">Registration As Student</a>&nbsp;|
						<a href="Teacher_reg.php"><img height="30" src="image/log.png">Registration As Teacher</a>
					</div>

		
		
	</div>
	
	<div class="navsection template clear">
		<ul>
			 <li><a href="#">Academics</a></li> 
			 <li><a href="#">About</a></li>
			 <li><a href="#">Contact</a></li>
			 <li><a href="#">Others</a></li>
		 
		 </ul>
	
	</div>
	
	<div class="contentsection template clear">
		<div class="maincontent template clear">
		
		 <div class="samepost clear">
			<h4>Post Title here</h4>
			<img src="notice.png" height="100" alt="Post image"/><marquee>
			
				<p>
				   <?php 
				    include "database/conn.php"; 
				    //$sql = "select news from dashboard where id=(select max(id) from dashboard)";
				    $sql = "select news from dashboard order by id desc";
				   $result = mysqli_query($conn, $sql);
	
					if(mysqli_num_rows($result)>0){
		
					while($row=mysqli_fetch_assoc($result)){
					
					echo $row['news']."&nbsp;&nbsp;<span>***</span>&nbsp;&nbsp;";
				   }
				   }
				   ?>
				
				
				</p>
				
				 </marquee>
			 </div>
			
			 <div class="readmore clear">
				<a href="notice1.php">Read More</a> 
			 </div>
		
		<br></br>
		
	</div>
	
		<div class="sidebar clear">
			<div class="sameSidebar clear">
				<h2>Sidebar New header</h2>
				<p>New sidebar will be here.Some text will be here.
				 New sidebar will be here.Some text will be here.</p>
			</div>
			
			<div class="sameSidebar clear">
				<h2>Sidebar New header</h2>
				<p>New sidebar will be here.Some text will be here.
				 New sidebar will be here.Some text will be here.</p>
			</div>
			
			<div class="sameSidebar clear">
				<h2>Sidebar New header</h2>
				<p>New sidebar will be here.Some text will be here.
				 New sidebar will be here.Some text will be here.</p>
			</div>
		   </div>
		</div>
	
	
    <div class="footersection template clear">
	 <p>Put Something</p>
	
	
	</div>
	
</body>