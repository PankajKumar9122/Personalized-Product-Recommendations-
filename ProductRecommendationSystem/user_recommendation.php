<!DOCTYPE html>
<html lang-"en">
<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width-device-width, initial-scale=1.0">

    
    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>


</head>

<div class="container">
    <h2><div class="well text-center" style="color:#445155ff"><strong>Recommendation For You:</strong></div></h2>

<?php
    include("db.php");
    include("recommand.php");

    $products = mysqli_query($con, "select * from user_products");
    $matrix = array();

    while($product=mysqli_fetch_array($products))
    {
        $users=mysqli_query($con, "select username from users where id=$product[user_id]");
        $username=mysqli_fetch_array($users);
  
        $matrix[$username['username']][$product['product_name']]=$product['product_rating'];

    }

    $users=mysqli_query($con, "select username from users where id=$_GET[id]");
    $username=mysqli_fetch_array($users);


?>


<div class="panel panel-default">
    <div class="panel-heading">
        <h2>
            <a class="btn btn-success" href="add_user.php">Add Users</a>
            <a class="btn btn-info pull-right" href="index.php">Back</a>
        </h2>
    <div>

    <div class="panel-body">
        <table class= "table table-striped">
            <th>Product Name</th>
            <th>Product Rating</th>
            

            <?php 
                $recommendation = array();
                $recommendation = getRecommendation($matrix, $username['username']);

                foreach($recommendation as $movie=>$rating)
                {
            ?>
            <tr>
                <td><?php echo $movie; ?></td>
                <td><?php echo $rating; ?></td>
                
            </tr>

            <?php } ?>

        </table>
    </div>

</div>

