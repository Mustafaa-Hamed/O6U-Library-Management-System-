<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="style.css" />
    <title>update data</title>
  </head>
  <body>
    
<style> 
        body {
            background-color: #fff;
        }
        
        
body { font-family: Arial, sans-serif; } 
form { width: 400px; margin: 20px auto; } 
input[type=file] 
{ 
  width: 100%; 
  padding: 12px; 
  background-color:#fff;
  border: 1px solid #ccc; 
  border-radius: 4px; box-sizing: 
  border-box; 
  margin-top: 6px; 
  margin-bottom: 16px; 
  
  } 
  input[type=submit] 
  { 
    background-color: #ff8533; 
    color: white; 
    padding: 12px 20px; 
    border: none; 
    border-radius: 4px; 
    cursor: pointer; 
    border: none;
  border-bottom: 2px solid #fff;
  outline: none;
    } 
    input[type=submit]:hover { 
      background-color: #ff8533; } 
      
      .b{

        position: fixed;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
      }

      input[type=file]::-webkit-file-upload-button {
  background-color: #fff;
  color: #fff;
  padding: 10px 20px;
  border: none;
  border-radius: 5px;
  cursor: pointer;
  transition: background-color 0.3s ease;
}

input[type=file]::-moz-file-upload-button {
  background-color: #fff;
  color: #fff;
  padding: 10px 20px;
  border: none;
  border-radius: 5px;
  cursor: pointer;
  transition: background-color 0.3s ease;
}

input[type=file]::file-selector-button {
  background-color: #E8E2E2;
  color: #FC4F00;
  padding: 10px 20px;
  border: none;
  border-radius: 5px;
  cursor: pointer;
  transition: background-color 0.3s ease;
}
      </style>

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
     

    <div class="b" style="display: flex; flex-direction: column; ">
      <form action="updata_done.php" method="post" enctype="multipart/form-data">
        <label for="file">Select Excel file to upload students :</label>
        <input type="file" id="file" name="file">
        <input type="submit" value="Upload">
      </form>

      <form action="updata_done2.php" method="post" enctype="multipart/form-data">
        <label for="file">Select Excel file to upload staffs :</label>
        <input type="file" id="file" name="file">
        <input type="submit" value="Upload">
      </form>

    </div>

  </body>
</html>

