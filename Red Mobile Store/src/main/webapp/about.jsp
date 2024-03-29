
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>About</title>
<link rel = "icon" href ="https://upload.wikimedia.org/wikipedia/commons/a/ab/Android_O_Preview_Logo.png" type = "image/x-icon">
<link href="https://unpkg.com/ionicons@4.5.10-0/dist/css/ionicons.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
  <style>
* {
  margin: 0;9u=h 55
  padding: 0;
  box-sizing: border-box;
}
header {
  display: flex;
  justify-content: space-evenly;
  align-items: center;
  height: 60px;
  width: 100%;
  background: black;
}
.heading ul {
  display: flex;
  
}
.logo a {
  color: white; 
  transition-duration: 1s;
  margin: 50px 100% 0 auto;
  font-weight: 800;
  
}
.logo a:hover {
  color: rgb(240, 197, 6);
  transition-duration: 1s;
}
.heading ul li {
  list-style: none;
}
.heading ul li a {
  margin: 5px;
  text-decoration: none;
  color: black;
  font-weight: 500;
  position: relative;
  color: white;
  margin: 2px 14px;
  font-size: 18px;
  transition-duration: 1s;
}
.heading ul li a:active {
  color: red;
}
.heading ul li a:hover {
  color: rgb(243, 168, 7);
  transition-duration: 1s;
}

.heading ul li a::before {
  content: "";
  height: 2px;
  width: 0px;
  position: absolute;
  left: 0;
  bottom: 0;
  background-color: white;
  transition-duration: 1s;
}
.heading ul li a:hover::before {
  width: 100%;
  transition-duration: 1s;
  background-color: rgb(243, 168, 7);
}
#input {
  height: 30px;
  width: 300px;
  text-decoration: none;
  border: 0px;
  padding: 5px;
}
.logo a {
  font-family: "URW Chancery L", cursive;
  color: white;
  font-size: 50px;
  font-weight: 5000;
  right: 100px;
  top: 150px;  
  margin: 0 0 20px;
  text-align: center;
  text-decoration: none;
}
ion-icon {
  width: 30px;
  height: 30px;
  background-color: white;
  color: black;
}
ion-icon:hover {
  cursor: pointer;
}
.search a {
  display: flex;
}
header a ion-icon {
  position: relative;
  right: 3px;
}

.img-slider img {
  height: 620px;
  width: 1500px;
}
@keyframes slide {
  0% {
    left: 0px;
  }
  15% {
    left: 0px;
  }
  20% {
    left: -1080px;
  }
  32% {
    left: -1080px;
  }
  35% {
    left: -2160px;
  }
  47% {
    left: -2160px;
  }
  50% {
    left: -3240px;
  }
  63% {
    left: -3240px;
  }
  66% {
    left: -4320px;
  }
  79% {
    left: -4320px;
  }
  82% {
    left: -5400px;
  }
  100% {
    left: 0px;
  }
}
.img-slider {
  display: flex;
  float: left;
  position: relative;
  width: 1800px;
  height: 680px;
  animation-name: slide;
  animation-duration: 10s;
  animation-iteration-count: 1;
  transition-duration: 2s;
}

.heading1 {
  opacity: 0;
}
.search {
  display: flex;
  position: relative;
}
.section1 {
  width: 2000px;
  overflow: hidden;

  justify-content: center;
  align-items: center;
  margin: 0px auto;
}

