<?php include "../include/headerL.php"; ?>
<?php include "../sidebar/admin_sidebar.php"; ?>

<fieldset>
    <legend><b>Generate Teacher Report</b></legend>
	<form>
		<br/>
		<table width="100%" cellpadding="0" cellspacing="0">
			<tr>
				<td align="right">Teacher</td>
				<td>:</td>
				<td>
					<?php
						include "../database/conn.php";
						$sql = "select * from teacher where status='a'";
	
						$result = mysqli_query($conn, $sql);
	
						if(mysqli_num_rows($result)>0){?>
	
							<select name = "tcombo">
							<?php while($row=mysqli_fetch_assoc($result)){?>
								<option value="<?php echo $row['id'];?>" onclick="getSelectedData('<?php echo $row['id'];?>')"><?php echo $row['name'];?></option>
						<?php } ?> </select>
	
						<?php
						}else
						{
							echo "No Approved Teacher Available!";
						}


						mysqli_close($conn);
					?>
				</td>
				<td></td>
			</tr>		
			<tr><td colspan="4"><hr/></td></tr>
		</table>
	</form>
	<center><div id="generatedreport">Select Teacher First!</div></center>
</fieldset>


<script>
		
		function getSelectedData(i){
		
		var x=i;
		var xhttp = new XMLHttpRequest();
	  
		xhttp.open("GET", "../database/generateteacherreport.php?id="+x, true);
		xhttp.send();

			xhttp.onreadystatechange = function() {
			    if (this.readyState == 4 && this.status == 200) {
			     document.getElementById("generatedreport").innerHTML = this.responseText;

			    }
			};
		}

	</script>


