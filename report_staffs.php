<!DOCTYPE html> 
<html lang="en">
     <head>
         <meta charset="UTF-8"> 
         <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
         <title>Report Form</title> 
         <link rel="stylesheet" href="style.css">
         </head> 
         <body> 
            
<nav>
    <div class="logo">
        <img src="image/logo2.png" alt="logo">
    </div>

    <ul>
        <li><a href="homepage.php">Home</a></li>
        <li><a href="signinvisitor.php">New Visitor</a></li>
        <li><a href="#">Update Data</a></li>
        <li><a href="status.php">Library Status</a></li>
        <li>
            <a href="report.php">
                <button class="button-20" role="button">Report</button>
            </a>
        </li>
    </ul>
</nav>

            <div class="container"> 
                <form action="report_staffsD.php" method="post"> 
                    <h2>Report for Students </h2> 
                    <div class="form-group">
                         <label for="college">Faculty</label>
                         <select class="form-select"style="width: 150px" id="college" name="college">
            <option value="All Faculties">All Faculties</option>
                <option value="Medicine">Medicine</option>
                <option value="Dentistry">Dentistry</option>
                <option value="Pharmacy">Pharmacy</option>
                <option value="Physical Therapy">Physical Therapy</option>
                <option value="Applied Health Sciences Technology">Applied Health Sciences Technology</option>
                <option value="Nursing">Nursing</option>
                <option value="Engineering">Engineering</option>
                <option value="Info. Systems & Comp. Science">Info. Systems & Comp. Science</option>
                <option value="Applied Arts">Applied Arts</option>
                <option value="Media & Mass Comm.">Media & Mass Comm.</option>
                <option value="Economics & Managment">Economics & Managment</option>
                <option value="Language & Translation">Language & Translation</option>
                <option value="Education">Education</option>
                <option value="Tourism and Hotels">Tourism and Hotels</option>
                <option value="Postgraduate Studies">Postgraduate Studies</option>
            </select>
                             </div> 
                             <div class="form-group"> 
                                <label for="date_from">From</label>
                                 <input type="date" name="date_from" id="date_from">
                                 </div> 
                                 <div class="form-group"> 
                                    <label for="date_to">To</label>
                                     <input type="date" name="date_to" id="date_to"> 
                                    </div> <button class="btn" type="submit" name="submit"> 
                                        <span>Download</span> 
                                        <span class="loader"></span> 
                                    </button> 
                                </form> 
                            </div> 
                        </body>
                         </html> 
                         <style>  /* form styles */ 
                         form { width: 400px; padding: 30px; background: #FAEAB1; box-shadow: 0 0 20px 0px rgba(0, 0, 0, 0.1); border-radius: 5px; } .form-group { margin-bottom: 15px; } 
                         label { display: block; margin-bottom: 5px; } input { width: 100%; padding: 10px; border: 1px solid #ddd; border-radius: 3px; } 
                         select { ... } 
                         .loader { display: none; ... } 
                         .btn[disabled] 
                         .loader { display: inline-block; }
                         .form-select {
background-color: #fff;
border: 1px solid #ccc;
border-radius: 4px;
padding: 6px 12px;
font-size: 16px;
}
.select {
background: url(arrow.svg) no-repeat 95% 50%;
background-size: 20px;
padding: 10px 30px 10px 10px;
border: 1px solid #ccc;
border-radius: 4px;
font-size: 16px;
}

.select option {
font-size: 16px;
background: #fff;
}

.select:focus {
border-color: #007bff;
outline: none;
box-shadow: 0 0 3px #007bff;
}
.btn {
background-color: #ea7331;
color: #fff;
padding: 10px 20px;
border: none;
border-radius: 4px;
font-size: 16px;
cursor: pointer;
}

.loader {
border: 2px solid #007bff;
border-right-color: transparent;
border-radius: 50%;
width: 20px;
height: 20px;
animation: spin 0.6s linear infinite;
}

.btn:hover .loader {
display: inline-block;
}

.btn[disabled] .loader {
display: inline-block;
}

.btn[disabled]{
background-color: #FAAB78;
cursor: not-allowed;
}

@keyframes spin {
0% { transform: rotate(0deg); }
100% { transform: rotate(360deg); }
} 







</style>