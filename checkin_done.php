
<style>
        body {
            background-color: #FAEAB1;
        }
        
        
    </style>
<?php
//connection with database
$conn = mysqli_connect("localhost","root","","library");

//connection with frontend
if ($_SERVER["REQUEST_METHOD"] == "POST") {
  $name = $_POST['name'];
}

// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}


//when id doesn't exist in database
$sql = "SELECT student_id, name  FROM students WHERE student_id = '$name'
        UNION
        SELECT staff_id,name  FROM staffs WHERE staff_id = '$name'
        UNION
        SELECT visitor_id, name  FROM visitors WHERE visitor_id = '$name'";
$result = mysqli_query($conn, $sql);

if (mysqli_num_rows($result) == 0) {
    echo "<div style='text-align:center;  
        font-size:40px;  
        color:red;
        margin: 0 auto;
        margin-top: 240px;   
        text-shadow: 2px 2px 6px #000;
        text-transform:uppercase;
        letter-spacing:3px;
        '>"
        . "This ID : "."$name"." does not exist in the database." 
      . "</div>";

    
    die();
}
////////////////////

//////
// Initialize/reset counter if needed

$sql = "SELECT * FROM counter WHERE id = 1";
$result = $conn->query($sql);

if ($result->num_rows == 0) {
    // Date needs to be reset - update count to 0
    $sql = "UPDATE counter SET count = 0 WHERE cur_date <> CURRENT_DATE()";
    $count = 0;
    $conn->query($sql);
} else {
    $row = $result->fetch_assoc();
    $count = $row['count'];
}




// Retrieve a list of tables to search
$tables = array();
$tables[] = 'students';
$tables[] = 'staffs';
$tables[] = 'visitors';

// Loop through each table and fetch all rows
foreach ($tables as $table_name) {
    $sql = "SELECT * FROM $table_name";
    $result2 = $conn->query($sql);
    
    // Check if there are any results
    if ($result2) {
        // Get information about the columns in the result set
        $columns = $result2->fetch_fields();
        $column_names = array();
        foreach ($columns as $column) {
            $column_names[] = $column->name;
        }
        
        // Store the row information in a variable if it matches the search term
        $matching_rows = array();
        while ($row2 = $result2->fetch_assoc()) {
            foreach ($column_names as $col_name) {
                $col_value = $row2[$col_name];
                if ($col_value === $name) {
                    $matching_rows[] = $row2;

                    // Insert into visits table
                    if ($table_name === 'staffs') {
                        $sql = "INSERT INTO staffvisits (staff_id) VALUES ('$name')";
                        $conn->query($sql);
                    } else if ($table_name === 'students') {
                        $sql = "INSERT INTO studentvisits (student_id) VALUES ('$name')";
                        $conn->query($sql);
                    } else if ($table_name === 'visitors') {
                        $sql = "INSERT INTO visitor_visits (visitor_id) VALUES ('$name')";
                        $conn->query($sql);
                    } 
                    
               $sql = "SELECT * FROM control WHERE id = '$name';";
                 $result = mysqli_query($conn, $sql);
               $row = mysqli_fetch_assoc($result);

               // Delete rows not equal to today's date
             $sql = "DELETE FROM control WHERE date <> CURDATE();";
           mysqli_query($conn, $sql);

          if (!$row) {
             // Name does not exist, insert with status 1
            $sql = "INSERT INTO control (id, date, status) VALUES ('$name', CURDATE(), 1);";
          mysqli_query($conn, $sql);
        } else if ($row['status'] == 0) {
                                // Name exists with status 0, update
            $sql = "UPDATE control SET status = 1 WHERE id = '$name';";
         mysqli_query($conn, $sql);
       } elseif ($row['status'] == 1) {
    echo "<div style='text-align:center;  
        font-size:40px;  
        color:red;
        margin: 0 auto;
        margin-top: 240px;   
        text-shadow: 2px 2px 6px #000;
        text-transform:uppercase;
        letter-spacing:3px;
        '>"
        . "Please, you must check out first to this ID !" 
      . "</div>";
         die();
        }
                    break;
                }
                }
            }
        }
        


        // Display the row information for all matching rows
        foreach ($matching_rows as $row2) {
            foreach ($row2 as $col_name2 => $col_value2) {
                echo "<div style='
                justify-content: center;  
                align-items: center;
                '>
                
             <div style='text-align:center; margin: 0 auto;'>  
                
                 <label style='font-size: 20px'>
                     $col_name2
                 </label>
                 
                 <div >
                     <input style='padding: 5px 10px;  
                               font-size: 16px;  
                               text-align:center;
                               border: 1px solid #F79540;
                               border-radius: 4px;  
                               width: 300px;'                    
                     value='$col_value2' />
                 </div><br>
                 
             </div>
       
            </div>";
            }
        }
    } 


// Build and execute the SQL query
$sql = "SELECT COUNT(*) AS total 
        FROM (
            SELECT * FROM staffvisits WHERE DATE(checkin_date) = curdate()
            UNION ALL
            SELECT * FROM studentvisits WHERE DATE(Stucheckin_date) = curdate()
            UNION ALL
            SELECT * FROM visitor_visits WHERE DATE(checkin_date) = curdate()
        ) AS visits";
$result = mysqli_query($conn, $sql);

// Fetch the result as an associative array
$row = mysqli_fetch_assoc($result);

$sql = "UPDATE counter SET count = " . $row['total'] . " WHERE id = 1";


//control the process of check in and out
//$sql = "INSERT INTO control (id, status) VALUES ('$name', 1)";
//$conn->query($sql);




$conn->query($sql);

$conn->close();
?>
