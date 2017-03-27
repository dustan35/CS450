<?php
require('db.php');
include("auth.php");
//BOOK SEARCH PAGE!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
?>

<!DOCTYPE html>

<html>
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">

    <link rel="stylesheet" type="text/css" href="test.css" />
    <title>JSU Book Exchange</title>
  <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700,900" rel="stylesheet">
</head>

<body>
  <header>
    <div id="nav">

       <ul>
         <li><a href="index.php" id="logo">JSU Book Exchange</a></li>
         <li><a href="bookpostdesign.php">Book Submissions</a></li>
         <li><a href="contactus.php">Contact Us</a></li>
         <li><a href="logout.php">Logout</a></li>
       </ul>
    </div>




    <div class="form">
      <h1>Book Search: </h1>
      <form name="booksearch" action="search.php" method="post">
         <input type="text" name="q" placeholder="Search for books..." size="40" maxlength="50" />
         <input type="submit" name="Submit" value="Search"/>

      </form>
    </div>

  </header>

<main>

</main>
<footer>
  <div class="footer">
    Copyright &copy; JSUBOOKEXCHANGE.COM

</div>
  </footer>

</body>
</html>