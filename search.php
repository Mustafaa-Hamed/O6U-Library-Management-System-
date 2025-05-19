<!DOCTYPE html> 
<html lang="en">
<head>
<meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="style.css" />
        <title>Search</title>
    <style>
        body {
            background-color: #fff;
        }
        
        
        
        form {
            display: flex;
            justify-content: center;
            align-items: center;
            margin-top: 100px;
        }
        
        input[type="text"] {
            padding: 10px;
            font-size: 16px;
            border: fixed;
            border-radius: 5px;
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
  
  position: fixed;
  top: 50%;
  right: 30%;
  transform: translateY(-50%);
}
        
        button[type="submit"]:hover {
            background-color: #F5A623;
            color: #FFFFFF;
        }
    </style>
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
    <form method="post" action="search_done.php">
        <input type="text" name="id" placeholder="Search">
        <button type="submit" name="submit">Search</button>
    </form>

</body>
</html>