.section2 .container {
  display: flex;
  width: 100%;
  height: max-content;
  flex-wrap: wrap;
  justify-content: center;
  margin: 10px auto;
}
.section2 .container .items {
  margin: 10px;
  width: 200px;
  height: 300px;
  background-color: white;
  border: 2.5px solid black;
  border-radius: 12px;
}
.section2 .container .items .name {
  text-align: center;
  background-color: rgb(240, 197, 6);
  height: 25px;
  padding-top: 4px;
  color: white;
  margin: 0;
}
.section2 .container .items .price {
  float: left;
  padding-left: 10px;
  display: block;
  width: 100%;
  color: rgb(255, 0, 0);
  font-weight: 650;
}
.section2 .container .items .info {
  padding-left: 10px;
  color: rgb(243, 168, 7);
}
.section2 .container .items .img img {
  width: 200px;
  height: 200px;
  margin: 0;
  padding: 0;
  border-radius: 12px;
  transition-duration: 0.8s;
}
.section2 .container .items .img {
  overflow: hidden;
  margin: 0;
}
.section2 .container .items:hover .img img {
  transform: scale(1.2);
  transition-duration: 0.8s;
  border-radius: 12px;
}
footer {
  display: flex;
  flex-direction: column;
  background-color: black;
  align-items: center;
  color: white;
}

.footer1 {
  display: flex;
  flex-direction: column;
  align-items: center;
  color: white;
  margin-top: 15px;
}
.social-media {
  display: flex;
  justify-content: center;
  color: white;
  flex-wrap: wrap;
}
.social-media a {
  color: white;
  margin: 20px;
  border-radius: 5px;
  margin-top: 10px;
  color: white;
}
.social-media a ion-icon {
  color: white;
  background-color: black;
}
.social-media a:hover ion-icon {
  color: red;
  transform: translateY(5px);
}
.footer2 {
  display: flex;
  width: 100%;
  justify-content: space-evenly;
  align-items: center;
  text-decoration: none;
  flex-wrap: wrap;
}
.footer0 {
  font-weight: 1200;
  transition-duration: 1s;
}
.footer0:hover {
  color: rgb(243, 168, 7);
}
.footer2 .heading {
  font-weight: 900;
  font-size: 18px;
}
.footer3 {
  margin-top: 60px;
  margin-bottom: 20px;
  display: flex;
  flex-wrap: wrap;
  justify-content: center;
}
.footer2 .heading:hover {
  color: rgb(243, 168, 7);
}
.footer2 .div:hover {
  transform: scale(1.05);
}
.footer3 h4 {
  margin: 0 10px;
}
.footer2 div {
  margin: 10px;
}
.menu {
  visibility: hidden;
}
.heading1 .ham:active {
  color: red;
}
.items {
  overflow: hidden;
}
.ham,
.close {
  cursor: pointer;
}

