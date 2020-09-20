<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 9/14/2020
  Time: 12:07 PM
--%>

<!DOCTYPE html>
<html lang="en"><!-- Basic -->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Site Metas -->
    <title>Admin Panel</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Site Icons -->

    <asset:link rel="shortcut icon" href="favicon.ico" type="x-icon"/>
    <asset:link rel="apple-touch-icon" href="apple-touch-icon.png"/>

    <!-- Bootstrap CSS -->
    <asset:stylesheet href="bootstrap.min.css"/>
    <!-- Site CSS -->
    <asset:stylesheet href="style.css"/>
    <!-- Responsive CSS -->
    <asset:stylesheet href="responsive.css"/>
    <!-- Custom CSS -->
    <asset:stylesheet href="custom.css"/>

    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <style>
    #add-dev{
        text-align:center;
        width:350px;
        height:470px;
        padding:20px;
        margin:20px;
        float:left;
        border: 2px solid darkred;
        background: palevioletred;
    }
    #add-gallery{
        text:center;
        width:500px;
        height:470px;
        padding:20px;
        margin:20px;
        float:left;
        border: 2px solid darkred;
        background: palevioletred;
    }
    #add-blog{
        text:center;
        width:500px;
        height:470px;
        padding:20px;
        margin:20px;
        float:left;
        border: 2px solid darkred;
        background: palevioletred;
    }
    #add-stuff{
        margin-top:100px;
        text-align:center;
        width:350px;
        height:470px;
        padding:20px;
        margin:20px;
        float:left;
        border:2px solid darkred;
        background: palevioletred;
    }
    #createMenu{
        margin-top:100px;
        text-align:center;
        width:350px;
        height:470px;
        padding:20px;
        margin:20px;
        float:left;
        border: 2px solid darkred;
        background: palevioletred;
    }
    #add-dev input,textarea,select{
        margin:5px;
    }
    #createMenu input,select{
        width:205px;
        height:33px;
    }
    #add-stuff input,button{
        margin:10px;
        width:250px;
    }

    </style>

</head>

<body>
<header class="top-navbar">
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container">
            <a class="navbar-brand" href="index.gsp">
                <asset:image src="logo.png" alt="" />
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbars-rs-food" aria-controls="navbars-rs-food" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbars-rs-food">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item active"><g:link class="nav-link" controller ="home" action ="index">Home</g:link></li>
                    <li class="nav-item"><g:link class="nav-link" controller ="home" action ="menu">Menu</g:link></li>
                    <li class="nav-item"><g:link class="nav-link" controller ="home" action ="about">About</g:link></li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="dropdown-a" data-toggle="dropdown">Pages</a>
                        <div class="dropdown-menu" aria-labelledby="dropdown-a">
                            <g:link class="dropdown-item" controller ="home" action ="reservation">Reservation</g:link>
                            <g:link class="dropdown-item" controller ="home" action ="stuff">Stuff</g:link>
                            <g:link class="dropdown-item" controller ="home" action ="gallery">Gallery</g:link>
                        </div>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="dropdown-a" data-toggle="dropdown">Blog</a>
                        <div class="dropdown-menu" aria-labelledby="dropdown-a">
                            <g:link class="dropdown-item" controller ="home" action ="blog">blog</g:link>
                            <g:link class="dropdown-item" controller ="home" action ="blogdetails">Blog Single</g:link>
                        </div>
                    </li>
                    <li class="nav-item"><g:link class="nav-link" controller ="home" action ="contact">Contact</g:link></li>
                    <li class="nav-item"><g:link class="nav-link" controller ="home" action ="admin">Admin</g:link></li>
                </ul>
            </div>
        </div>
    </nav>
</header>
<!-- End header -->
<div>
    <br><br><br><br>
</div>
<!--start Stuff form-->
<div id="add-stuff" style="" >
    <div style="margin-top:90px">
        <strong >Add Stuff details Here...</strong><br>
        <g:uploadForm class="photos" action ="addStuff">
            <g:field type="text" name="stuff_name" placeholder="Enter Stuff Name "/><br>
            <g:field type="text" name="stuff_position" placeholder="Enter Stuff Position "/><br>
            <g:field name="photos" type="file" accept="image/*"/>
            <g:submitButton name="save" value="save" />
        </g:uploadForm>
    </div>
