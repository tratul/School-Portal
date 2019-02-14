<?php
	if($_SESSION["type"]!="s")
		header("Location:../login.php");
?>
<head>
    <style>
    a:link {
    color: green;
    background-color: transparent;
    text-decoration: none;
   }
   </style>
</head>

<td width="190" valign="top">
			<b>&nbsp;Student Panel</b><hr/>
            <ul>
                <li><a href="Student_panel.php" target="iFrame">Dashboard</a></li>
                <li><a href="sr.php" target="iFrame">Subjects & Results</a></li>
				<li><a href="notes.php" target="iFrame">Notes</a></li>
                <li><a href="notice.php" target="iFrame">Notice</a></li>
            </ul> 
            <b>&nbsp;Personal</b><hr/>
            <ul>
                <li><a href="profile.php" target="iFrame">View Profile</a></li>
                <li><a href="edit_profile.php" target="iFrame">Edit Profile</a></li>
                <li><a href="change_password.php" target="iFrame">Change Password</a></li>
                <li><a href="../logout.php">Logout</a></li>
            </ul>  
        </td>
        <td valign="top">