<?php
include("dbconn.php");
mysqli_select_db($dbconn, $dbName);
if (isset($_POST['submit'])) {
    $std = $_POST['stdcount'];
    $fac = $_POST['faccount'];
    $work = $_POST['workcount'];
    $oth = $_POST['othcount'];
    $date = $_POST['date'];

    $total = $std + $fac + $work + $oth;
    $sql = "INSERT INTO dining (stdc, fac, workers, others, total, date) VALUES ('$std', '$fac', '$work', '$oth', '$total', '$date')";
    if (mysqli_query($dbconn, $sql)) {
        echo "Record inserted successfully.";
    } else {
        echo "Error: " . mysqli_error($dbconn);
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Record</title>
</head>
<body>
    <form action="" method="POST">
        <table >
            <tr><td><label>students:</label>
            <td><input type="number" placeholder="enter no of students" name="stdcount">
            <tr><td> <label>faculty:</label>
            <td><input type="number" placeholder="enter no of faculty" name="faccount">
            <tr><td> <label>workers:</label>
            <td><input type="number" placeholder="enter no of workers" name="workcount">
            <tr><td> <label>others:</label>
            <td><input type="number" placeholder="enter no of others" name="othcount">
            <tr><td>
                <tr><td><label>date:</label>
                <td><input type="date" name="date">
            </td></tr>
</table>
            <input type="submit" value="enter" name="submit">
    
    </form>
</body>
</html>