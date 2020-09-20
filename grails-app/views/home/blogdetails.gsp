<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 9/9/2020
  Time: 10:03 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 9/8/2020
  Time: 1:11 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
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
    <asset:link rel="stylesheet" href="bootstrap.min.css"/>
    <!-- Site CSS -->
    <asset:link rel="stylesheet" href="style.css"/>
    <!-- Responsive CSS -->
    <asset:link rel="stylesheet" href="responsive.css"/>
    <!-- Custom CSS -->
    <asset:link rel="stylesheet" href="custom.css"/>

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
                </ul>
            </div>
        </div>
    </nav>
</header>
<!-- End header -->

<!-- Start All Pages -->
<div class="all-page-title page-breadcrumb">
    <div class="container text-center">
        <div class="row">
            <div class="col-lg-12">
                <h1>Blog</h1>
            </div>
        </div>
    </div>
</div>
<!-- End All Pages -->

<!-- Start blog details -->
<div class="blog-box">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="heading-title text-center">
                    <h2>Blog</h2>
                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting</p>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-xl-8 col-lg-8 col-12">
                <div class="blog-inner-details-page">
                    <div class="blog-inner-box">
                        <div class="side-blog-img">
                            <img style="width:720px;height:470px"class="img-fluid" src="${createLink(action: 'getBlog', controller: 'admin', id:ppost_id)}" alt="" />
                            <div class="date-blog-up">
                                ${postt_details.date}
                            </div>
                        </div>
                        <div class="inner-blog-detail details-page">
                            <h3>${postt_details.title}</h3>
                            <ul>
                                <li><i class="zmdi zmdi-account"></i>Posted By : <span>Admin</span></li>
                                <li>|</li>
                                <li><i class="zmdi zmdi-time"></i>Time : <span>${postt_details.time}</span></li>
                            </ul>
                            <blockquote>
                                <p>${postt_details.details}</p>
                            </blockquote>
                        </div>
                    </div>
                    <div class="blog-comment-box">
                        <h3>Comments</h3>
                        <g:each in = "${post_comments}" status = "i" var = "val">
                            <br>
                            <div class="comment-item">
                                <div class="comment-item-left">
                                    <asset:image src="avt-img.jpg" alt="" />
                                </div>
                                <div class="comment-item-right">
                                    <div class="pull-left">
                                        <a href="#">${val.username}</a>
                                    </div>
                                    <div class="pull-right">
                                        <i class="fa fa-clock-o" aria-hidden="true"></i>Time : <span>${val.time}</span>
                                    </div>
                                    <div class="des-l">
                                        <p>${val.post_comment}</p>
                                    </div>

                                    <input type="text"  id="comment" placeholder="write your comment.." style="visibility:hidden;width:300px"/>
                                    <button name="${val.id}" id="send" style="visibility:hidden;width:100px">send</button>

                                    <button  id="replyBtn"class="right-btn-re"><i class="fa fa-reply" aria-hidden="true"></i> Reply</button>
                                </div>
                            </div>
                            <g:each in = "${all_reply}" status = "ii" var = "vallll">
                                <g:if test="${val.id == vallll.commentInReply.id}">
                                    <div class="comment-item children">
                                        <div class="comment-item-left">
                                            <asset:image src="avt-img.jpg" alt="" />
                                        </div>
                                        <div class="comment-item-right">
                                            <div class="pull-left">
                                                <a href="#">Admin</a>
                                            </div>
                                            <div class="pull-right">
                                                <i class="fa fa-clock-o" aria-hidden="true"></i>Time : <span>${vallll.time}</span>
                                            </div>
                                            <div class="des-l">
                                                <p>${vallll.reply}</p>
                                            </div>
                                        </div>
                                    </div>
                                </g:if>
                            </g:each>
                        </g:each>
                    </div>
                    <div class="comment-respond-box">
                        <h3>Leave your comment </h3>
                        <div class="comment-respond-form">
                            <div id="commentrespondform" class="comment-form-respond row" >
                                <div class="col-lg-6 col-md-6 col-sm-6">
                                    <div class="form-group">
                                        <input id="name_com" class="form-control" name="name" placeholder="Name" type="text">
                                    </div>
                                    <div class="form-group">
                                        <input id="email_com" class="form-control" name="email" placeholder="Your Email" type="email">
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6">
                                    <div class="form-group">
                                        <textarea class="form-control" id="textarea_com" placeholder="Your Message" rows="2"></textarea>
                                    </div>
                                </div>
                                <div class="col-lg-12 col-md-12 col-sm-12">
                                    <button class="btn btn-submit" onClick = "commentAjax()">Submit comment</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-xl-4 col-lg-4 col-md-6 col-sm-8 col-12 blog-sidebar">
                <div class="right-side-blog">
                    <h3>Search</h3>
                    <div class="blog-search-form">
                        <input name="search" placeholder="Search blog" type="text">
                        <button class="search-btn">
                            <i class="fa fa-search" aria-hidden="true"></i>
                        </button>
                    </div>
                    <h3>Categories</h3>
                    <div class="blog-categories">
                        <ul>
                            <li><a href="#"><span>Food</span></a></li>
                            <li><a href="#"><span>Pizza</span></a></li>
                            <li><a href="#"><span>Drink</span></a></li>
                            <li><a href="#"><span>Lorem Sit</span></a></li>
                            <li><a href="#"><span>Burger</span></a></li>
                            <li><a href="#"><span>Music</span></a></li>
                        </ul>
                    </div>
                    <h3>Recent Post</h3>
                    <div class="post-box-blog">
                        <div class="recent-post-box">
                            <g:each in = "${fetched_value1}" status = "i" var = "val">
                                <g:if test="${i <= 4}">
                                    <div class="recent-box-blog">
                                        <div class="recent-img">
                                            <img style="width:90px;height:90px" class="img-fluid" src="${createLink(action: 'getBlog', controller: 'admin', id:"${val.id}")}" alt="" />
                                        </div>
                                        <div class="recent-info">
                                            <ul>
                                                <li><i class="zmdi zmdi-account"></i>Posted By : <span>Admin</span></li>
                                                <li>|</li>
                                                <li><i class="zmdi zmdi-time"></i>Time : <span>${val.time}</span></li>
                                            </ul>
                                            <h4>${val.title}</h4>
                                        </div>
                                    </div>
                                </g:if>
                            </g:each>
                        </div>
                    </div>
                    <h3>Recent Tag</h3>
                    <div class="blog-tag-box">
                        <ul class="list-inline tag-list">
                            <g:each in = "${fetched_value1}" status = "i" var = "val">
                                <li class="list-inline-item"><a id="list-inline-item1">${val.category}</a></li>
                            </g:each>
                        </ul>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>
