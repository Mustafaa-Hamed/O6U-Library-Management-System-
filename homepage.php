<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>O6U Library</title>
    <link rel="stylesheet" href="style.css" />
  </head>

  
  <body>
    <nav>
      <div class="logo">
        <img src="image/logo2.png" alt="logo" />

      </div>

      <ul>
        <li><a href="homepage.php">Home</a></li>
        <li><a href="signinvisitor.php">New Visitor</a></li>
        <li><a href="updata.php">Update Data</a></li>
        <li><a href="status.php">Library Status</a></li>
        <li><a href="report.php">
            <button class="button-20" role="button">Report</button></li>
              </a>
      </ul>
     

    </nav>
     

    <h1 class="welcome">Welcome to <span>O6U</span> Library</h1>

    <div class="container">    
      <div class="left">
        <h3>O6U Library</h3>
        <h1>
          <span>Your Favorite <br /></span>Books,
          <span>All in one <br /></span> place.
        </h1>

        <h2>Select a Service</h2>
        <a href="checkin.php">
        <button class="btn1">Check In</button> </a>
        <h3 style="display: inline-block; margin-top: 1px">OR</h3>
        <a href="checkout.php">
        <button class="btn2">Check Out</button></a>
      </div>
      <div class="right">
      <img src="image/1.png" width=  "66%"/>
      </div>
    </div>    
  </div>


    <!--div class="bottom">
      <div class="checkings"></div>
      <div class="circcont">
        <div class="circle1">
          <p>Number of people who checked in today:</p>
          <svg viewBox="0 0 80 80" width="80" height="80">
            <circle class="circle" cx="40" cy="40" r="38" />
          </svg>
        </div>
        <div class="circle2">
          <p>Number of people who are in the library right now:</p>
          <svg viewBox="0 0 80 80" width="80" height="80">
            <circle class="circle" cx="40" cy="40" r="38" />
          </svg>
        </div>
      </div>
    </div>-->
  </body>
</html>
