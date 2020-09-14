<!DOCTYPE html>
<html lang="en"><!-- Basic -->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Site Metas -->
    <title>Live Dinner Restaurant - Responsive HTML5 Template</title>
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

</head>

<body>
<!-- Start header -->
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

<!-- Start slides -->
<div id="slides" class="cover-slides">
    <ul class="slides-container">
        <li class="text-left">
            <asset:image src="slider-01.jpg" alt=""/>
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <h1 class="m-b-20"><strong>Welcome To <br> Live Dinner Restaurant</strong></h1>
                        <p class="m-b-40">See how your users experience your website in realtime or view  <br>
                            trends to see any changes in performance over time.</p>
                        <p><a class="btn btn-lg btn-circle btn-outline-new-white" href="#">Reservation</a></p>
                    </div>
                </div>
            </div>
        </li>
        <li class="text-left">
            <asset:image src="slider-02.jpg" alt=""/>
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <h1 class="m-b-20"><strong>Welcome To <br> Live Dinner Restaurant</strong></h1>
                        <p class="m-b-40">See how your users experience your website in realtime or view  <br>
                            trends to see any changes in performance over time.</p>
                        <p><a class="btn btn-lg btn-circle btn-outline-new-white" href="#">Reservation</a></p>
                    </div>
                </div>
            </div>
        </li>
        <li class="text-left">
            <asset:image src="slider-03.jpg" alt=""/>
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <h1 class="m-b-20"><strong>Welcome To <br> Yamifood Restaurant</strong></h1>
                        <p class="m-b-40">See how your users experience your website in realtime or view  <br>
                            trends to see any changes in performance over time.</p>
                        <p><a class="btn btn-lg btn-circle btn-outline-new-white" href="#">Reservation</a></p>
                    </div>
                </div>
            </div>
        </li>
    </ul>
    <div class="slides-navigation">
        <a href="#" class="next"><i class="fa fa-angle-right" aria-hidden="true"></i></a>
        <a href="#" class="prev"><i class="fa fa-angle-left" aria-hidden="true"></i></a>
    </div>
</div>
<!-- End slides -->

<!-- Start About -->
<div class="about-section-box">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-12 text-center">
                <div class="inner-column">
                    <h1>Welcome To <span>Live Dinner Restaurant</span></h1>
                    <h4>Little Story</h4>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque auctor suscipit feugiat. Ut at pellentesque ante, sed convallis arcu. Nullam facilisis, eros in eleifend luctus, odio ante sodales augue, eget lacinia lectus erat et sem. </p>
                    <p>Sed semper orci sit amet porta placerat. Etiam quis finibus eros. Sed aliquam metus lorem, a pellentesque tellus pretium a. Nulla placerat elit in justo vestibulum, et maximus sem pulvinar.</p>
                    <a class="btn btn-lg btn-circle btn-outline-new-white" href="#">Reservation</a>
                </div>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-12">
                <asset:image src="about-img.jpg" alt="" class="img-fluid"/>
            </div>
        </div>
    </div>
</div>
<!-- End About -->

<!-- Start QT -->
<div class="qt-box qt-background">
    <div class="container">
        <div class="row">
            <div class="col-md-8 ml-auto mr-auto text-center">
                <p class="lead ">
                    " If you're not the one cooking, stay out of the way and compliment the chef. "
                </p>
                <span class="lead">Michael Strahan</span>
            </div>
        </div>
    </div>
</div>
<!-- End QT -->

