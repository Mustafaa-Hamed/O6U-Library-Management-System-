<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="./formstyle.css" />
    <link rel="stylesheet" href="style.css" />

    <title>studentSignIn</title>
  </head>
  <style>
        body {
            background-color: #fff;
        }
        .navbar {
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  background-color: #fff;
}

.navbar ul {
  margin: 0;
  padding: 0;
  list-style: none;
  display: flex;
  justify-content: space-between;
}

.navbar a {
  display: block;
  padding: 10px 20px;
  text-decoration: none;
  color: #333;
  font-weight: bold;
}
.input{

  width: 400px;
            margin-right: 10px;

            position: fixed;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
}
button[type="submit"] {
  padding: 10px 20px;
  font-size: 16px;
  background-color: #FC4F00;
  color: #fff;
  border: none;
  border-radius: 5px;
  cursor: pointer;
  transition: background-color 0.3s ease;
  
  position: absolute;
  top: calc(50% + 50px);
  left: 50%;
  transform: translateX(-50%);
}    
    </style>

  <body>
  <nav class="navbar">
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
    <main>
      <div class="container">
        


        <form action="checkin_done.php"  method="post">
          <div class="input">
            <label for="lib_id">Library ID</label>
            <input
              id="lib_id"
              name="name"
              type="text"
              required
              placeholder="xxxxxxxxx"
            />
          </div>

         

          <div class="input">
            <button type=submit id="submit" >Submit</button>
          </div>
        </form>


      </div>
    </main>
  </body>
</html>
