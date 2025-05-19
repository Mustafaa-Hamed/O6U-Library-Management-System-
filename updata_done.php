<?php
//call the auto load
require 'vendor/autoload.php';
//call iofactory
use PhpOffice\PhpSpreadsheet\IOFactory;

//connection with database
$conn = mysqli_connect("localhost","root","","library");

// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

//connection with frontend
if ($_SERVER["REQUEST_METHOD"] == "POST") {
  if (isset($_FILES['file']) && $_FILES['file']['error'] == 0) {
    // file was successfully uploaded
    // make a new IOFactory object
    $inputFileType = IOFactory::identify($_FILES['file']['tmp_name']);
    $objReader = IOFactory::createReader($inputFileType);

    //load the uploaded file into a PHPExcel object
    $objPHPExcel = $objReader->load($_FILES['file']['tmp_name']);

    //loop through each row in the worksheet and insert the data into the database
    $num_rows = 0;
    foreach ($objPHPExcel->getActiveSheet()->getRowIterator() as $row) {
      $cellIterator = $row->getCellIterator();
      $cellIterator->setIterateOnlyExistingCells(false);

      $data = array();
      foreach ($cellIterator as $cell) {
        $data[] = $conn->real_escape_string($cell->getValue());
      }

      //check if the student_id already exists in the database
      $sql_select = "SELECT * FROM students WHERE student_id = '" . $data[0] . "'";
      $result = $conn->query($sql_select);

      if ($result->num_rows > 0) {
        //the record already exists, update it
        $sql_update = "UPDATE students SET name = '" . $data[1] . "', college = '" . $data[2] . "', level = '" . $data[3] . "' WHERE student_id = '" . $data[0] . "'";
        if ($conn->query($sql_update) === TRUE) {
          $num_rows++;
        } else {
          echo "Error updating record: " . $conn->error;
        }
      } else {
        //the record does not exist, insert it
        $sql_insert = "INSERT INTO students (student_id, name, college, level)
        VALUES ('" . $data[0] . "', '" . $data[1] . "', '" . $data[2] . "','" . $data[3] . "')";

        if ($conn->query($sql_insert) === TRUE) {
          $num_rows++;
        } else {
          echo "Error inserting record: " . $conn->error;
        }
      }
    }

    //display the number of rows inserted to the user
    echo "<div style='text-align:center;  
    font-size:40px;  
    color:#537188;
    margin: 0 auto;
    margin-top: 240px;   
    text-shadow: 2px 2px 6px #000;
    text-transform:uppercase;
    letter-spacing:3px;
    '>"
. "Inserted " . $num_rows . " rows into the database."
. "</div>";


  } else {
    // there was an error uploading the file
    echo "Error: " . $_FILES['file']['error'];
  }
}

//close the database connection
$conn->close();
?>
