<?php include "include/header.php"; ?>
<?php include "database/conn.php"; ?>
<!DOCTYPE HTML>
<html>
	<head>
		<link rel="stylesheet" type="text/css" href="css/complete-user-registration-form-validation.css"/>
	</head>
	<script>
	function Submit1(){
	document.getElementById("Registerform").reset();}
		function Submit(){
		var emailRegex = /^[A-Za-z0-9._]*\@[A-Za-z]*\.[A-Za-z]{2,5}$/;
		var nameRegex = /^[A-Z a-z]*$/;
		var mobileRegex = /^[0-9]*$/;
		var fname = document.Registerform.Name.value,
		Email = document.Registerform.Email.value,
        father_name = document.Registerform.fname.value,
			mother_name = document.Registerform.mname.value,
			address = document.Registerform.address.value,			
			Password = document.Registerform.Password.value,
			re_Password = document.Registerform.re_Password.value,
			class1 = document.Registerform.class1.value;
				radiobutton = document.Registerform.radiobutton.value;
			image = document.Registerform.myfile.value;
			 date= document.Registerform.date.value;
			
			
		if( fname == "" )
	   {
		 document.Registerform.Name.focus() ;
		 document.getElementById("errorBox").innerHTML = "enter the full name";
		 return false;
	   } 
	   
	   else if(!nameRegex.test(fname)){
			document.Registerform.Name.focus();
			document.getElementById("errorBox").innerHTML = "Enter only alfabets";
			return false;
		 }
			if(Email == "")
		 {
			 document.Registerform.Email.focus();
			 document.getElementById("errorBox").innerHTML = "enter the Email";
			 return false;
		 }else if(!emailRegex.test(Email)){
			document.Registerform.Email.focus();
			document.getElementById("errorBox").innerHTML = "enter the valid Email";
			return false;
		 }
		 
			
		 	if( father_name == "" )
	   {
		 document.Registerform.fname.focus() ;
		 document.getElementById("errorBox").innerHTML = "enter the full name";
		 return false;
	   } 
	   
	   else if(!nameRegex.test(father_name)){
			document.Registerform.fname.focus();
			document.getElementById("errorBox").innerHTML = "Enter only alfabets";
			return false;
		 }	
		 	if( mother_name == "" )
	   {
		 document.Registerform.mname.focus() ;
		 document.getElementById("errorBox").innerHTML = "enter the full name";
		 return false;
	   } 
	   
	   else if(!nameRegex.test(mother_name)){
			document.Registerform.mname.focus();
			document.getElementById("errorBox").innerHTML = "Enter only alfabets";
			return false;
		 }
       
       
		 
		 	if( address == "" )
	   {
		 document.Registerform.address.focus() ;
		 document.getElementById("errorBox").innerHTML = "enter the full address";
		 return false;
	   } 
	   
	   else if(!nameRegex.test(address)){
			document.Registerform.address.focus();
			document.getElementById("errorBox").innerHTML = "Enter only alfabets";
			return false;
		 }   
		 
	   
	   if (Password == "" )
		{
			document.Registerform.Password.focus();
			document.getElementById("errorBox").innerHTML = "enter the Password";
			return false;
		 } else if(Password.length<2)
		 {
			 document.Registerform.Password.focus();
			 document.getElementById("errorBox").innerHTML = "Password must be at least 8 char long";
			 return false;
		 }
		 
		  if (re_Password == "" )
		{
			document.Registerform.re_Password.focus();
			document.getElementById("errorBox").innerHTML = "Re-enter the Password";
			return false;
		 }
		 
		 if(re_Password !=  Password){
			 document.Registerform.re_Password.focus();
			 document.getElementById("errorBox").innerHTML = "Password are not matching, re-enter again";
			 return false;
			 }
		 
        
		 
		 if (class1 == "") {
			document.Registerform.class1.focus();
			document.getElementById("errorBox").innerHTML = "select your Prefered Class";
			return false;
		 }
		 
		  if (image == "") {
			document.Registerform.image.focus();
			document.getElementById("errorBox").innerHTML = "select your image";
			return false;
		 }
		  
		if(document.Registerform.radiobutton[0].checked == false && document.Registerform.radiobutton[1].checked == false){
			document.Registerform.radiobutton.value;
					document.getElementById("errorBox").innerHTML = "select your gender";
				 return false;
				}
		
		 if (date == "") {
			document.Registerform.date.focus();
			document.getElementById("errorBox").innerHTML = "select your Date of Birth";
			return false;
		 }
		 
	 
			if(fname != '' &&  father_name != '' && mother_name != '' &&  Password  != '' && re_Password != '' &&   Email != '' && address != '' && class1 !='' && image != '' && radiobutton != '' && date != ''){
				alert( "Submitting Registerform? ");
				}
			  
	}
	</script>
 <body>	
