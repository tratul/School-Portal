	<?php include "include/header.php"; ?>
    <?php include "database/conn.php"; ?>
	
	
	
<?php

	//error_reporting(0);
	if(isset($_POST['submit'])){
	
	$filename = $_FILES['myfile']['name'];
	
	$fileUploadPath = "file/".$filename;
	

	if (file_exists($fileUploadPath)) {
		$fileUploadPath = "file/".$filename."_1";
		$filename = $filename."_1";
	}
	
	if(move_uploaded_file($_FILES['myfile']['tmp_name'], $fileUploadPath)){
		//echo "Upload Success";
	}else{
		echo "Upload error";
	}
	

	}
?>




<?php


if ($_POST["Name"]!=""  ||  $_POST["Password"]!="" || $_POST["Email"]!="" || $_POST["fname"]!="" || $_POST["mname"]!="" || $_POST["address"]!=""|| $_POST["radiobutton"]!=""|| $_POST["date"]!=""|| $_POST["myfile"]!="")
{
		$name=$_POST["Name"];
		$password=$_POST["Password"];
		$email=$_POST["Email"];
		$fathername =$_POST["fname"];
		$mothername=$_POST["mname"];
		$address=$_POST["address"];
		$gender=$_POST["radiobutton"];
		 $dob  =$_POST["date"];
	  
		
	
		
		
	
//$sql = "insert into student values('','".$name."','".$class."','".$password."','".$email."','".$fathername."','".$mothername."','".$address."','".$gender."','".$dob."','".$image."','p')";
$sql1 = "insert into alldata values('','".$password."','".$email."','p', 't')";
	    //echo $sql;
		if(mysqli_query($conn, $sql1)){
			$sql = "select * from alldata where email='".$email."'";
	
			$result = mysqli_query($conn, $sql);
			if(mysqli_num_rows($result)>=1){
		
				while($row=mysqli_fetch_assoc($result)){
					$id=$row['id'];
					
					$sql = "insert into teacher values('".$id."','".$name."','".$password."','".$email."','".$fathername."','".$mothername."','".$address."','".$gender."','".$dob."','".$filename."','p')";
					//echo $sql ;
					if(mysqli_query($conn, $sql))
						echo "Registration Successfull, Your Id Is :".$id;
					else
						"<br/> SQL Error".mysqli_error($conn);
					
					
				}
		}else{
			echo "<br/> SQL1 Error".mysqli_error($conn);
		}
		
		
		//echo "<pre>";print_r($GLOBALS);echo "</pre>";
	
		
		mysqli_close($conn);
		
	
}
}
else
	echo " Please Selects All Field <b>";



?>





	
	

	
	