</div>
<!--end Stuff form-->
<div id="add-dev" style="" >
    <div style="margin-top:90px">
        <strong >Add Developer details Here...</strong><br>
        <g:form class="photos" action ="save" controller="admin">
            <g:textField type="text" name="dev_name" placeholder="Enter Developer Name "/><br>
            <g:textField type="text" name="dev_position" placeholder="Enter Developer Position "/><br>
            <g:textField type="text" name="dev_details" placeholder="Enter Developer Details "/><br>
            <g:submitButton name="save" value="save" />
        </g:form>
    </div>
</div>

<!--start image form-->
<div id="add-gallery" style="">
    <div style="margin-top:90px">
        <h2 >Add Gallery image Here...</h2>
        <g:uploadForm class="photos" action ="createGallery" controller="admin">
            <select id="image_category" name="category" >
                <option disabled selected>Select Category*</option>
                <option value="home">home</option>
                <option value="gallery">gallery</option>
            </select>
            <g:field name="photos" type="file" accept="image/*"/>
            <g:submitButton name="upload" value="Upload" />
        </g:uploadForm>
    </div>
</div>
<!--end image form-->
<!--start Menu form-->
<div id="createMenu" style="">
    <div style="margin-top:15px">
        <h2 >Add Menu Items Here...</h2><br>
        <g:uploadForm class="photos" action ="addMenu" controller="admin">
            <div class="col-md-12">
                <div class="form-group">
                    <select class="custom-select d-block form-control" name="menuCtg" required data-error="Please Select Person">
                        <option disabled selected>Select Category*</option>
                        <option value="drinks">drinks</option>
                        <option value="lunch">lunch</option>
                        <option value="dinner">dinner</option>
                    </select>
                </div>
            </div>
            <div class="col-md-12">
                <div class="form-group">
                    <input  class="custom-select d-block form-control" name="menuTitle" type="text" placeholder="Enter Menu Title"/>
                </div>
                <div class="form-group">
                    <input  class="custom-select d-block form-control" name="menuPrice" type="text" placeholder="Enter Menu Price"/>
                </div>
                <div class="form-group">
                    <input   class="custom-select d-block form-control" name="menuDetails" type="text" placeholder="Enter Menu Details"/>
                </div>
            </div>
            <div class="col-md-12">
                <g:field name="photos" type="file" accept="image/*"/>
                <g:submitButton name="save" value="save" style="width:100px;margin-left:170px;margin-top:10px"/>
            </div>
        </g:uploadForm>
    </div>
</div>
<!--end Menu form-->
<!--start Blog form-->
<div id="add-blog" style="">
    <strong style="margin:5px">Add Post Here...</strong><br>
    <g:uploadForm class="photos" action ="addBlog" controller="admin">
        <input type="text" name="title" placeholder="Enter Post Title"/>
        <select  id="menu_select" name="category">
            <option disabled selected>Select Category*</option>
            <option value="drink">drink</option>
            <option value="lunch">lunch</option>
            <option value="dinner">dinner</option>
        </select> <br>
        <textarea cols="50" rows="5" name="shortcut" placeholder="Enter post-shortcut" ></textarea><br>
        <textarea cols="50" rows="5" name="details" placeholder="Enter post-details"></textarea><br>
        <g:field name="photos" type="file" accept="image/*"/>
        <g:submitButton name="save" value="save" />
    </g:uploadForm>
</div>
<!--end Blog form-->

<a href="#" id="back-to-top" title="Back to top" style="display: none;"><i class="fa fa-paper-plane-o" aria-hidden="true"></i></a>

<!-- ALL JS FILES -->
<asset:javascript src="jquery-3.2.1.min.js"></asset:javascript>
<asset:javascript src="popper.min.js"></asset:javascript>
<asset:javascript src="bootstrap.min.js"></asset:javascript>
<!-- ALL PLUGINS -->
<asset:javascript src="jquery.superslides.min.js"></asset:javascript>
<asset:javascript src="images-loded.min.js"></asset:javascript>
<asset:javascript src="isotope.min.js"></asset:javascript>
<asset:javascript src="baguetteBox.min.js"></asset:javascript>
<asset:javascript src="form-validator.min.js"></asset:javascript>
<asset:javascript src="contact-form-script.js"></asset:javascript>
<asset:javascript src="custom.js"></asset:javascript>
</body>
</html>