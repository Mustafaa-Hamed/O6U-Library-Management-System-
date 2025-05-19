<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="./formstyle.css" />

    <link rel="stylesheet" href="style.css" />

    <title>SignIn</title>
  </head>
<style>
nav {
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  background-color: #fff;
  z-index: 1000;
}

nav ul {
  margin: 0;
  padding: 0;
  list-style: none;
  display: flex;
  justify-content: space-between;
  align-items: center;
  margin: 0 auto;
}

nav li {
  margin: 0 10px;
}

nav a {
  color: #000;
  text-decoration: none;
  font-weight: bold;
  font-size: 18px;
}

.container {
  width: 100%;
  max-width: 1200px;
  margin: 0 auto;
  display: flex;
  justify-content: center;
  align-items: center;
  height: 100vh;
}

form {
  width: 50%;
}

.input {
  width: 100%;
}

  </style>



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
        <li><a href="report.php">
            <button class="button-20" role="button">Report</button></li>
              </a>
      </ul>
     

    </nav>

    <main>
      <div class="container">
        
        <form action="signinvisitor_done.php" method = "post">
          <div class="input">
            <label for="first_name">Name</label>
            <div class="name">
              <input
                id="first_name"
                name="name"
                type="text"
                required
                placeholder="Name"
              />
              
            </div>
          </div>
          
          <div class="input">
            <label for="nat_id">Phone Number</label>
            <input
              id="phone_id"
              name="phone"
              oninput="javascript: if (this.value.length > this.maxLength) this.value = this.value.slice(0, this.maxLength);"
    type = "number"
    maxlength = "11"
              required
              placeholder="xxxxxxxxxxx"
            />

            
          </div>

          <div class="input">
            <label for="nat_id">National ID</label>
            <input
              id="nat_id"
              name="nat_id"
              oninput="javascript: if (this.value.length > this.maxLength) this.value = this.value.slice(0, this.maxLength);"
              type = "number"
              maxlength = "16"
             
              required
              placeholder="x xxxxxx xx xxxxx"
            />
          </div>
          <div class="input">
            <label for="lib_id">Library ID</label>
            <input
              id="lib_id"
              name ="lib_id"
              type="text"
              required
              placeholder="x xxxxxx xx xxxxx"
            />
          </div>
          <div class="input">
            <button id="submit">Submit</button>
          </div>
        </form>
      </div>
    </main>
  </body>
</html>