@media screen and (max-width: 1250px) {
  .heading ul li {
    display: none;
  }

  .items {
    transform: scale(0.9);
  }
  .img-slider img {
    height: 60vw;
    width: 80vw;
  }
  .ham:active {
    color: red;
  }
  .menu {
    display: flex;
    flex-direction: column;
    align-items: center;
  }
  .menu a ion-icon {
    position: absolute;
  }

  @keyframes slide1 {
    0% {
      left: 0vw;
    }
    15% {
      left: 0vw;
    }
    20% {
      left: -80vw;
    }
    32% {
      left: -80vw;
    }
    35% {
      left: -160vw;
    }
    47% {
      left: -160vw;
    }
    50% {
      left: -240vw;
    }
    63% {
      left: -240vw;
    }
    66% {
      left: -320vw;
    }
    79% {
      left: -320vw;
    }
    82% {
      left: -400vw;
    }
    100% {
      left: 0vw;
    }
  }
  .menu ul {
    display: flex;
    flex-direction: column;
    position: absolute;
    width: 100vw;
    height: 100vh;
    background-color: black;
    left: 0;
    top: 0;
    z-index: 11;
    align-items: center;
    justify-content: center;
    opacity: 1;
  }
  .close {
    z-index: 34;

    color: white;
    background-color: black;
  }
  .close:active {
    color: red;
  }
  .menu ul li {
    list-style: none;
    margin: 20px;
    border-top: 3px solid white;
    width: 80%;
    text-align: center;

    padding-top: 10px;
  }
  .menu ul li a {
    text-decoration: none;
    padding-top: 10px;
    color: white;
    font-weight: 900;
  }
  .menu ul li a:hover {
    color: rgb(240, 197, 6);
  }
  .img-slider {
    display: flex;
    float: left;
    position: relative;
    width: 80%;
    height: 60%;
    animation-name: slide1;
    animation-duration: 10s;
    animation-iteration-count: infinite;
    transition-duration: 2s;
  }
  .section1 {
    width: 80%;
    overflow: hidden;

    justify-content: center;
    align-items: center;
    margin: 0px auto;
  }

  .heading1 {
    opacity: 1;
    position: relative;
    bottom: 8px;
  }
  .search a {
    display: flex;
    flex-wrap: nowrap;
  }

  .heading1 .ham {
    background-color: black;
    color: white;
  }
  #input {
    width: 200px;
    flex-shrink: 2;
  }
  header {
    height: 150px;
  }
}
@media screen and (max-width: 550px) {
  .heading ul li {
    display: none;
  }
  .heading1 {
    opacity: 1;

    bottom: 8px;
  }

  header {
    height: 250px;
    flex-wrap: wrap;
    display: flex;
    flex-direction: column;
  }
  #input {
    width: 150px;
  }
  .close {
    z-index: 34;
  }

  .search a {
    display: flex;
    flex-wrap: nowrap;
  }
}
</style>
<style> 
ul{
border:8px solid black;
backgground-color: #f3f3f33;
color: 3f3f3f3;

}
</style>
<script>
const close = document.querySelector(".close");
const open = document.querySelector(".ham");
const menu = document.querySelector(".menu");
close.addEventListener("click", () => {
  menu.style.visibility = "hidden";
});
open.addEventListener("click", () => {
  menu.style.visibility = "visible";
});
</script>

<header>
    <div class="logo"><a href="#">ReD MoBiLe StOrE</a></div>
    <div class="menu">
      <a href="#">
        <ion-icon name="close" class="close"></ion-icon>
      </a>
      <ul>
        
        <li><a href="logout.jsp" class="under"> LOG OUT </a></li>
        <li><a href="myCart.jsp" class="under"> MY CART </a></li>

      </ul>
    </div>
   <!--  <div class="search">
      <a href="searchHome.jsp"><input type="text" placeholder="search products" id="input">
        <ion-icon class="s" name="search"></ion-icon>
      </a>
    </div>--> 
    
    
     
    
    
    
    <div class="heading">
      <ul>
      <%String email=session.getAttribute("email").toString(); %>
        <li><a href=""><%out.println(email); %> <i class='fas fa-user-alt'></i></a></h2>
        <li><a href="myCart.jsp" class="under"><U> MY CART </U><i class='fas fa-cart-arrow-down' style="color:green"></i></a></li>
        <li><a href="logout.jsp" class="under"> LOG OUT <i class='fas fa-share-square' style="color:red"></i></a></li>
        
	<!--<button style='font-size:15px'> MY CART <i class='fas fa-shopping-cart'></i></button>-->

      </ul>
    </div>
    <div class="heading1">
      <ion-icon name="menu" class="ham"></ion-icon>
    </div>
  </header>
  <nav class="navbar navbar-inverse" role="navigation">

<div class="container mt-3">
<ul class="nav nav-tabs">
    <li class="nav-item">
      <a class="nav-link" href="loggedin.jsp"><h6>Home<i class="fa fa-home"></i></h6></a>
    </li>

<li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#"><h7 style="color:Black;">Categories</h7></a>

<ul class="dropdown-menu">
        <li><a class="dropdown-item" href="#">Iphone</a></li>
        <li><a class="dropdown-item" href="#">Oneplus</a></li>
        <li><a class="dropdown-item" href="#">Redmi</a></li>
        <li><a class="dropdown-item" href="#">Nokia</a></li>
        <li><a class="dropdown-item" href="#">Samsung</a></li>
        <li><a class="dropdown-item" href="#">Other</a></li>
      </ul>  
