<?php
if(isset($_POST['submit'])){
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "library";
    $conn = new mysqli($servername, $username, $password, $dbname);
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }


    $conn->set_charset('utf8');

    $college = $_POST['college'];
    $date_from = $_POST['date_from'];
    $date_to = $_POST['date_to'];
    $date_from_new_format = date('Y/m/d', strtotime($date_from));
    $date_to_new_format = date('Y/m/d', strtotime($date_to));
     
    if($college==='All Faculties'){
        $sql="SELECT staffs.staff_id, staffs.name, staffs.college, staffs.staff_position, staffvisits.checkin_date,staffvisits.date_ins ,checkout_staff.check_out_date FROM staffs 
    JOIN staffvisits ON staffs.staff_id = staffvisits.staff_id 
    JOIN checkout_staff ON staffs.staff_id = checkout_staff.staff_id 
    WHERE staffvisits.date_ins between '$date_from_new_format' AND '$date_to_new_format' AND checkout_staff.date_out between '$date_from_new_format' AND '$date_to_new_format'  ";




    }else{
    $sql="SELECT staffs.staff_id, staffs.name, staffs.college, staffs.staff_position, staffvisits.checkin_date,staffvisits.date_ins ,checkout_staff.check_out_date FROM staffs 
    JOIN staffvisits ON staffs.staff_id = staffvisits.staff_id 
    JOIN checkout_staff ON staffs.staff_id = checkout_staff.staff_id 
    WHERE staffs.college ='$college' AND staffvisits.date_ins between '$date_from_new_format' AND '$date_to_new_format'AND checkout_staff.date_out between '$date_from_new_format' AND '$date_to_new_format'";

    }
$result = $conn->query($sql);

// Check if there are any results   
if ($result->num_rows > 0) {

     // Output the results as CSV   
     //header('Content-Type: text/csv');
     header('Content-Type: text/csv; charset=utf-8');
     header('Content-Disposition: attachment; filename="results.csv"');

     $output = fopen('php://output', 'w');

     fputcsv($output, array('id', 'name', 'college', 'indate', 'outdate', 'position'));

     while($row = $result->fetch_assoc()) {
         fputcsv($output, array($row['staff_id'], $row['name'], $row['college'], $row['checkin_date'], $row['check_out_date'], $row['staff_position']));
      }

     fclose($output);

} else {
    echo "No results found.";
}


  // Close statement and connection
  $conn->close();
   }
?>
