
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
        . "ID : ("."$name".") does not exist in the database." 
      . "</div>";
    die();
}

// Initialize/reset counter if needed

$sql = "SELECT * FROM counterout WHERE id = 1";
$result = $conn->query($sql);

if ($result->num_rows == 0) {
    // Date needs to be reset - update count to 0
    $sql = "UPDATE counterout SET countout = 0 WHERE cur_date <> CURRENT_DATE()";
    //$countout = 0;
    $conn->query($sql);
} else {
    $row = $result->fetch_assoc();
    $countout = $row['countout'];
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
                        $sql = "INSERT INTO checkout_staff (staff_id) VALUES ('$name')";
                        $conn->query($sql);
                    } else if ($table_name === 'students') {
                        $sql = "INSERT INTO checkout_student (student_id) VALUES ('$name')";
                        $conn->query($sql);
                    } else if ($table_name === 'visitors') {
                        $sql = "INSERT INTO checkout_visitors (visitor_id) VALUES ('$name')";
                        $conn->query($sql);
                    } 
/////////////////



// Delete rows not equal to today's date
$sql = "DELETE FROM control WHERE date <> CURDATE();";
mysqli_query($conn, $sql);


$sql = "SELECT * FROM control WHERE id = '$name' AND ID IS NOT NULL ;";
$result = mysqli_query($conn, $sql);
$row = mysqli_fetch_assoc($result);

if($row){
if ($row['status'] == 1) {
    $sql = "UPDATE control SET status = 0 WHERE id = '$name';";
    mysqli_query($conn, $sql);
    echo "<div style='text-align:center;  
        font-size:40px;  
        color:#537188;
        margin: 0 auto;
        margin-top: 240px;   
        text-shadow: 2px 2px 6px #000;
        text-transform:uppercase;
        letter-spacing:3px;
        '>"
. "Checked out successfuly." 
. "</div>";
}
    else {  /*echo "<div style='text-align:center;  
        
        font-size:40px; 
        color:red;
        margin: 0 auto;
        margin-top: 140px;
        
        '>" */
        echo "<div style='text-align:center;  
        font-size:40px;  
        color:red;
        margin: 0 auto;
        margin-top: 240px;   
        text-shadow: 2px 2px 6px #000;
        text-transform:uppercase;
        letter-spacing:3px;
        '>"
. "Please, you must check in first to this ID !" 
. "</div>";
        
        die();}}


                    break;
                }
            }
        }
    }}


// Build and execute the SQL query
$sql = "SELECT COUNT(*) AS total 
        FROM (
            SELECT * FROM checkout_student WHERE DATE(check_out_date) = curdate()
            UNION ALL
            SELECT * FROM checkout_staff WHERE DATE(check_out_date) = curdate()
            UNION ALL
            SELECT * FROM checkout_visitors WHERE DATE(check_out_date) = curdate()
        ) AS visits";
$result = mysqli_query($conn, $sql);

// Fetch the result as an associative array
$row = mysqli_fetch_assoc($result);
// Output the total count


$sql = "UPDATE counterout SET countout = " . $row['total'] . " WHERE id = 1";





$conn->query($sql);

$conn->close();
?>
