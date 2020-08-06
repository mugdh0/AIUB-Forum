<link rel="stylesheet" href="adminMenuStyle.css">
<div class='navStyle'><ul>
  <?php
  $a = $_SESSION['id'];
  $url='../views/mainHome.php?$a='.$a;
$urls='../views/editUserInfo.php?$a='.$a;
  echo "<li style='margin-left: 15px;'><a href='$url'>Home</a></li>

  <li><a href='$urls'>Update information</a></li>";
?>
  <li style='margin-left:100px'><a href='../views/logout.php'>logout</a></li>
  </ul></div>
</ul></div>