</li>
<li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#"><h7 style="color:Black;">Events</h7></a>

<ul class="dropdown-menu">
        <li><a class="dropdown-item" href="#">New Year</a></li>
        <li><a class="dropdown-item" href="#">Sankranthi</a></li>
        <li><a class="dropdown-item" href="#">Ramzan</a></li>
        <li><a class="dropdown-item" href="#">Dussehra</a></li>
        <li><a class="dropdown-item" href="#">Diwali</a></li>
        <li><a class="dropdown-item" href="#">Christmas</a></li>
        <li><a class="dropdown-item" href="#">Other</a></li>
        
      </ul>
  
</li>
<li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#"><h7 style="color:Black;">Coupons</h7></a>

<ul class="dropdown-menu">
        <li><a class="dropdown-item" href="#">newyear2023</a></li>
        <li><a class="dropdown-item" href="#">sankranthispecial</a></li>
        <li><a class="dropdown-item" href="#">diwalidamaka</a></li>
        <li><a class="dropdown-item" href="#">christmaseve</a></li>
        <li><a class="dropdown-item" href="#">Other</a></li>
        
      </ul>
  
</li>



<li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#"><h7 style="color:Black;">Accessories</h7></a>

<ul class="dropdown-menu">
        <li><a class="dropdown-item" href="#">Charger</a></li>
        <li><a class="dropdown-item" href="#">Earpods</a></li>
        <li><a class="dropdown-item" href="#">Powerbank</a></li>
        <li><a class="dropdown-item" href="#">Mobile Backcase</a></li>
        <li><a class="dropdown-item" href="#">Other</a></li>
      </ul>
      </li>
<li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#"><h7 style="color:Black;">Services</h7></a>

<ul class="dropdown-menu">
        <li><a class="dropdown-item" href="#">Return</a></li>
        <li><a class="dropdown-item" href="#">Exchange</a></li>
        <li><a class="dropdown-item" href="#">Device Servicing</a></li>
        
        <li><a class="dropdown-item" href="#">You ask, we design your smartphone<i class="fa fa-pen"></i></a></li>
        <li><a class="dropdown-item" href="#">Other</a></li>
      </ul>
  
</li>

<li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#"><h7 style="color:Black;">For Business</h7></a>

<ul class="dropdown-menu">
        <li><a class="dropdown-item" href="#">Email</a></li>
        <li><a class="dropdown-item" href="#">Facebook</a></li>
        <li><a class="dropdown-item" href="#">Address</a></li>
        <li><a class="dropdown-item" href="#">Virtual Call</a></li>
        
      </ul>
  
</li>
<li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#"><h7 style="color:Black;">Contact Us</h7></a>

<ul class="dropdown-menu">
        <li><a class="dropdown-item" href="#">Address</a></li>
        <li><a class="dropdown-item" href="#">Email</a></li>
        <li><a class="dropdown-item" href="#">Yahoo</a></li>
        
      </ul>
  
</li>
<li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#"><h7 style="color:Black;">Help</h7></a>

<ul class="dropdown-menu">
        <li><a class="dropdown-item" href="#">Chat with Bot</a></li>
        <li><a class="dropdown-item" href="#">FAQ Site</a></li>
        <li><a class="dropdown-item" href="#">Customer Care</a></li>
        <li><a class="dropdown-item" href="#">Instructions</a></li>
        
      </ul>
  
</li>
<li class="nav-item">
      <a class="nav-link " href="about.jsp"><h6>About <i class="fa fa-info-circle"></i></h6></a>
    </li>

<div class="search">
             <form action="searchHome.jsp" method="post"><input type="text" placeholder="Search Products" name="search">
             <button type="submit"><i class="fa fa-search"></i></button>
             </form>
            </div>

  </ul>


</div>

</nav>  
</head>
<body>
this is mobile shopping website


</body>
</html>