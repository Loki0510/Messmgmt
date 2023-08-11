<?php 
session_start();
include("admindbconn.php");?>

                         
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Home::</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
    <link rel="stylesheet" href="css/nav.css">
    <link rel="stylesheet" href="css/icon.css">
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body{
        background-color: whitesmoke;
        background-image: url(img/xyz.jpg);
        background-size: cover;
    
    }

.dropdown-content {
    display: none;
    position: relative;
    background-color: black;
    color: black;
    min-width: 10px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1000;
    
}

 ul{
    
        margin-left: 300px;
         list-style-type: none;
        padding: 1px;
        overflow: hidden;
    }
 button{
        width: 100%;
    }
 table {
           border-collapse: collapse;
           margin-top:30px; 
           width:50%;
          
           background-color: rgb(0,0,0,0.5);
           
        }

       th, td {
                text-align: center;
                padding: 8px;
                width:auto;
        }

       tr:nth-child(even){background-color: rgb(0,0,0,0.0); color:white;}
         tr:nth-child(odd){background-color: rgb(0,0,0,0.0); color:white;}
       th {
           background-color: rgb(0,0,0,0.0); 
           color: white;
           width: auto;
        }
  
   .i img{
        width:180px; 
        height:200px;
    
        margin-top: 50px; 
     
        border: 2px solid black;
    }
    
     .button {
            display: inline-block;
            background-color: darkorange;
            border: none;
            color: #CC4700;
            text-align: center;
            font-size: 15px;
            padding: 10px 18px;
            width: 100px;
            transition: all 0.5s;
            cursor: pointer;
            margin-top: -20px;
            
             margin-right: 20px;
             box-shadow: 3px 3px #FF9F6B;
             border-radius: 10px;
             height: 40px;
 
}

        .button span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

        .button span:after {
  content: '\00bb';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}

        .button:hover span {
  padding-right: 25px;
}

        .button:hover span:after {
  opacity: 1;
  right: 0;
}
    #profile{
        width:22%; 
        height:585px; 
        background-color: rgb(0,0,0,0.5); 
        
        margin-bottom:12px; 
        float:left;
        margin-left: 7%;
        margin-top: 50px;
        color: white;
        
    }
    th{
        color:darkorange;
    }
 .ima{
                background-color: white;
            }
</style>    
</head>
<body> 

                                <!-- navigation bar -->

<div class="navbar" style="margin-top:-18px; width:100%; position: -webkit-sticky;position: sticky; top: 0px;">
 <ul>

  <a href="#">Dashboard</a>

    <div class="dropdown">
    <button class="dropbtn">Inventory 
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="purchase.php">Purchase</a>
      <a href="issue.php">Issue item</a>
      <a href="stock.php">Stock</a>
    </div>
    </div>
     <a href="purchaserecord.php">Purchase Item Record</a>
     <a href="issuerecord.php">Issue Item Record</a>
     <a href="studentrecord.php">Student Record</a>
     <a href="adminregistration.php">Add member</a>

     <a href="logout.php" style="float: right; margin-right: 20px;">Log out</a>
           
    </ul>
  </div>
  
    
 <div id="profile">
    
           <?php 
                $em=$_SESSION['email'];
                $sqlget = "SELECT * FROM admin WHERE email = '$em'";
                $sqldata = mysqli_query($dbconn, $sqlget) or die('error getting');
            ?>
 
            <?php 
                while($row = mysqli_fetch_array($sqldata, MYSQLI_ASSOC)) {
                ?>
           <div class="i">    
     <center><?php echo "<img src='images/".$row['photo']."' class='ima'/>" ?></center>
     </div>
              <div id="record" style= "margin-top: 30px; margin-left: 30px; height:auto">
         
         
                       <b> <i> <font size="+2"> <p>Name:
                           <?php echo $row['name'];?> </p></font>
                       
                        <p>E-mail:
                            <?php echo $row['email'];?></p>
                         <p>Phone number:
                            <?php echo $row['phone'];?></p>
                          <p>Address:
                              <?php echo $row['address'];?></p></i></b>
                              <br><br><br>
                  <button class="button"><a href="admin_profile.php?id=<?php echo $row['id']; ?>" style="text-decoration:none; color:white; text-align:center"><i class='material-icons'>edit</i></a></button>
                        <?php 
                        } ?>
                           
        </div> 
     
    </div>
     <div id="status"  style="margin-top:50px; width:400px;color:white; background-color:rgb(0,0,0,0.5);padding:10px;margin-left:35%">
        <form action="" method="POST">	
         <fieldset>
            <legend class="legend" style="color:darkorange;"><b>Cost Per Head</b></legend>	
						 <input type="date" name="date">
                         <input type="submit" name="submit" value="submit">
                         <?php 
                         if(isset($_POST['submit'])){
                            $date=$_POST['date'];
                            $sql="select total from dining where date='$date'";
                            $sql1="select sum(issuecost) from issueitem where date='$date'";
                            $std=mysqli_query($dbconn, $sql);
                            $std1=mysqli_query($dbconn, $sql1);
                            $row= mysqli_fetch_array($std, MYSQLI_ASSOC);
                            $row1= mysqli_fetch_array($std1, MYSQLI_ASSOC);
                            echo "<p>".$row1['sum(issuecost)']/$row['total']."</p>";

                         }
                         ?>
                         
                         
       <br><br>
    			
    </fieldset>
         </form>
    </div>
    


    <div id="menu" style="margin-left:35%; width:100%; margin-top:-20px;">
       
        <?php 
             
                $select_q="select * from menu";
                $q=mysqli_query($dbconn, $select_q);
      ?>
               <form action="#" method="post">
					
						<table>
						<tr>
                            <th>Day</th>
                            <th>Breakfast</th>
                            <th>Lunch</th>
                            <th>Dinner</th>
                            <th>Action</th>
                            </tr>
                            
                            <tr>
                            <th></th>
                            <th>7:30 A.M  - 9:30 A.M</th>
                            <th>1:00 P.M - 3:30 P.M </th>
                            <th>8:00 P.M - 9:00 P.M</th>
                                <th></th>
                            </tr>
							<tr>
                                 
							</tr>
							<?php while($r=mysqli_fetch_array($q)) { ?>
							<tr>
                                <b><td style="color:darkorange"> <?php echo $r['day']; ?></td></b>	<td> <?php echo $r['breakfast']; ?></td> <td> <?php echo $r['lunch']; ?></td><td> <?php echo $r['dinner']; ?></td>	
								
								
								<td> <a href="edit.php?id=<?php echo $r['id']; ?>" style="text-decoration:none; color:white">
								<i class='material-icons'> edit</i></a></td>
							</tr>
							<?php	}	?>
							
						</table>
					</form>
    </div>
    
    <table>
                
						</table>
						
						
<?php include('footer.php'); ?>
    
    </body>
</html>