<!-- Start Menu -->
<div class="menu-box">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="heading-title text-center">
                    <h2>Special Menu</h2>
                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting</p>
                </div>
            </div>
        </div>

        <div class="row inner-menu-box">
            <div class="col-3">
                <div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                    <a class="nav-link active" id="v-pills-home-tab" data-toggle="pill" href="#v-pills-home" role="tab" aria-controls="v-pills-home" aria-selected="true">All</a>
                    <a class="nav-link" id="v-pills-profile-tab" data-toggle="pill" href="#v-pills-profile" role="tab" aria-controls="v-pills-profile" aria-selected="false">Drinks</a>
                    <a class="nav-link" id="v-pills-messages-tab" data-toggle="pill" href="#v-pills-messages" role="tab" aria-controls="v-pills-messages" aria-selected="false">Lunch</a>
                    <a class="nav-link" id="v-pills-settings-tab" data-toggle="pill" href="#v-pills-settings" role="tab" aria-controls="v-pills-settings" aria-selected="false">Dinner</a>
                </div>
            </div>

            <div class="col-9">
                <div class="tab-content" id="v-pills-tabContent">
                    <div class="tab-pane fade show active" id="v-pills-home" role="tabpanel" aria-labelledby="v-pills-home-tab">
                        <div class="row">
                            <div class="col-lg-4 col-md-6 special-grid drinks">
                                <div class="gallery-single fix">
                                    <asset:image src="img-01.jpg" class="img-fluid" alt="Image"/>
                                    <div class="why-text">
                                        <h4>Special Drinks 1</h4>
                                        <p>Sed id magna vitae eros sagittis euismod.</p>
                                        <h5> $7.79</h5>
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-4 col-md-6 special-grid drinks">
                                <div class="gallery-single fix">
                                    <asset:image src="img-02.jpg" class="img-fluid" alt="Image"/>
                                    <div class="why-text">
                                        <h4>Special Drinks 2</h4>
                                        <p>Sed id magna vitae eros sagittis euismod.</p>
                                        <h5> $9.79</h5>
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-4 col-md-6 special-grid drinks">
                                <div class="gallery-single fix">
                                    <asset:image src="img-03.jpg" class="img-fluid" alt="Image"/>
                                    <div class="why-text">
                                        <h4>Special Drinks 3</h4>
                                        <p>Sed id magna vitae eros sagittis euismod.</p>
                                        <h5> $10.79</h5>
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-4 col-md-6 special-grid lunch">
                                <div class="gallery-single fix">
                                    <asset:image src="img-04.jpg" class="img-fluid" alt="Image"/>
                                    <div class="why-text">
                                        <h4>Special Lunch 1</h4>
                                        <p>Sed id magna vitae eros sagittis euismod.</p>
                                        <h5> $15.79</h5>
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-4 col-md-6 special-grid lunch">
                                <div class="gallery-single fix">
                                    <asset:image src="img-05.jpg" class="img-fluid" alt="Image"/>
                                    <div class="why-text">
                                        <h4>Special Lunch 2</h4>
                                        <p>Sed id magna vitae eros sagittis euismod.</p>
                                        <h5> $18.79</h5>
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-4 col-md-6 special-grid lunch">
                                <div class="gallery-single fix">
                                    <asset:image src="img-06.jpg" class="img-fluid" alt="Image"/>
                                    <div class="why-text">
                                        <h4>Special Lunch 3</h4>
                                        <p>Sed id magna vitae eros sagittis euismod.</p>
                                        <h5> $20.79</h5>
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-4 col-md-6 special-grid dinner">
                                <div class="gallery-single fix">
                                    <asset:image src="img-07.jpg" class="img-fluid" alt="Image"/>
                                    <div class="why-text">
                                        <h4>Special Dinner 1</h4>
                                        <p>Sed id magna vitae eros sagittis euismod.</p>
                                        <h5> $25.79</h5>
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-4 col-md-6 special-grid dinner">
                                <div class="gallery-single fix">
                                    <asset:image src="img-08.jpg" class="img-fluid" alt="Image"/>
                                    <div class="why-text">
                                        <h4>Special Dinner 2</h4>
                                        <p>Sed id magna vitae eros sagittis euismod.</p>
                                        <h5> $22.79</h5>
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-4 col-md-6 special-grid dinner">
                                <div class="gallery-single fix">
                                    <asset:image src="img-09.jpg" class="img-fluid" alt="Image"/>
                                    <div class="why-text">
                                        <h4>Special Dinner 3</h4>
                                        <p>Sed id magna vitae eros sagittis euismod.</p>
                                        <h5> $24.79</h5>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="tab-pane fade" id="v-pills-profile" role="tabpanel" aria-labelledby="v-pills-profile-tab">
                        <div class="row">
                            <div class="col-lg-4 col-md-6 special-grid drinks">
                                <div class="gallery-single fix">
                                    <asset:image src="img-01.jpg" class="img-fluid" alt="Image"/>
                                    <div class="why-text">
                                        <h4>Special Drinks 1</h4>
                                        <p>Sed id magna vitae eros sagittis euismod.</p>
                                        <h5> $7.79</h5>
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-4 col-md-6 special-grid drinks">
                                <div class="gallery-single fix">
                                    <asset:image src="img-02.jpg" class="img-fluid" alt="Image"/>
                                    <div class="why-text">
                                        <h4>Special Drinks 2</h4>
                                        <p>Sed id magna vitae eros sagittis euismod.</p>
                                        <h5> $9.79</h5>
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-4 col-md-6 special-grid drinks">
                                <div class="gallery-single fix">
                                    <asset:image src="img-03.jpg" class="img-fluid" alt="Image"/>
                                    <div class="why-text">
                                        <h4>Special Drinks 3</h4>
                                        <p>Sed id magna vitae eros sagittis euismod.</p>
                                        <h5> $10.79</h5>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="tab-pane fade" id="v-pills-messages" role="tabpanel" aria-labelledby="v-pills-messages-tab">
                        <div class="row">
                            <div class="col-lg-4 col-md-6 special-grid lunch">
                                <div class="gallery-single fix">
                                    <asset:image src="img-04.jpg" class="img-fluid" alt="Image"/>
                                    <div class="why-text">
                                        <h4>Special Lunch 1</h4>
                                        <p>Sed id magna vitae eros sagittis euismod.</p>
                                        <h5> $15.79</h5>
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-4 col-md-6 special-grid lunch">
                                <div class="gallery-single fix">
                                    <asset:image src="img-05.jpg" class="img-fluid" alt="Image"/>
                                    <div class="why-text">
                                        <h4>Special Lunch 2</h4>
                                        <p>Sed id magna vitae eros sagittis euismod.</p>
                                        <h5> $18.79</h5>
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-4 col-md-6 special-grid lunch">
                                <div class="gallery-single fix">
                                    <asset:image src="img-06.jpg" class="img-fluid" alt="Image"/>
                                    <div class="why-text">
                                        <h4>Special Lunch 3</h4>
                                        <p>Sed id magna vitae eros sagittis euismod.</p>
                                        <h5> $20.79</h5>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="v-pills-settings" role="tabpanel" aria-labelledby="v-pills-settings-tab">
                        <div class="row">
                            <div class="col-lg-4 col-md-6 special-grid dinner">
                                <div class="gallery-single fix">
                                    <asset:image src="img-07.jpg" class="img-fluid" alt="Image"/>
                                    <div class="why-text">
                                        <h4>Special Dinner 1</h4>
                                        <p>Sed id magna vitae eros sagittis euismod.</p>
                                        <h5> $25.79</h5>
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-4 col-md-6 special-grid dinner">
                                <div class="gallery-single fix">
                                    <asset:image src="img-08.jpg" class="img-fluid" alt="Image"/>
                                    <div class="why-text">
                                        <h4>Special Dinner 2</h4>
                                        <p>Sed id magna vitae eros sagittis euismod.</p>
                                        <h5> $22.79</h5>
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-4 col-md-6 special-grid dinner">
                                <div class="gallery-single fix">
                                    <asset:image src="img-09.jpg" class="img-fluid" alt="Image"/>
                                    <div class="why-text">
                                        <h4>Special Dinner 3</h4>
                                        <p>Sed id magna vitae eros sagittis euismod.</p>
                                        <h5> $24.79</h5>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
