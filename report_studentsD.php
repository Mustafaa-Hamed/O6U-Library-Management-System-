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
    $level = $_POST['level'];

    $date_from = $_POST['date_from'];
    $date_to = $_POST['date_to'];
    $date_from_new_format = date('Y/m/d', strtotime($date_from));
    $date_to_new_format = date('Y/m/d', strtotime($date_to));

    if($college==='All Faculties' && $level==='0'){
        $sql="SELECT students.student_id, students.name,students.college,students.level , studentvisits.Stucheckin_date , studentvisits.date_in,checkout_student.check_out_date FROM students 
     JOIN studentvisits ON students.student_id = studentvisits.student_id 
     JOIN checkout_student ON students.student_id = checkout_student.student_id 
   WHERE studentvisits.date_in between  '$date_from_new_format' AND  '$date_from_new_format' AND checkout_student.date_out between  '$date_from_new_format' AND  '$date_from_new_format'";
    }elseif($college==='All Faculties'){
        
    $sql="SELECT students.student_id, students.name,students.college,students.level , studentvisits.Stucheckin_date , studentvisits.date_in,checkout_student.check_out_date FROM students 
    JOIN studentvisits ON students.student_id = studentvisits.student_id 
    JOIN checkout_student ON students.student_id = checkout_student.student_id 
  WHERE students.level = $level  And studentvisits.date_in between  '$date_from_new_format' AND  '$date_from_new_format' AND checkout_student.date_out between  '$date_from_new_format' AND  '$date_from_new_format'";
    } elseif($level==='0'){
        $sql="SELECT students.student_id, students.name,students.college,students.level , studentvisits.Stucheckin_date , studentvisits.date_in,checkout_student.check_out_date FROM students 
     JOIN studentvisits ON students.student_id = studentvisits.student_id 
     JOIN checkout_student ON students.student_id = checkout_student.student_id 
   WHERE students.college = '$college'  And studentvisits.date_in between  '$date_from_new_format' AND  '$date_from_new_format' AND checkout_student.date_out between  '$date_from_new_format' AND  '$date_from_new_format'";
    } else{
    $sql="SELECT students.student_id, students.name,students.college,students.level , studentvisits.Stucheckin_date , studentvisits.date_in,checkout_student.check_out_date FROM students 
     JOIN studentvisits ON students.student_id = studentvisits.student_id 
     JOIN checkout_student ON students.student_id = checkout_student.student_id 
   WHERE students.college = '$college' AND students.level = $level  And studentvisits.date_in between  '$date_from_new_format' AND  '$date_from_new_format' AND checkout_student.date_out between  '$date_from_new_format' AND  '$date_from_new_format' ";}

        
$result = $conn->query($sql);

// Check if there are any results   
if ($result->num_rows > 0) {

     // Output the results as CSV   
     //header('Content-Type: text/csv');
     header('Content-Type: text/csv; charset=utf-8');
     header('Content-Disposition: attachment; filename="results.csv"');

     $output = fopen('php://output', 'w');

     fputcsv($output, array('id', 'name', 'college', 'indate', 'outdate', 'level'));

     while($row = $result->fetch_assoc()) {
         fputcsv($output, array($row['student_id'], $row['name'], $row['college'], $row['Stucheckin_date'], $row['check_out_date'], $row['level']));
      }

     fclose($output);

} else {
    echo "No results found.";
}


  // Close statement and connection
  $conn->close();
   }
?>