<!-- End details -->

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
<script>
    var queryString = new Array();
    var post_id;
    $(function () {
        if (queryString.length == 0) {
            if (window.location.search.split('?').length > 1) {
                var params = window.location.search.split('?')[1].split('&');
                for (var i = 0; i < params.length; i++) {
                    var key = params[i].split('=')[0];
                    var value = decodeURIComponent(params[i].split('=')[1]);
                    queryString[key] = value;
                }
            }
        }
        if (queryString["post_id"] != null) {
            post_id = queryString["post_id"];
            //alert(post_id);
        }
    });
    $(document).ready(function(){
        var postt_id = post_id;
        var URL="${createLink(controller:'home',action:'blogdetails')}"
        $.ajax({
            url: URL,
            type: "POST",
            datatype: "html",
            data:{post_id:postt_id},
        });
    });
    $(document).ready(function(){
        $('.blog-comment-box #replyBtn').click(function(){
            $(this).siblings('#comment').css("visibility","visible");
            $(this).siblings('#send').css("visibility","visible");
        });
    });
    $(document).ready(function(){
        $('.blog-comment-box #send').click(function(){
            var comtId = $(this).attr("name");
            var reply = $(this).siblings('#comment').val();
            var today1 = new Date();
            var time = today1.getHours() + ":" + today1.getMinutes();

            if(reply == ""){
                alert("***please write a reply");
                return false;
            }
            var URL="${createLink(controller:'home',action:'addReply')}"
            $.ajax({
                url: URL,
                type: "POST",
                datatype: "html",
                data:{reply:reply,time:time,comtId:comtId},
                success:function(data)
                {
                    alert(data)
                }
            })
        });
    });
    function commentAjax() {
        $(document).ready(function() {
            var username = $('#name_com').val();
            var email = $('#email_com').val();
            var comment = $('#textarea_com').val();
            // alert(comment);
            var today1 = new Date();
            var time = today1.getHours() + ":" + today1.getMinutes();
            if(username == "" || email == "" || comment == "") {
                alert('***please fillup all fields !!');
                return false;
            }
            var URL="${createLink(controller:'home',action:'addComment')}"
            $.ajax({
                url: URL,
                type: "POST",
                datatype: "html",
                data:{username:username,email:email,comment:comment,time:time},
                success:function(data)
                {
                    alert(data)
                    $('#name_com').val("");
                    $('#email_com').val("");$('#textarea_com').val("");
                }
            })
        })
    }
</script>
</html>