<fieldset>
 <legend> <h1 class="form_title">Student Registration Form</h1></legend> 
  <div id="container">
	  <div id="container_body">
	 <form name="Registerform" action="registration_check1.php" method="POST"  enctype="multipart/form-data" >
		<div id="errorBox"></div>
		  
		<table width="100%" cellpadding="0" cellspacing="0">
		
			<tr>
				<td>Name</td>
				<td>:</td>
				<td> <div id="comman"><input type="text" name="Name" value="" placeholder="Full Name"  class="input_text">   </div>      
				<td></td>
			</tr>		
			<tr><td colspan="4"><hr/></td></tr>
			
			<tr>
				<td>Email</td>
				<td>:</td>
				<td>
					 <div id="comman">
					<input type="text" name="Email" value=""  placeholder="Example@gmail.com" class="input_text">
					</div>
				</td>
				<td></td>
			</tr>		
			<tr><td colspan="4"><hr/></td></tr>
			<tr>
				<td>Father's Name</td>
				<td>:</td>
				<td> <div id="comman">
			<input type="text" name="fname" value="" placeholder="Full Name"  class="input_text">        
		  </div></td>
				<td></td>
			</tr>		
			<tr><td colspan="4"><hr/></td></tr>
			<tr>
				<td>Mother's Name</td>
				<td>:</td>
				<td> <div id="comman">
			<input type="text" name="mname" value="" placeholder="Full Name"  class="input_text">        
		  </div></td>
				<td></td>
			</tr>	
			<tr><td colspan="4"><hr/></td></tr>
			<tr>
				<td>Present Address</td>
				<td>:</td>
				<td> <div id="comman">
			<input type="text" name="address" value=""  placeholder="Only Characters Value" class="input_text">
		  </div></td>
				<td></td>
			</tr>		
			<tr><td colspan="4"><hr/></td></tr>
			<tr>
				<td>Password</td>
				<td>:</td>
				<td><div id="comman">
			<input type="password" name="Password" value=""  placeholder="New Password" class="input_text">
		      </div></td>
				<td></td>
			</tr>		
			<tr><td colspan="4"><hr/></td></tr>
			<tr>
				<td>Confirm Password</td>
				<td>:</td>
				<td> <div id="comman">
			<input type="password" name="re_Password" value=""  placeholder="Retype Password" class="input_text">
		  </div></td>
				<td></td>
			</tr>	
			
			
		<tr><td colspan="4"><hr/></td></tr>
		
				<tr>
				<td>Class</td>
				<td>:</td>
				<td> 
					 <select name="class1" >
			  <option value="" selected></option>
			  <script>
				  var i=1;
				  for(i;i<=10;i++)
				  {
				  document.write("<option value='"+i+"'>"+i+"</option>");
				  }
				  </script>
				 </select>
				</td>
				<td></td>
			</tr>	

 	<tr><td colspan="4"><hr/></td></tr>
			<tr>
				<td>Image</td>
				<td>:</td>
				<td><input name="myfile" type="file"></td>
				<td></td>
			</tr>		
			<tr><td colspan="4"><hr/></td></tr>
			<tr>
				<td colspan="3">
					<fieldset>
					<legend>Gender</legend> 
					<div id="radio_button">
		    <input type="radio" name="radiobutton" value="male">
			<label >Male</label>
			&nbsp;&nbsp;
			<input type="radio" name="radiobutton" value="female">
			<label >Female</label>   			
			
		  </div>
		 	</fieldset>
				</td>
				<td></td>
			</tr>		
			<tr><td colspan="4"><hr/></td></tr>
			</fieldset>
			
			<tr><td colspan="4"><hr/></td></tr>
			<tr>
				<td colspan="3">
					<fieldset>
						<legend>Date of Birth</legend>    
						<input type="date" name="date" />
					</fieldset>
				</td>
				<td></td>
			</tr>
			
		</table>
		<hr/>
		<div>
			<input type="submit" name="submit" value="Reset" id="reSet" onClick="return Submit1();">
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="submit" name="submit" value="Sign Up" id="sign_user1" onClick="return Submit();">
		  </div>
		  <br>
		 <center>Already Register? <a href="Login.php">Login Here</a></center>
		 </form>
		</div>
	  </div>
	</body>
	