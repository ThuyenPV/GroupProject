<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DetailProducts.aspx.cs" Inherits="GroupProject.DetailProducts" MasterPageFile="~/Customers.Master" %>


<asp:Content runat="server" ContentPlaceHolderID="CustomerContent">
    <!DOCTYPE html>
    <html class="no-js" lang="zxx">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>eCommerce HTML-5 Template </title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="manifest" href="site.webmanifest">
        <link rel="shortcut icon" type="image/x-icon" href="../Assets/img/favicon.ico">

        <!-- CSS here -->
        <link rel="stylesheet" href="../Assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="../Assets/css/owl.carousel.min.css">
        <link rel="stylesheet" href="../Assets/css/flaticon.css">
        <link rel="stylesheet" href="../Assets/css/slicknav.css">
        <link rel="stylesheet" href="../Assets/css/animate.min.css">
        <link rel="stylesheet" href="../Assets/css/magnific-popup.css">
        <link rel="stylesheet" href="../Assets/css/fontawesome-all.min.css">
        <link rel="stylesheet" href="../Assets/css/themify-icons.css">
        <link rel="stylesheet" href="../Assets/css/slick.css">
        <link rel="stylesheet" href="../Assets/css/nice-select.css">
        <link rel="stylesheet" href="../Assets/css/style.css">
    </head>

    <body>
        <form id="form1" runat="server">
            <div>
                <!-- slider Area Start-->
                <div class="slider-area ">
                    <!-- Mobile Menu -->
                    <div class="single-slider slider-height2 d-flex align-items-center" data-background="assets/img/hero/category.jpg">
                        <div class="container">
                            <div class="row">
                                <div class="col-xl-12">
                                    <div class="hero-cap text-center">
                                        <h2>product Details</h2>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- slider Area End-->

                <!--================Single Product Area =================-->
                <div class="product_image_area">
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-12">
                                <div class="product_img_slide owl-carousel">
                                    <div class="single_product_img">
                                        <img src="assets/img/product/single_product.png" alt="#" class="img-fluid">
                                    </div>
                                    <div class="single_product_img">
                                        <img src="assets/img/product/single_product.png" alt="#" class="img-fluid">
                                    </div>
                                    <div class="single_product_img">
                                        <img src="assets/img/product/single_product.png" alt="#" class="img-fluid">
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-8">
                                <div class="single_product_text text-center">
                                    <h3>Foam filling cotton slow
                                    <br>
                                        rebound pillows</h3>
                                    <p>
                                        Seamlessly empower fully researched growth strategies and interoperable internal or “organic” sources. Credibly innovate granular internal or “organic” sources whereas high standards in web-readiness. Credibly innovate granular internal or organic sources whereas high standards in web-readiness. Energistically scale future-proof core competencies vis-a-vis impactful experiences. Dramatically synthesize integrated schemas. with optimal networks.
                                    </p>
                                    <div class="card_area">
                                        <div class="product_count_area">
                                            <p>Quantity</p>
                                            <div class="product_count d-inline-block">
                                                <span class="product_count_item inumber-decrement"><i class="ti-minus"></i></span>
                                                <input class="product_count_item input-number" type="text" value="1" min="0" max="10">
                                                <span class="product_count_item number-increment"><i class="ti-plus"></i></span>
                                            </div>
                                            <p>$5</p>
                                        </div>
                                        <div class="add_to_cart">
                                            <a href="Cart.aspx" class="btn_3">add to cart</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--================End Single Product Area =================-->
                <!-- subscribe part here -->
                <section class="subscribe_part section_padding">
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-8">
                                <div class="subscribe_part_content">
                                    <h2>Get promotions & updates!</h2>
                                    <p>Seamlessly empower fully researched growth strategies and interoperable internal or “organic” sources credibly innovate granular internal .</p>
                                    <div class="subscribe_form">
                                        <input type="email" placeholder="Enter your mail">
                                        <a href="#" class="btn_1">Subscribe</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                <!-- subscribe part end -->
            </div>
        </form>
    </body>
    </html>
</asp:Content>
