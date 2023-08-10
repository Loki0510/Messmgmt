<!DOCTYPE html>
<html lang="en">
    
                                        <!-- HEAD SECTION  -->
<head>
    <title>Home::</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link type="text/css" rel="stylesheet" href="css/nav.css"> 
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
</head>
                                        <!--  BODY SECTION START -->
<body>
                                        <!-- Header Start -->   
    
    <?php include 'header.php' ?>                                    <!-- Navigation Bar Ends-->                  

                        <!-- Image Slider--> 
    
     <img class="mySlider" src="img/slide1.jpg">
     <img class="mySlider" src="img/slide2.jpg">
     <img class="mySlider" src="img/slide3.jpg">

                        <!--button on slider-->
     <button id="button-display-left" onclick="plusDivs(-1)">&#10094;</button>
     <button id="button-display-right" onclick="plusDivs(+1)">&#10095;</button>
    
                     <!-- Manual Image Slider Script-->     
     <script>
         var slideIndex = 1;
         showDivs(slideIndex);
         
         function plusDivs(n) {
             showDivs(slideIndex += n);
             }
         
         function showDivs(n) {
             var i;
             var x = document.getElementsByClassName("mySlider");
             if (n > x.length) { slideIndex = 1 }    
             if (n < 1) {slideIndex = x.length}
             for (i = 0; i < x.length; i++)
                {
                 x[i].style.display = "none"; 
                }
             x[slideIndex-1].style.display = "block";  
            }
     </script>
    
                        <!-- Automatic Image Slider Script-->    
     <script>
         var myIndex = 0;
         carousel();
         function carousel() 
         {
             var i;
             var x = document.getElementsByClassName("mySlider");
             for (i = 0; i < x.length; i++) 
             {
                 x[i].style.display = "none";  
             }
             myIndex++;
             if (myIndex > x.length) {myIndex = 1}    
             x[myIndex-1].style.display = "block";  
             setTimeout(carousel, 5000); // Change image every 5 seconds
         }                                 
     </script>              <!-- Automatic Image Slider Script Ends-->
    
                            <!--  Main Content  -->
     <div id="content">
        <h3> <b> About Sri Bhavishya </b> </h3>
        <p>Ours is an educational academy, established in 2016 by a eminent, Vast experienced faculty from the No, corporate institute in our state, who are the creators of 10 and below 100 state ranks in the engineering and medical entrance examination in the state level as well as National Level. With its first great achievement of Securing state 1st rank in 2016 in TS Eamcet medical entrance , they decided to make the ordinary student to be extraordinary and enable them to secure medical & engineering entrance examination.

As they are appeared by parents community the started Jr college in 2017 with a hope of creating more number of doctors & Engineers In the Jr college they first planned to after two years Intermediate course along with intensive coaching for Medical and Engineering entrance exams state & National wide. The Jr college establishment its expansion of boys & girls separate hostel facilities with well furnished rooms.

The academy is providing Job Opportunity / employment to nearly 500+ people in the teaching & Non Teaching areas. It is creating Job opportunities to unemployed in this manner. The Institution has been with a motto of making more number of students an professionals up-to now it has done the Job of makings 1000+ medicos & Various other engineering Student to study in IIT, NIT, Bit’s & more number of reputed Institution.</p>
<h3> <b> Vison and Mission </b> </h3>        
<p style="text-align: justify; margin: 10px; font-size: 17px; font-family: serif;" >Making the ordinary students to be extraordinary and enable them to secure medical & engineering ranks to have a bright future. To prepare the future generations filled with knowledge, good character, moral and ethical Values to contribute their knowledge and services to the growth of the nation</p>
     </div> 
    
     <div id="content1" >
         <p style="text-align: center;"> 
         <h3>VIJAYAWADA-HEAD OFFICE</h3>
         <b> Address: </b> Padmavathi Bhavan, Tadigadapa 100 Ft Road<br/> Tadigadapa, Vijayawada.
         <br/><b> Phone: </b> 9581306030</br>9581306060<br/>9581944001<br />
                                         <b> Telephone: </b> 6723415907 <br/>
                                         <b> E-mail: </b> abc@gmail.com 
         </p>   
     </div>
                        
                                <!-- Footer-->   
   <!-- <div id="footer" style="width:100%;margin-left:-1px; padding-bottom:20px;"><br>
        <center><p style="color: white; font-family: cursive; margin-top: 10px; font-size: 15px; margin-left:40%">SAROJINI NAIDU HALL<br> A.M.U, Aligarh , 202002</p></center>
        <p style="margin-left: 50px; color: white;">Copyright &copy; 2017 -All Rights Reserved</p>
    </div>  -->
</body>
</html>