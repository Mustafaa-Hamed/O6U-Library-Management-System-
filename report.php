<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="style.css" />
    <title>Document</title>

    <style>
      .center-table {
        margin: 0 auto;
        margin-top: 140px;
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
        <li>
          <a href="report.php">
            <button class="button-20" role="button">Report</button>
          </a>
        </li>
      </ul>
    </nav>
   
    <table class="center-table">
      <tr>
        <td>
          <a href="report_visitors.php">
            <button class="btn1">Visitors</button> 
          </a>
        </td>
      </tr>
      <tr>
        <td>
          <a href="report_students.php">
            <button class="btn1">Students</button> 
          </a>
        </td>
      </tr>
      <tr>
        <td>
          <a href="report_staffs.php">
            <button class="btn1">Teaching Staff</button> 
          </a>
        </td>
      </tr>
      <tr>
        <td>
          <a href="search.php">
            <button class="btn1">ID</button> 
          </a>
        </td>
      </tr>
    </table>
        
  </body>
</html>