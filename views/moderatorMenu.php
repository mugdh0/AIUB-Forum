<link rel="stylesheet" href="adminMenuStyle.css">
<div class='navStyle'><ul>
  <?php
  $a = $_SESSION['id'];
  $url='../views/mainHome.php?$a='.$a;

  echo "<li style='margin-left: 15px;'><a href='$url'>Home</a></li>";
  ?>
<li><a href='allPost.php'>ALL POST</a></li>
<li><a href='allModerator.php'>all moderators</a></li>
<li><a href='allUser.php'>all users</a></li>
<li><a href='addUser.php'>Add user</a></li>
<li><a href='addModerator.php'>add moderator</a></li>
<li style='margin-left:100px'><a href='../views/logout.php'>logout</a></li>
</ul></div>
