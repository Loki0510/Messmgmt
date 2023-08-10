<?php
 include("admindbconn.php");
if (isset($_POST['submit']))
{
$date=$_POST["date"];
$sql = "SELECT * FROM `issueitem` WHERE date='$date'";
$result = mysqli_query($dbconn, $sql);
if (mysqli_num_rows($result)>0){
    while($row = mysqli_fetch_array($result, MYSQLI_ASSOC)){
        $sql1="select * from ``"
        echo $row['quantity'];
    }
}
else{
    echo "404";
}
}
    
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <form action="" method="POST">
        <label>enter date:</label>
        <input type="date" name="date" required>
        <input type="submit" value="submit" name="submit">

    </form>
</body>
</html>