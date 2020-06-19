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
                            <h2 class="title">Rregjistro klient dhe sherbimin e tij</h2>
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
                                                Paisja1
                                            <input type="radio" checked="checked" name="gender">
                                                <span class="checkmark"></span>
                                            </label>
                                            <label class="radio-container">
                                                Paisja2
                                            <input type="radio" name="gender">
                                                <span class="checkmark"></span>
                                            </label>
                                        </div>

                                        <div class="p-t-10">
                                            <label class="radio-container m-r-45">
                                                Paisja3
                                            <input type="radio" checked="checked" name="gender">
                                                <span class="checkmark"></span>
                                            </label>
                                            <label class="radio-container">
                                                Paisja4
                                            <input type="radio" name="gender">
                                                <span class="checkmark"></span>
                                            </label>
                                        </div>
                                        <%-- <div class="p-t-10">
                                            <label class="radio-container m-r-45">
                                                Dashboard
                                            <input type="radio" checked="checked" name="gender">
                                                <span class="checkmark"></span>
                                            </label>
                                            <label class="radio-container">
                                                Kofano
                                            <input type="radio" name="gender">
                                                <span class="checkmark"></span>
                                            </label>
                                        </div>
                                        <div class="p-t-10">
                                            <label class="radio-container m-r-45">
                                                OBD,Siguresa
                                            <input type="radio" checked="checked" name="gender">
                                                <span class="checkmark"></span>
                                            </label>
                                            <label class="radio-container">
                                                Bagazh
                                            <input type="radio" name="gender">
                                                <span class="checkmark"></span>
                                            </label>
                                        </div>
                                        <div class="p-t-10">
                                            <label class="radio-container m-r-45">
                                                Kasetofon
                                            <input type="radio" checked="checked" name="gender">
                                                <span class="checkmark"></span>
                                            </label>
                                            <label class="radio-container">
                                                Pasagjer, Siguresa
                                            <input type="radio" name="gender">
                                                <span class="checkmark"></span>
                                            </label>
                                        </div>--%>
                                    </div>
                                </div>
                            </div>
                            <div class="row row-space">
                                <div class="col-2">
                                    <div class="input-group">
                                        <label class="label">Nr Teli </label>
                                        <input class="input--style-4" type="email" name="email" id="Nr_teli" runat="server" placeholder="+355...">
                                    </div>
                                </div>
                                <div class="col-2">
                                    <div class="input-group">
                                        <label class="label">Lloji i sherbimit</label>
                                        <div class="p-t-10">
                                            <label class="radio-container m-r-45">
                                                Basic
                                            <input type="radio" checked="checked" name="gender">
                                                <span class="checkmark"></span>
                                            </label>
                                            <label class="radio-container">
                                                Kofano
                                            <input type="radio" name="gender">
                                                <span class="checkmark"></span>
                                            </label>
                                            <label class="radio-container">
                                                shitje
                                            <input type="radio" name="gender">
                                                <span class="checkmark"></span>
                                            </label>
                                        </div>
                                        <div class="p-t-10">
                                            <label class="radio-container m-r-45">
                                                Fikje
                                            <input type="radio" checked="checked" name="gender">
                                                <span class="checkmark"></span>
                                            </label>
                                            <label class="radio-container">
                                                Roaming
                                            <input type="radio" name="gender">
                                                <span class="checkmark"></span>
                                            </label>
                                        </div>
                                        <div class="p-t-10">
                                            <label class="radio-container m-r-45">
                                                Karburant
                                            <input type="radio" checked="checked" name="gender">
                                                <span class="checkmark"></span>
                                            </label>
                                            <label class="radio-container">
                                                L.V.CAN
                                            <input type="radio" name="gender">
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
                                            <input type="radio" checked="checked" name="gender">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label class="radio-container">
                                        Kofano
                                            <input type="radio" name="gender">
                                        <span class="checkmark"></span>
                                    </label>
                                </div>
                                <div class="p-t-10">
                                    <label class="radio-container m-r-45">
                                        OBD,Siguresa
                                            <input type="radio" checked="checked" name="gender">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label class="radio-container">
                                        Bagazh
                                            <input type="radio" name="gender">
                                        <span class="checkmark"></span>
                                    </label>
                                </div>
                                <div class="p-t-10">
                                    <label class="radio-container m-r-45">
                                        Kasetofon
                                            <input type="radio" checked="checked" name="gender">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label class="radio-container">
                                        Pasagjer, Siguresa
                                            <input type="radio" name="gender">
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
                                            <input type="radio" checked="checked" name="gender">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label class="radio-container">
                                        6 muaj
                                            <input type="radio" name="gender">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label class="radio-container m-r-45">
                                        12 muaj
                                            <input type="radio" checked="checked" name="gender">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label class="radio-container m-r-45">
                                        Cdo muaj
                                            <input type="radio" checked="checked" name="gender">
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
                                <button class="btn btn--radius-2 btn--blue" type="submit">Save</button>
                                <button class="btn btn--radius-2 btn--blue " type="submit">Save & Send mail</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </form>
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
