<?php
require('db.php');
include("auth.php");
?>
<!DOCTYPE html>
<html>
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
      <title>Dashboard</title>
    <link rel="stylesheet" type="text/css" href="test.css" />
    <title>JSU Book Exchange</title>
  <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700,900" rel="stylesheet">
</head>

<body>
  <header>
    <div id="nav">

       <ul>
         <li><a href="index.php" id="logo">JSU Book Exchange</a></li>
         <li><a href="dashboard.php">Dashboard</a></li>
         <li><a href="logout.php">Logout</a></li>
         <li><a href="contactus.php">Contact Us</a></li>
       </ul>
    </div>

    <div class="form">
         <p>Welcome to your Dashboard</p>
         <p>This is another secured page.</p>
    </div>
  </header>
<div class="container">
        <section>
          <div class="wrap">
   <div class="search">
      <input type="text" class="searchTerm" placeholder="Search for a textbook by ISBN, title or keyword">
      <button type="submit" class="searchButton">
        <i class="fa fa-search"></i>
     </button>

        </section>
      </div>
  <footer>
  <div class="footer">
    Copyright &copy; JSUBOOKEXCHANGE.COM

</div>
  </footer>

</body>
</html>
