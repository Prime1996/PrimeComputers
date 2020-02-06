<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .container {
    width: 100%;
    margin-top: 10%;
    font-family: sans-serif;
    letter-spacing: 1px;
}

    .container h2 {
        background: #0094ff;
        color: #fff;
        width: 200px;
        font-size: 24px;
        padding: 5px;
        height: 40px;
    }
        .container h2::after {
            content: '';
            border-top: 40px solid #0094ff;
            border-right: 40px solid transparent;
            position: relative;
            left: 48px;
            top: 34px;
        }

.row {
    margin-top: 30px;
}

img {
    width: 100%;
    height:200px;
}

.product-bottom .fa {
    color: #00ff21;
    font-size: 10px;
}

.product-bottom h3 {
    font-size: 20px;
    font-weight: bold;
}

.product-bottom h5 {
    font-size: 15px;
    padding-bottom: 10px;
}

.overlay {
    display: block;
    opacity: 0;
    position: absolute;
    top: 10%;
    margin-left: 0;
    width: 70px;
}

.product-top:hover .overlay {
    opacity: 1;
    margin-left: 5%;
    transition: 0.5s;
}

.overlay .fa {
    cursor: pointer;
    background-color: #555;
    color: #fff;
    height: 35px;
    width: 35px;
    font-size: 20px;
    padding: 7px;
    margin: 5%;
    margin-bottom: 5%;
}

.overlay .butn-secondary {
    background: transparent !important;
    border: none !important;
    box-shadow: none !important;
}



    </style>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <h2>New Arrivals</h2>
        <div class="row">
            <div class="col-md-3">
                <div class="product-top">
                    <img src="../Images/waltonRTX.jpg" />
                    <div class="overlay">
                        <button type="button" class="butn butn-secondary" title="View Specs">
                            <i class="fa fa-eye"></i>
                        </button> 
                        <button type="button" class="butn butn-secondary" title="Add to Wishlist">
                            <i class="fa fa-heart-o"></i>
                        </button> 
                        <button type="button" class="butn butn-secondary" title="Add to Cart">
                            <i class="fa fa-shopping-cart"></i>
                        </button> 
                    </div>
                </div>
                <div class="product-bottom text-center">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star-half-o"></i>
                    <i class="fa fa-star-o"></i>
                    <h3>Walton RTX 2060</h3>
                    <h5>Tk. 15,000</h5>
                </div>
            </div>
            <div class="col-md-3">
                <div class="product-top">
                    <img src="../Images/asus1660ti.png" />
                    <div class="overlay">
                        <button type="button" class="butn butn-secondary" title="View Specs">
                            <i class="fa fa-eye"></i>
                        </button> 
                        <button type="button" class="butn butn-secondary" title="Add to Wishlist">
                            <i class="fa fa-heart-o"></i>
                        </button> 
                        <button type="button" class="butn butn-secondary" title="Add to Cart">
                            <i class="fa fa-shopping-cart"></i>
                        </button> 
                    </div>
                </div>
                <div class="product-bottom text-center">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <h3>ASUS Dual Geforce GTX1660ti</h3>
                    <h5>Tk. 35,000</h5>
                </div>
            </div>
            <div class="col-md-3">
                <div class="product-top">
                    <img src="../Images/fx505.png" />
                    <div class="overlay">
                        <button type="button" class="butn butn-secondary" title="View Specs">
                            <a href="specs.aspx"><i class="fa fa-eye"></i></a>
                        </button> 
                        <button type="button" class="butn butn-secondary" title="Add to Wishlist">
                            <i class="fa fa-heart-o"></i>
                        </button> 
                        <button type="button" class="butn butn-secondary" title="Add to Cart">
                            <i class="fa fa-shopping-cart"></i>
                        </button> 
                    </div>
                </div>
                <div class="product-bottom text-center">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star-half-o"></i>
                    <h3>ASUS TUF FX505</h3>
                    <h5>Tk. 87,000</h5>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

