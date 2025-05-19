<?php
if (isset($_POST['id'])) {

    $servername = "localhost";
    $username = "root";
    $password = ""; // Add your database password here
    $dbname = "library";

    // Connect to database
    $conn = new mysqli($servername, $username, $password, $dbname);

    $id = $_POST['id'];

    // Search for the ID in the students table
    $sql = "SELECT students.student_id, students.name, students.college, students.level, studentvisits.Stucheckin_date, checkout_student.check_out_date FROM students 
    JOIN studentvisits ON students.student_id = studentvisits.student_id 
    JOIN checkout_student ON students.student_id = checkout_student.student_id
    WHERE students.student_id='$id'";

    $result = $conn->query($sql);

    // Check if there are any results   
    if ($result->num_rows > 0) {

        // Set the headers to download a CSV file
        header('Content-Type: text/csv');
        header('Content-Disposition: attachment; filename="search_results.csv"');

        // Create an empty string to hold the CSV data
        $csv_data = '';

        // Output the column headers
        $csv_data .= 'ID,Name,College,Level,Date In,Date Out' . "\n";

        // Output the search results as a comma-separated string
        while ($row = $result->fetch_assoc()) {
            $csv_data .= $row['student_id'] . ',' . $row['name'] . ',' . $row['college'] . ',' . $row['level'] . ',' . $row['Stucheckin_date'] . ',' . $row['check_out_date'] . "\n";
        }

        // Output the CSV data
        echo $csv_data;

        // Stop execution
        exit();
    }

    // Search for the ID in the visits table
    $sql = "SELECT visitors.visitor_id, visitors.name, visitor_visits.checkin_date, checkout_visitors.check_out_date FROM visitors
    JOIN visitor_visits ON visitors.visitor_id = visitor_visits.visitor_id 
    JOIN checkout_visitors ON visitors.visitor_id = checkout_visitors.visitor_id 
    WHERE visitors.visitor_id='$id'";
    $result = $conn->query($sql);

    // Check if there are any results   
    if ($result->num_rows > 0) {

        // Set the headers to download a CSV file
        header('Content-Type: text/csv');
        header('Content-Disposition: attachment; filename="search_results.csv"');

        // Create an empty string to hold the CSV data
        $csv_data = '';

        // Output the column headers
        $csv_data .= 'ID,Name,Date In,Date Out' . "\n";

        // Output the search results as a comma-separated string
        while ($row = $result->fetch_assoc()) {
            $csv_data .= $row['visitor_id'] . ',' . $row['name'] . ',' . $row['checkin_date'] . ',' . $row['check_out_date'] . "\n";
        }

        // Output the CSV data
        echo $csv_data;

        // Stop execution
        exit();
    }

    // Search for the ID in the staffs table
    $sql = "SELECT staffs.staff_id, staffs.name, staffs.college, staffs.staff_position, staffvisits.checkin_date, checkout_staff.check_out_date FROM staffs 
    JOIN staffvisits ON staffs.staff_id = staffvisits.staff_id 
    JOIN checkout_staff ON staffs.staff_id = checkout_staff.staff_id 
    WHERE staffs.staff_id='$id'";

    $result = $conn->query($sql);

    // Check if there are any results   
    if ($result->num_rows > 0) {

        // Set the headers to download a CSV file
        header('Content-Type: text/csv');
        header('Content-Disposition: attachment; filename="search_results.csv"');

        // Create an empty string to hold the CSV data
        $csv_data = '';

        // Output the column headers
        $csv_data .= 'ID,Name,College,Position,Date In,Date Out' . "\n";

        // Output the search results as a comma-separated string
        while ($row = $result->fetch_assoc()) {
            $csv_data .= $row['staff_id'] . ',' . $row['name'] . ',' . $row['college'] . ',' . $row['staff_position'] . ',' . $row['checkin_date'] . ',' . $row['check_outdate'] . "\n";
        }

        // Output the CSV data
        echo $csv_data;

        // Stop execution
        exit();
    }

    // If no results were found, output an error message
    echo "No visits found for ID: $id";
    
    // Close the database connection
    $conn->close();
}