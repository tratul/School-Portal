<?php include "conn.php"; ?>
<?php
	
	
	$id = $_GET["id"];
	
	$sql = "select * from teacher where id='".$id."'";
	//echo $sql;
	
	$result = mysqli_query($conn, $sql);
	
	if(mysqli_num_rows($result)>0){?>
	
		<?php while($row=mysqli_fetch_assoc($result)){?>
			<img src="<?php echo $row['image'];?>" /><br/>
			Name : <font color="red"><b><?php echo $row['name'];?></b></font> <br/>
			Email : <font color="red"><b><?php echo $row['email'];?></b></font> <br/>
			Gender : <font color="red"><b><?php echo $row['gender'];?></b></font> <br/>
			Address : <font color="red"><b><?php echo $row['address'];?></b></font> <br/>
			Date of Birth : <font color="red"><b><?php echo $row['dob'];?></b></font> <br/>
	<?php } ?>
	
	<?php
	}else
	{
		echo "Not Found!";
	}
	
	$sql1 = "select * from teacherattendance where teacherid='".$id."' and present='p'";
	$result1 = mysqli_query($conn, $sql1);
	echo "Number of Days Present : <font color='red'><b>".mysqli_num_rows($result1)."</b></font><br/>";
	
	$sql2 = "select * from teacherattendance where teacherid='".$id."' and present='a'";
	$result2 = mysqli_query($conn, $sql2);
	echo "Number of Days Absent : <font color='red'><b>".mysqli_num_rows($result2)."</b></font><br/>";

	mysqli_close($conn);
	?>