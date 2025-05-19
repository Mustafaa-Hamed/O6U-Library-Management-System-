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
    $date_from = $_POST['date_from'];
    $date_to = $_POST['date_to'];
    $date_from_new_format = date('Y/m/d', strtotime($date_from));
    $date_to_new_format = date('Y/m/d', strtotime($date_to));


    $sql="SELECT visitors.visitor_id, visitors.name, visitor_visits.checkin_date, checkout_visitors.check_out_date , visitor_visits.date_inv	FROM visitors 
                            JOIN visitor_visits ON visitors.visitor_id = visitor_visits.visitor_id 
                            JOIN checkout_visitors ON visitors.visitor_id = checkout_visitors.visitor_id 
                            WHERE visitor_visits.date_inv BETWEEN  '$date_from_new_format'  AND  '$date_to_new_format' AND checkout_visitors.date_out BETWEEN  '$date_from_new_format'  AND  '$date_to_new_format'   ";
    
$result = $conn->query($sql);

// Check if there are any results   
if ($result->num_rows > 0) {

     // Output the results as CSV   
     header('Content-Type: text/csv; charset=utf-8');
     header('Content-Disposition: attachment; filename="results.csv"');

     $output = fopen('php://output', 'w');

     fputcsv($output, array('id', 'name', 'indate', 'outdate'));

     while($row = $result->fetch_assoc()) {
         fputcsv($output, array($row['visitor_id'], $row['name'], $row['checkin_date'], $row['check_out_date']));
      }

     fclose($output);

} else {
    echo "No results found.";
}


  // Close statement and connection
  $conn->close();
   }
?>
