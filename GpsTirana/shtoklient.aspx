<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="shtoklient.aspx.cs" Inherits="GpsTirana.shtoklient" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Colorlib Templates">
    <meta name="author" content="Colorlib">
    <meta name="keywords" content="Colorlib Templates">

    <!-- Title Page-->
    <title>GPS Albania</title>

    <!-- Icons font CSS-->
    <link href="vendore/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="vendore/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Vendor CSS-->
    <link href="vendore/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="vendore/datepicker/daterangepicker.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="csse/main.css" rel="stylesheet" media="all">
    <style>
        .asdf {
           float:right;
        }
    </style>
</head>

<body>
    <div class="page-wrapper bg-gra-02 p-t-130 p-b-100 font-poppins">
        <div class="wrapper wrapper--w680">
            <div class="card card-4">
                <div class="card-body">
                    <span class="spani">
                        <h2 class="title">Rregjistro klient te ri</h2>
                    </span>

                    <form>
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Emer Klienti</label>
                                    <input class="input--style-4" type="text" name="first_name">
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Atesia e klientit</label>
                                    <input class="input--style-4" type="text" name="last_name">
                                </div>
                            </div>
                        </div>
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Mbiemri i sherbimit</label>
                                    <input class="input--style-4" type="text" name="first_name">
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">ID karte</label>
                                    <input class="input--style-4" type="text" name="last_name">
                                </div>
                            </div>
                        </div>
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Data e Lindjes</label>
                                    <div class="input-group-icon">
                                        <input class="input--style-4 js-datepicker" type="text" name="birthday">
                                        <i class="zmdi zmdi-calendar-note input-icon js-btn-calendar"></i>
                                    </div>
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Gjinia </label>
                                    <div class="p-t-10">
                                        <label class="radio-container m-r-45">
                                            M
                                            <input type="radio" checked="checked" name="gender">
                                            <span class="checkmark"></span>
                                        </label>
                                        <label class="radio-container">
                                            F
                                            <input type="radio" name="gender">
                                            <span class="checkmark"></span>
                                        </label>
                                    </div>
                                   

                                </div>
                            </div>
                        </div>
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Email</label>
                                    <input class="input--style-4" type="email" name="email">
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Phone Number</label>
                                    <input class="input--style-4" type="text" name="phone">
                                </div>
                            </div>
                        </div>
                           <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Adresa</label>
                                    <input class="input--style-4" type="email" name="email">
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Numer Kontrate</label>
                                    <input class="input--style-4" type="text" name="phone">
                                </div>
                            </div>
                        </div>
                        <%--<div class="input-group">
                            <label class="label">Lloji i sherbimit</label>
                            <div class="rs-select2 js-select-simple select--no-search">
                                <select name="Lloji i sherbimit">
                                    <option disabled="disabled" selected="selected">Choose option</option>
                                    <option>Fikje</option>
                                    <option>Roaming</option>
                                    <option>etj etj</option>
                                </select>
                                <div class="select-dropdown"></div>
                            </div>
                        </div>--%>
                        <div class="p-t-15">
                            <button class="btn btn--radius-2 btn--blue asdf" type="submit">Save</button>
                            <%--<button class="btn btn--radius-2 btn--blue  asdf" type="submit">Save and Send to mail</button>--%>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- Jquery JS-->
    <script src="vendore/jquery/jquery.min.js"></script>
    <!-- Vendor JS-->
    <script src="vendore/select2/select2.min.js"></script>
    <script src="vendore/datepicker/moment.min.js"></script>
    <script src="vendore/datepicker/daterangepicker.js"></script>

    <!-- Main JS-->
    <script src="jse/global.js"></script>

</body>
<!-- This templates was made by Colorlib (https://colorlib.com) -->

</html>
<!-- end document-->
