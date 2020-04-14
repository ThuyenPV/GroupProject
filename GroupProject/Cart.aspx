<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="GroupProject.Cart" MasterPageFile="~/Customers.Master" %>

<asp:Content ContentPlaceHolderID="CustomerContent" runat="server">
    <!doctype html>
    <html class="no-js" lang="zxx">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>eCommerce HTML-5 Template </title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="manifest" href="site.webmanifest">
        <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">

        <!-- CSS here -->
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
        <link rel="stylesheet" href="assets/css/flaticon.css">
        <link rel="stylesheet" href="assets/css/slicknav.css">
        <link rel="stylesheet" href="assets/css/animate.min.css">
        <link rel="stylesheet" href="assets/css/magnific-popup.css">
        <link rel="stylesheet" href="assets/css/fontawesome-all.min.css">
        <link rel="stylesheet" href="assets/css/themify-icons.css">
        <link rel="stylesheet" href="assets/css/slick.css">
        <link rel="stylesheet" href="assets/css/nice-select.css">
        <link rel="stylesheet" href="assets/css/style.css">
    </head>

    <body>


        <!-- slider Area Start-->
        <div class="slider-area ">
            <!-- Mobile Menu -->
            <div class="single-slider slider-height2 d-flex align-items-center" data-background="assets/img/hero/category.jpg">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-12">
                            <div class="hero-cap text-center">
                                <h2>Card List</h2>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- slider Area End-->

        <!--================Cart Area =================-->
        <section class="cart_area section_padding">
            <div class="container">
                <div class="cart_inner">
                    <div class="table-responsive">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th scope="col">Product</th>
                                    <th scope="col">Price</th>
                                    <th scope="col">Quantity</th>
                                    <th scope="col">Total</th>
                                </tr>
                            </thead>
                            <tbody>
                                <asp:DataList ID="DataList" runat="server">
                                    <ItemTemplate>

                                        <tr>
                                            <td>
                                                <div class="media">
                                                    <div class="d-flex">
                                                        <img src='<%#Eval("image") %>' alt="" width="150" height="155.48" />
                                                    </div>
                                                    <div class="media-body">
                                                        <p><%#Eval("product_name") %></p>
                                                    </div>
                                                </div>
                                            </td>
                                            <td>
                                                <h5>$<%#Eval("list_price") %></h5>
                                            </td>
                                            <td>
                                                <div class="product_count">
                                                    <span class="input-number-decrement"><i class="ti-minus"></i></span>
                                                    <input class="input-number" type="text" value="1" min="0" max="10">
                                                    <span class="input-number-increment"><i class="ti-plus"></i></span>
                                                </div>
                                            </td>
                                            <td>
                                                <h5>$720.00</h5>
                                            </td>
                                        </tr>
                                        <%--  <tr>
                                            <td>
                                                <div class="media">
                                                    <div class="d-flex">
                                                        <img src='<%#Eval("image") %>' alt="" width="150" height="155.48" />
                                                    </div>
                                                    <div class="media-body">
                                                        <p><%#Eval("product_name") %></p>
                                                    </div>
                                                </div>
                                            </td>
                                            <td>
                                                <h5>$<%#Eval("list_price") %></h5>
                                            </td>
                                            <td>
                                                <div class="product_count">
                                                    <span class="input-number-decrement"><i class="ti-minus"></i></span>
                                                    <input class="input-number" type="text" value="1" min="0" max="10">
                                                    <span class="input-number-increment"><i class="ti-plus"></i></span>
                                                </div>
                                            </td>
                                            <td>
                                                <h5>$720.00</h5>
                                            </td>
                                        </tr>--%>
                                    </ItemTemplate>
                                </asp:DataList>
                                <tr class="bottom_button">
                                    <td>
                                        <a class="btn_1" href="#">Update Cart</a>
                                    </td>
                                    <td></td>
                                    <td></td>
                                    <td>
                                        <div class="cupon_text float-right">
                                            <a class="btn_1" href="#">Close Coupon</a>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td>
                                        <h5>Subtotal</h5>
                                    </td>
                                    <td>
                                        <h5>$2160.00</h5>
                                    </td>
                                </tr>
                                <tr class="shipping_area">
                                    <td></td>
                                    <td></td>
                                    <td>
                                        <h5>Shipping</h5>
                                    </td>
                                    <td>
                                        <div class="shipping_box">
                                            <ul class="list">
                                                <li>Flat Rate: $5.00
                        <input type="radio" aria-label="Radio button for following text input">
                                                </li>
                                                <li>Free Shipping
                        <input type="radio" aria-label="Radio button for following text input">
                                                </li>
                                                <li class="active">Local Delivery: $2.00
                        <input type="radio" aria-label="Radio button for following text input">
                                                </li>
                                            </ul>
                                            <h6>Calculate Shipping
                      <i class="fa fa-caret-down" aria-hidden="true"></i>
                                            </h6>
                                            <select class="shipping_select">
                                                <option value="1">Bangladesh</option>
                                                <option value="2">India</option>
                                                <option value="4">Pakistan</option>
                                            </select>
                                            <select class="shipping_select section_bg">
                                                <option value="1">Select a State</option>
                                                <option value="2">Select a State</option>
                                                <option value="4">Select a State</option>
                                            </select>
                                            <input class="post_code" type="text" placeholder="Postcode/Zipcode" />
                                            <a class="btn_1" href="#">Update Details</a>
                                        </div>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <div class="checkout_btn_inner float-right">
                            <a class="btn_1" href="#">Continue Shopping</a>
                            <a class="btn_1 checkout_btn_1" href="Checkout.aspx">Proceed to checkout</a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--================End Cart Area =================-->


        <!-- JS here -->

        <!-- All JS Custom Plugins Link Here here -->
        <script src="./assets/js/vendor/modernizr-3.5.0.min.js"></script>

        <!-- Jquery, Popper, Bootstrap -->
        <script src="./assets/js/vendor/jquery-1.12.4.min.js"></script>
        <script src="./assets/js/popper.min.js"></script>
        <script src="./assets/js/bootstrap.min.js"></script>
        <!-- Jquery Mobile Menu -->
        <script src="./assets/js/jquery.slicknav.min.js"></script>

        <!-- Jquery Slick , Owl-Carousel Plugins -->
        <script src="./assets/js/owl.carousel.min.js"></script>
        <script src="./assets/js/slick.min.js"></script>

        <!-- One Page, Animated-HeadLin -->
        <script src="./assets/js/wow.min.js"></script>
        <script src="./assets/js/animated.headline.js"></script>

        <!-- Scrollup, nice-select, sticky -->
        <script src="./assets/js/jquery.scrollUp.min.js"></script>
        <script src="./assets/js/jquery.nice-select.min.js"></script>
        <script src="./assets/js/jquery.sticky.js"></script>
        <script src="./assets/js/jquery.magnific-popup.js"></script>

        <!-- contact js -->
        <script src="./assets/js/contact.js"></script>
        <script src="./assets/js/jquery.form.js"></script>
        <script src="./assets/js/jquery.validate.min.js"></script>
        <script src="./assets/js/mail-script.js"></script>
        <script src="./assets/js/jquery.ajaxchimp.min.js"></script>

        <!-- Jquery Plugins, main Jquery -->
        <script src="./assets/js/plugins.js"></script>
        <script src="./assets/js/main.js"></script>
    </body>

    </html>
</asp:Content>