</div>
<!-- End Menu -->

<!-- Start Gallery -->
<div class="gallery-box">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="heading-title text-center">
                    <h2>Gallery</h2>
                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting</p>
                </div>
            </div>
        </div>
        <div class="tz-gallery">
            <div class="row">
                <div class="col-sm-12 col-md-4 col-lg-4">
                    <a class="lightbox" href="../../images/gallery-img-01.jpg">
                        <asset:image class="img-fluid" src="gallery-img-01.jpg" alt="Gallery Images"/>
                    </a>
                </div>
                <div class="col-sm-6 col-md-4 col-lg-4">
                    <a class="lightbox" href="../../images/gallery-img-02.jpg">
                        <asset:image class="img-fluid" src="gallery-img-02.jpg" alt="Gallery Images"/>
                    </a>
                </div>
                <div class="col-sm-6 col-md-4 col-lg-4">
                    <a class="lightbox" href="../../images/gallery-img-03.jpg">
                        <asset:image class="img-fluid" src="gallery-img-03.jpg" alt="Gallery Images"/>
                    </a>
                </div>
                <div class="col-sm-12 col-md-4 col-lg-4">
                    <a class="lightbox" href="../../images/gallery-img-04.jpg">
                        <asset:image class="img-fluid" src="gallery-img-04.jpg" alt="Gallery Images"/>
                    </a>
                </div>
                <div class="col-sm-6 col-md-4 col-lg-4">
                    <a class="lightbox" href="../../images/gallery-img-05.jpg">
                        <asset:image class="img-fluid" src="gallery-img-05.jpg" alt="Gallery Images"/>
                    </a>
                </div>
                <div class="col-sm-6 col-md-4 col-lg-4">
                    <a class="lightbox" href="../../images/gallery-img-06.jpg">
                        <asset:image class="img-fluid" src="gallery-img-06.jpg" alt="Gallery Images"/>
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- End Gallery -->

