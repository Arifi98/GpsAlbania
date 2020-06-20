<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Rregjistro.aspx.cs" Inherits="GpsTirana.Rregjistro" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Colorlib Templates">
    <meta name="author" content="Colorlib">
    <meta name="keywords" content="Colorlib Templates">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <%--//jquery--%>

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
            margin-top: 20px;
            background: #4272d7;
            margin-left: 80px;
        }
    </style>
</head>

<body>
    <form runat="server">


        <div class="page-wrapper bg-gra-02 p-t-130 p-b-100 font-poppins">
            <div class="wrapper wrapper--w680">
                <div class="card card-4">
                    <div class="card-body">
                        <span class="spani">
                            <h2 class="title">Rregjistro nje  sherbim</h2>
                        </span>

                        <form>
                            <div class="row row-space">
                                <div class="col-2">
                                    <div class="input-group">
                                        <label class="label">Emer Klienti</label>
                                        <input class="input--style-4" type="text" name="first_name" id="emer" runat="server">
                                    </div>
                                </div>
                                <div class="col-2">
                                    <div class="input-group">
                                        <label class="label">ID Karte</label>
                                        <input class="input--style-4" type="text" name="last_name" id="idkarte" runat="server">
                                    </div>
                                </div>
                            </div>
                            <div class="row row-space">
                                <div class="col-2">
                                    <div class="input-group">
                                        <label class="label">Shiko nese ka sherbim te meparshem -------></label>

                                    </div>
                                </div>
                                <div class="col-2">
                                    <div class="input-group">
                                        <asp:Button Text="check here " runat="server" CssClass="btn btn--radius-2 btn--blue" OnClick="shiko_nese_ka_sherbim" />
                                    </div>
                                </div>
                            </div>
                            <div class="row row-space">
                                <div class="col-2">
                                    <div class="input-group">
                                        <label class="label">Modeli i mjetit</label>
                                        <input class="input--style-4" type="text" name="first_name" id="modeli" runat="server">
                                    </div>
                                </div>
                                <div class="col-2">
                                    <div class="input-group">
                                        <label class="label">Targa e Mjetit</label>
                                        <input class="input--style-4" type="text" name="last_name" id="targa" runat="server">
                                    </div>
                                </div>
                            </div>
                            <div class="row row-space">
                                <div class="col-2">
                                    <div class="input-group">
                                        <label class="label">IMEI</label>
                                        <div class="input-group-icon">
                                            <input class="input--style-4 " type="text" name="birthday" id="imei" runat="server">
                                            <%--<i class="zmdi zmdi-calendar-note input-icon js-btn-calendar"></i>--%>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-2">
                                    <div class="input-group">
                                        <label class="label">Paisja </label>
                                        <div class="p-t-10">
                                            <label class="radio-container m-r-45">
                                                Fmb 920
                                            <input type="radio" name="p" id="paisje1" runat="server" value=" Fmb 920">
                                                <span class="checkmark"></span>
                                            </label>
                                            <label class="radio-container">
                                                Fmb 120
                                            <input type="radio" name="p" id="paisje2" runat="server" value=" Fmb 120">
                                                <span class="checkmark"></span>
                                            </label>
                                        </div>

                                        <div class="p-t-10">
                                            <label class="radio-container m-r-45">
                                                Fma 120
                                            <input type="radio" name="p" id="paisje3" runat="server" value="Fma 120">
                                                <span class="checkmark"></span>
                                            </label>
                                            <label class="radio-container">
                                                Fm 1100
                                            <input type="radio" name="p" runat="server" id="paisje4" value=" Fm 1100">
                                                <span class="checkmark"></span>
                                            </label>
                                        </div>
                                        <div class="p-t-10">
                                            <label class="radio-container m-r-45">
                                                Fm 1202
                                            <input type="radio" name="p" id="paisje33" runat="server" value=" Fm 1202">
                                                <span class="checkmark"></span>
                                            </label>
                                            <label class="radio-container">
                                                Tmt 250
                                            <input type="radio" name="p" runat="server" id="paisje44" value=" Tmt 250">
                                                <span class="checkmark"></span>
                                            </label>
                                        </div>
                                        <div class="p-t-10">
                                            <label class="radio-container m-r-45">
                                                Fmb 140
                                            <input type="radio" name="p" id="Radio1" runat="server" value="Fmb 140">
                                                <span class="checkmark"></span>
                                            </label>
                                            <label class="radio-container">
                                                LV-CAN 200
                                            <input type="radio" name="p" runat="server" id="Radio2" value="LV-CAN 200">
                                                <span class="checkmark"></span>
                                            </label>
                                        </div>
                                        <div class="p-t-10">
                                            <label class="radio-container m-r-45">
                                                Fmb 001
                                            <input type="radio" name="p" id="Radio3" runat="server" value="Fmb 001">
                                                <span class="checkmark"></span>
                                            </label>
                                            <label class="radio-container">
                                                Fmb 002
                                            <input type="radio" name="p" runat="server" id="Radio4" value=" Fmb 002">
                                                <span class="checkmark"></span>
                                            </label>
                                            <label class="radio-container">
                                                Fmb 003
                                            <input type="radio" name="p" runat="server" id="Radio44" value="Fmb 003">
                                                <span class="checkmark"></span>
                                            </label>
                                        </div>



                                    </div>
                                </div>
                            </div>
                            <div class="row row-space">
                                <div class="col-2">
                                    <div class="input-group">
                                        <label class="label">Nr Teli </label>
                                        <input class="input--style-4" type="text" name="email" id="Nr_teli" runat="server" placeholder="06...">
                                    </div>
                                </div>
                                <div class="col-2">
                                    <div class="input-group">
                                        <label class="label">Lloji i sherbimit</label>
                                        <div class="p-t-10">
                                            <label class="radio-container m-r-45">
                                                Basic
                                            <input type="radio" name="ab" id="basic" runat="server" value="Basic">
                                                <span class="checkmark"></span>
                                            </label>
                                            <label class="radio-container">
                                                Kofano
                                            <input type="radio" name="b" id="kofani" runat="server" value="Kofano">
                                                <span class="checkmark"></span>
                                            </label>
                                            <label class="radio-container">
                                                shitje
                                            <input type="radio" name="c" id="shitje" runat="server" value="shitje">
                                                <span class="checkmark"></span>
                                            </label>
                                        </div>
                                        <div class="p-t-10">
                                            <label class="radio-container m-r-45">
                                                Fikje
                                            <input type="radio" name="d" id="fikje" runat="server" value="Fikje">
                                                <span class="checkmark"></span>
                                            </label>
                                            <label class="radio-container">
                                                Roaming
                                            <input type="radio" name="e" id="Roaming" runat="server" value="Roaming">
                                                <span class="checkmark"></span>
                                            </label>
                                        </div>
                                        <div class="p-t-10">
                                            <label class="radio-container m-r-45">
                                                Karburant
                                            <input type="radio" name="f" id="karburant" runat="server" value="Karburant">
                                                <span class="checkmark"></span>
                                            </label>
                                            <label class="radio-container">
                                                L.V.CAN
                                            <input type="radio" name="g" id="LVCAN" runat="server" value="L.V.CAN">
                                                <span class="checkmark"></span>
                                            </label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="input-group">
                                <label class="label">Vendi i instalimit</label>
                                <div class="p-t-10">
                                    <label class="radio-container m-r-45">
                                        Dashboard
                                            <input type="radio" name="gender" id="Dashboard" runat="server">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label class="radio-container">
                                        Kofano
                                            <input type="radio" name="gender" id="Kofano" runat="server">
                                        <span class="checkmark"></span>
                                    </label>
                                </div>
                                <div class="p-t-10">
                                    <label class="radio-container m-r-45">
                                        OBD,Siguresa
                                            <input type="radio" id="ObdSiguresa" runat="server" name="gender" value="OBD,Siguresa">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label class="radio-container">
                                        Bagazh
                                            <input type="radio" name="gender" id="Bagazh" runat="server">
                                        <span class="checkmark"></span>
                                    </label>
                                </div>
                                <div class="p-t-10">
                                    <label class="radio-container m-r-45">
                                        Kasetofon
                                            <input type="radio" id="Kasetofon" runat="server" name="gender">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label class="radio-container">
                                        Pasagjer, Siguresa
                                            <input type="radio" id="PasagjerSiguresa" runat="server" name="gender" value=" Pasagjer,Siguresa">
                                        <span class="checkmark"></span>
                                    </label>
                                </div>
                                <%--  <div class="rs-select2 js-select-simple select--no-search">
                                    <select name="Lloji i sherbimit">
                                        <option disabled="disabled" selected="selected">Choose option</option>
                                        <option>Fikje</option>
                                        <option>Roaming</option>
                                        <option>etj etj</option>
                                    </select>
                                    <div class="select-dropdown"></div>
                                </div>--%>
                            </div>
                            <div class="input-group">
                                <label class="label">Menyra pageses</label>
                                <div class="p-t-10">
                                    <label class="radio-container m-r-45">
                                        3 muaj
                                            <input type="radio" id="tremuaj" runat="server" name="t" value="3 muaj">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label class="radio-container">
                                        6 muaj
                                            <input type="radio" id="gjashtemuaj" runat="server" name="t" value="6 muaj">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label class="radio-container m-r-45">
                                        12 muaj
                                            <input type="radio" id="muaj" runat="server" name="t" value="12 muaj">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label class="radio-container m-r-45">
                                        Cdo muaj
                                            <input type="radio" id="Muajii" runat="server" name="t" value="cdo muaj">
                                        <span class="checkmark"></span>
                                    </label>
                                </div>
                            </div>

                            <div class="row row-space">
                                <div class="col-2">
                                    <div class="input-group">
                                        <label class="label">Data e pageses</label>
                                        <div class="input-group-icon">
                                            <input class="input--style-4 js-datepicker" type="text" name="birthday" id="Text1" runat="server">
                                            <i class="zmdi zmdi-calendar-note input-icon js-btn-calendar"></i>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-2">
                                    <div class="input-group">
                                        <label class="label">Koment mbi punen e kryer</label>
                                        <input class="input--style-4" type="text" name="last_name" id="Text2" runat="server">
                                    </div>
                                </div>
                            </div>
                            <div class="p-t-15">
                                <button class="btn btn--radius-2 btn--blue" type="submit" runat="server" onserverclick="save">Save</button>
                                <button class="btn btn--radius-2 btn--blue " type="submit" runat="server" onserverclick="saveemail">Save & Send mail</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </form>

    <script type="text/javascript">
        $(document).on("click", "input[name='ab']", function () {
            thisRadio = $(this);
            if (thisRadio.hasClass("imChecked")) {
                thisRadio.removeClass("imChecked");
                thisRadio.prop('checked', false);
            } else {
                thisRadio.prop('checked', true);
                thisRadio.addClass("imChecked");
            };
        })
        $(document).on("click", "input[name='b']", function () {
            thisRadio = $(this);
            if (thisRadio.hasClass("imChecked")) {
                thisRadio.removeClass("imChecked");
                thisRadio.prop('checked', false);
            } else {
                thisRadio.prop('checked', true);
                thisRadio.addClass("imChecked");
            };
        })
        $(document).on("click", "input[name='c']", function () {
            thisRadio = $(this);
            if (thisRadio.hasClass("imChecked")) {
                thisRadio.removeClass("imChecked");
                thisRadio.prop('checked', false);
            } else {
                thisRadio.prop('checked', true);
                thisRadio.addClass("imChecked");
            };
        })
        $(document).on("click", "input[name='d']", function () {
            thisRadio = $(this);
            if (thisRadio.hasClass("imChecked")) {
                thisRadio.removeClass("imChecked");
                thisRadio.prop('checked', false);
            } else {
                thisRadio.prop('checked', true);
                thisRadio.addClass("imChecked");
            };
        })
        $(document).on("click", "input[name='e']", function () {
            thisRadio = $(this);
            if (thisRadio.hasClass("imChecked")) {
                thisRadio.removeClass("imChecked");
                thisRadio.prop('checked', false);
            } else {
                thisRadio.prop('checked', true);
                thisRadio.addClass("imChecked");
            };
        })
        $(document).on("click", "input[name='f']", function () {
            thisRadio = $(this);
            if (thisRadio.hasClass("imChecked")) {
                thisRadio.removeClass("imChecked");
                thisRadio.prop('checked', false);
            } else {
                thisRadio.prop('checked', true);
                thisRadio.addClass("imChecked");
            };
        })
        $(document).on("click", "input[name='g']", function () {
            thisRadio = $(this);
            if (thisRadio.hasClass("imChecked")) {
                thisRadio.removeClass("imChecked");
                thisRadio.prop('checked', false);
            } else {
                thisRadio.prop('checked', true);
                thisRadio.addClass("imChecked");
            };
        })

    </script>
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
