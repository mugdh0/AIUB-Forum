<?php
require_once('../controller/userControllerByAdmin.php');

 $id = $_GET['$a'];
 $admin=getUser($id);

?>
<link rel="stylesheet" href="adminMenuStyle.css">
<div class='navStyle'><ul>
  <?php
  $url='../views/mainHome.php?$a='.$id;

  echo "<li style='margin-left: 15px;'><a href='$url'>Home</a></li>";
  ?>
  <li style='margin-left:100px'><a href='../views/logout.php'>logout</a></li>
</ul></div>

<div style='margin-top:100px;' class="">
  <table align='center'>

      <form method="post" action="../controller/userControllerByAdmin.php" >
        <input type="hidden" name="id" value="<?php echo $admin["id"]?>">

          <h4 >First Name:</h4>
          <input type="text" name="firstname" value="<?php echo $admin["firstname"]?>">
          <h4 >Laset Name:</h4>
          <input type="text" name="lastname" value="<?php echo $admin["lastname"]?>">

          <h4 class="text">Username:</h4>
          <input type="text" name="uname" value="<?php echo $admin["uid"]?>">

          <h4 class="text">Password:</h4>
         <input type="text" name="pass" value="<?php echo $admin["pass"]?>">

          <h4 class="text">Email:</h4>
          <input type="text" name="email" value= "<?php echo $admin["email"]?>" ></input>

          <h4 class="text">mobile:</h4>
         <input type="text" name="mobile" value="<?php echo $admin["mobile"]?>">

         <h4 class="text">date of Birth:</h4>
        <input type="text" name="dob" value="<?php echo $admin["dob"]?>">

        <h4 class="text">Department:</h4>
       <input type="text" name="department" value="<?php echo $admin["department"]?>">

          <input type="submit" name="updateUserByUser" value="edit User">

      </form>
    </td>
  </table>

</div>