<!-- Start Customer Reviews -->
<div class="customer-reviews-box">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="heading-title text-center">
                    <h2>Customer Reviews</h2>
                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting</p>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-8 mr-auto ml-auto text-center">
                <div id="reviews" class="carousel slide" data-ride="carousel">
                    <div class="carousel-inner mt-4">
                        <div class="carousel-item text-center active">
                            <div class="img-box p-1 border rounded-circle m-auto">
                                <asset:image class="d-block w-100 rounded-circle" src="quotations-button.png" alt=""/>
                            </div>
                            <h5 class="mt-4 mb-0"><strong class="text-warning text-uppercase">Paul Mitchel</strong></h5>
                            <h6 class="text-dark m-0">Web Developer</h6>
                            <p class="m-0 pt-3">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam eu sem tempor, varius quam at, luctus dui. Mauris magna metus, dapibus nec turpis vel, semper malesuada ante. Idac bibendum scelerisque non non purus. Suspendisse varius nibh non aliquet.</p>
                        </div>
                        <div class="carousel-item text-center">
                            <div class="img-box p-1 border rounded-circle m-auto">
                                <asset:image class="d-block w-100 rounded-circle" src="quotations-button.png" alt=""/>
                            </div>
                            <h5 class="mt-4 mb-0"><strong class="text-warning text-uppercase">Steve Fonsi</strong></h5>
                            <h6 class="text-dark m-0">Web Designer</h6>
                            <p class="m-0 pt-3">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam eu sem tempor, varius quam at, luctus dui. Mauris magna metus, dapibus nec turpis vel, semper malesuada ante. Idac bibendum scelerisque non non purus. Suspendisse varius nibh non aliquet.</p>
                        </div>
                        <div class="carousel-item text-center">
                            <div class="img-box p-1 border rounded-circle m-auto">
                                <asset:image class="d-block w-100 rounded-circle" src="quotations-button.png" alt=""/>
                            </div>
                            <h5 class="mt-4 mb-0"><strong class="text-warning text-uppercase">Daniel vebar</strong></h5>
                            <h6 class="text-dark m-0">Seo Analyst</h6>
                            <p class="m-0 pt-3">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam eu sem tempor, varius quam at, luctus dui. Mauris magna metus, dapibus nec turpis vel, semper malesuada ante. Idac bibendum scelerisque non non purus. Suspendisse varius nibh non aliquet.</p>
                        </div>
                    </div>
                    <a class="carousel-control-prev" href="#reviews" role="button" data-slide="prev">
                        <i class="fa fa-angle-left" aria-hidden="true"></i>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="carousel-control-next" href="#reviews" role="button" data-slide="next">
                        <i class="fa fa-angle-right" aria-hidden="true"></i>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- End Customer Reviews -->

