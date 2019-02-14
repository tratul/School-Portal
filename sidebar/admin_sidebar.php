<?php
	if($_SESSION["type"]!="a")
		header("Location:../login.php");
?>
<head>
    <style>
    a:link {
    text-decoration: none;
   }
   </style>
</head>
<td width="190" valign="top">
			<b>&nbsp;Admin Panel</b><hr/>
			
            <ul>
                <li><a href="Admin_panel.php" >Dashboard</a></li>
                <li><a href="students.php" >Students Info</a></li>
                <li><a href="teachers.php" >Teachers Info</a></li>
				<li><a href="searchuser.php" >Search User</a></li>
                <li><a href="subject.php" >Add New Subject</a></li>
				<li><a href="assignteacher.php" >Assign Teacher To Subject</a></li>
				<li><a href="sendnotice.php" >Send Notice</a></li>
				<li><a href="teacherattendance.php" >Teacher Attendance</a></li>
				<li><a href="addadmin.php" >Add Admin</a></li>
				<!--<li><a href="teacherreport.php" >Generate Teacher Report</a></li>-->
				<li><a href="studentreport.php" >Generate Student Report</a></li>
				<li><a href="profile.php" >Profile</a></li>
				<li><a href="uploadnotice.php" >Upload Notice</a></li>
            </ul> 
			<b>&nbsp;Personal</b><hr/>
            <ul>
			
                <li><a href="change_password.php" >Change Password</a></li>
                
            </ul>
			
        </td>
        <td valign="top">