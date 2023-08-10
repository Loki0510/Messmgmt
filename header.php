
<style>
      .mySlider{
                width: 87%;
                height: 10%;
                margin-left: 90px;
                margin-top: 0px;
                margin-right: 90px;
                }
        #button-display-left{
                position:absolute;
                top: 400px; margin-top: -19px; 
                left: 150px;
                width: 30px;
                height: 30px;
                } 
        #button-display-right{
                position:absolute;
                top: 400px;
                margin-top: -19px; 
                right: 150px;
                width: 30px;
                height: 30px;
                } 
        #content{
                width: 50%;
                height: 300px;
                border: 2px black;
                margin-top: 50px;
                margin-left: 90px;    
                }    
        #content1{
                width: auto;
                height: auto;
                float: right;
                margin-top: -200px;
                margin-right: 100px;
                background: #ffff00;
                font-size: 20px;
                }  
        h3{
           color: black;
           margin-top: 100px; 
           margin: 10px; 
           }
        p{
            text-align: justify;
            margin: 10px;
            font-size: 17px;
            font-family: serif;
            }
        .navbar{
            margin-top:-18px;
            width:100%;
            position: -webkit-sticky;
            position: sticky;
            top: 0px;
            box-shadow:2px 2px 2px lightgray;
        }
     </style>   
<div id="header" style="background-color: whitesmoke;margin-top: -4px; text-align:center;">    
        <img src="img/abc.png" alt="" class="logo_def" style="height:150px; width:60%;    box-shadow: 1px 2px 1px grey;">
    </div>                              <!--Header Ends-->
    
                                        <!-- Navigation Bar Start -->
    
    <div class="navbar">
        <ul>
            <a href="index.php">Home</a>
            
            <!-- Dropdown Menu for Registration  -->
            <!-- <div class="dropdown">
                <button class="dropbtn">Registration 
                    <i class="fa fa-caret-down"></i>
                </button>
                <div class="dropdown-content">
                    <!-- <a href="html/adminregistration.php">Admin</a>
                    <a href="html/studentregistration.php">Student</a>
                </div>
            </div> -->
                  
                 <!-- Dropdown Menu for Login  -->
            <div class="dropdown">
                <button class="dropbtn">Login
                    <i class="fa fa-caret-down"></i>
                </button>
                <div class="dropdown-content">
                    <a href="directorlogin.php">Directors</a>
                    <a href="adminlogin.php">Admin</a>
                    <!-- x -->
                    
                </div> 
            </div>
                      
            <a href="facilities.php">Facilities</a>
            <a href="help.php">Help</a>
                      
        </ul>
     </div> 