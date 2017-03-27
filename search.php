<?php
require('db.php');
include("auth.php");
?>

<!DOCTYPE html>

<html>
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
      <title>Book Post</title>
    <link rel="stylesheet" type="text/css" href="test.css" />
    <title>JSU Book Exchange</title>
  <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700,900" rel="stylesheet">
</head>

<body>
  <header>
    <div id="nav">

       <ul>
         <li><a href="index.php" id="logo">JSU Book Exchange</a></li>
         <li><a href="mybooks.php">Book Search</a></li>
         <li><a href="bookpostdesign.php">Book Submissions</a></li>
         <li><a href="contactus.php">Contact Us</a></li>
         <li><a href="logout.php">Logout</a></li>
       </ul>
    </div>

  </header>
</header>

  <main>
    <p>Search results: </p>

  </main>
  <?php
  $output = ' ';

  if(isset($_POST['q']) && $_POST['q'] !== ' '){
    $searchq = $_POST['q'];

    $q = mysqli_query($con, "SELECT * FROM books WHERE subject LIKE '%$searchq%'
      OR isbn LIKE '%$searchq%' OR author LIKE '%$searchq%' OR title LIKE '%$searchq%'
      ") or die(mysqli_error($con));

    $c = mysqli_num_rows($q);
    if($c == 0){
      $output = 'No search results for <b>"' . $searchq . '"</b>';
      echo 'No data found';
    } else {
      while($row = mysqli_fetch_array($q)){
        $listing_id = $row['listing_id'];
        $subject = $row['subject'];
        $price = $row['price'];
        $isbn = $row['isbn'];
        $author = $row['author'];
        $title = $row['title'];
        $edition = $row['edition'];
        $quality = $row['quality'];
        $actions = $row['actions'];

        $output .= '<a href=" ' . $listing_id . '">
                    <h3> ' . $subject . '</h3>
                    <p> ' . $price . '</p>
                    <p> ' . $isbn . '</p>
                    <p> ' . $author . '</p>
                    <p> ' . $title . '</p>
                    <p> ' . $edition . '</p>
                    <p> ' . $quality . '</p>
                    <p> ' . $actions . '</p>
                    </a>';
                }
            }



      } else {
        header("location: index.php");
      }
      print("$output");
      mysqli_close($con);

   ?>

<footer>
  <div class="footer">
    Copyright &copy; JSUBOOKEXCHANGE.COM

</div>
  </footer>

</body>
</html>