<?php
//connection with database
$conn = mysqli_connect("localhost","root","","library");

// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT countout FROM counterout WHERE id = 1";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    $row = $result->fetch_assoc();
    $countout = $row["countout"];
} else {
    $countout = 0;
}

$sql1 = "SELECT count FROM counter WHERE id = 1 ";
$result1 = $conn->query($sql1);

if ($result1->num_rows > 0) {
  $row1 = $result1->fetch_assoc();
  $count = $row1["count"];
} else {
  $count = 0;
}

$now = $count - $countout;
$conn->close();
?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="style.css" />

    <title>Document</title>
  </head>
  

  <body>
 
    <nav>
      <div class="logo">
        <img src="image/logo2.png" alt="logo" />
      </div>

      <ul>
        <li><a href="homepage.php">Home</a></li>
        <li><a href="signinvisitor.php">New Visitor</a></li>
        <li><a href="#">Update Data</a></li>
        <li><a href="status.php">Library Status</a></li>
        <li><a href="report.php">
            <button class="button-20" role="button">Report</button></li>
              </a>
      </ul>
    </nav>

    <div class="container2">
      <div class="left2">
        <div class="card">
          <div class="image">
            <img src="image/./Business inequality-rafiki.svg" alt="enter" />
          </div>
          <div class="nums">
            <h1 class="no" style="color: #84A7A1;"><?php echo "$count";?>
</h1>
            <h1 class="text">Checked In</h1>
          </div>
        </div>
        <div class="card">
          <div class="image">
            <img src="image/./Business inequality-rafiki.svg" alt="enter" />
          </div>
          <div class="nums">
            <h1 class="no"style="color: #84A7A1;"><?php echo "$countout";?></h1>
            <h1 class="text"style="color: #ea7331;">Checked out</h1>
          </div>
        </div>
        <div class="card">
          <div class="image">
            <img src="image/./Business inequality-rafiki.svg" alt="enter" />
          </div>
          <div class="nums3">
            <h1 class="no"style="color: #84A7A1;"><?php echo "$now";?></h1>
            <h1 class="text"style="color: #ea7331;">In Library now</h1>
          </div>
         </div>
        </div>
      </div>
      <div class="right"></div>
    </div>
  </body>
</html>