<!-- Start Contact info -->
<div class="contact-imfo-box">
    <div class="container">
        <div class="row">
            <div class="col-md-4 arrow-right">
                <i class="fa fa-volume-control-phone"></i>
                <div class="overflow-hidden">
                    <h4>Phone</h4>
                    <p class="lead">
                        +01 123-456-4590
                    </p>
                </div>
            </div>
            <div class="col-md-4 arrow-right">
                <i class="fa fa-envelope"></i>
                <div class="overflow-hidden">
                    <h4>Email</h4>
                    <p class="lead">
                        yourmail@gmail.com
                    </p>
                </div>
            </div>
            <div class="col-md-4">
                <i class="fa fa-map-marker"></i>
                <div class="overflow-hidden">
                    <h4>Location</h4>
                    <p class="lead">
                        800, Lorem Street, US
                    </p>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- End Contact info -->

<!-- Start Footer -->
<footer class="footer-area bg-f">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-6">
                <h3>About Us</h3>
                <p>Integer cursus scelerisque ipsum id efficitur. Donec a dui fringilla, gravida lorem ac, semper magna. Aenean rhoncus ac lectus a interdum. Vivamus semper posuere dui.</p>
            </div>
            <div class="col-lg-3 col-md-6">
                <h3>Subscribe</h3>
                <div class="subscribe_form">
                    <form class="subscribe_form">
                        <input name="EMAIL" id="subs-email" class="form_input" placeholder="Email Address..." type="email">
                        <button type="submit" class="submit">SUBSCRIBE</button>
                        <div class="clearfix"></div>
                    </form>
                </div>
                <ul class="list-inline f-social">
                    <li class="list-inline-item"><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                    <li class="list-inline-item"><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                    <li class="list-inline-item"><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                    <li class="list-inline-item"><a href="#"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
                    <li class="list-inline-item"><a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
                </ul>
            </div>
            <div class="col-lg-3 col-md-6">
                <h3>Contact information</h3>
                <p class="lead">Ipsum Street, Lorem Tower, MO, Columbia, 508000</p>
                <p class="lead"><a href="#">+01 2000 800 9999</a></p>
                <p><a href="#"> info@admin.com</a></p>
            </div>
            <div class="col-lg-3 col-md-6">
                <h3>Opening hours</h3>
                <p><span class="text-color">Monday: </span>Closed</p>
                <p><span class="text-color">Tue-Wed :</span> 9:Am - 10PM</p>
                <p><span class="text-color">Thu-Fri :</span> 9:Am - 10PM</p>
                <p><span class="text-color">Sat-Sun :</span> 5:PM - 10PM</p>
            </div>
        </div>
    </div>

    <div class="copyright">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <p class="company-name">All Rights Reserved. &copy; 2018 <a href="#">Live Dinner Restaurant</a> Design By :
                        <a href="https://html.design/">html design</a></p>
                </div>
            </div>
        </div>
    </div>

</footer>
<!-- End Footer -->

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