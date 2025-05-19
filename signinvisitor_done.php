
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
   $phone = $_POST['phone'];
   $nat_id = $_POST['nat_id'];
   $lib_id = $_POST['lib_id']; 
    
  }
  
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

// Execute the SQL INSERT statement
$sql = "INSERT INTO visitors (visitor_id, name, SSN, phone) VALUES ('$lib_id','$name', '$nat_id', '$phone')";
if (mysqli_query($conn, $sql)) {
  echo "<div style='text-align:center;  
        font-size:40px;  
        color:#537188;
        margin: 0 auto;
        margin-top: 240px;   
        text-shadow: 2px 2px 6px #000;
        text-transform:uppercase;
        letter-spacing:3px;
        '>"
. "New visitor created successfully." 
. "</div>";
} else {
    echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}
$conn->close();
?>