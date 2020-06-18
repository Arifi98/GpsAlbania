<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="shtoklient.aspx.cs" Inherits="GpsTirana.shtoklient" %>

<!DOCTYPE html>
<html lang="en">

<head>

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
            float: right;
        }
    </style>

    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>

    <script>
        function admin() {
            const Toast = Swal.mixin({
                toast: true,
                position: 'top-end',
                showConfirmButton: false,
                timer: 3000,
                timerProgressBar: true,
                onOpen: (toast) => {
                    toast.addEventListener('mouseenter', Swal.stopTimer)
                    toast.addEventListener('mouseleave', Swal.resumeTimer)
                }
            })

            Toast.fire({
                icon: 'success',
                title: 'Klienti u shtua me sukses '
            })
        }

        function operator() {
            const Toast = Swal.mixin({
                toast: true,
                position: 'top-end',
                showConfirmButton: false,
                timer: 3000,
                timerProgressBar: true,
                onOpen: (toast) => {
                    toast.addEventListener('mouseenter', Swal.stopTimer)
                    toast.addEventListener('mouseleave', Swal.resumeTimer)
                }
            })

            Toast.fire({
                icon: 'success',
                title: 'insert error'
            })
        }
        function a() {
            const Toast = Swal.mixin({
                toast: true,
                position: 'top-end',
                showConfirmButton: false,
                timer: 3000,
                timerProgressBar: true,
                onOpen: (toast) => {
                    toast.addEventListener('mouseenter', Swal.stopTimer)
                    toast.addEventListener('mouseleave', Swal.resumeTimer)
                }
            })

            Toast.fire({
                icon: 'error',
                title: 'Signed failed'
            })
        }
    </script>
</head>

<body>
    <div class="page-wrapper bg-gra-02 p-t-130 p-b-100 font-poppins">
        <div class="wrapper wrapper--w680">
            <div class="card card-4">
                <div class="card-body">
                    <span class="spani">
                        <h2 class="title">Rregjistro klient te ri</h2>
                    </span>

                    <form runat="server">
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Emer Klienti</label>
                                    <asp:TextBox  CssClass="input--style-4" type="text"  ID="emer" runat="server" />
                                    <asp:RequiredFieldValidator ID="rfvcandidate"
                                        runat="server" ControlToValidate="emer"
                                        ErrorMessage="Please choose a name"
                                        InitialValue="Please choose a name">
   
                                    </asp:RequiredFieldValidator>
                                </div>

                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Atesia e klientit</label>
                                    <input class="input--style-4" type="text" id="atesia" runat="server" required >
                                </div>
                            </div>
                        </div>
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Mbiemri i Klientit</label>
                                    <input class="input--style-4" type="text" id="mbiemri" runat="server">
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">ID karte</label>
                                    <input class="input--style-4" type="text" id="idkarte" runat="server">
                                </div>
                            </div>
                        </div>
                        <div class="row row-space">
                            <div class="col-2">
                                <%-- <div class="input-group">
                                    <label class="label">Data e Lindjes</label>
                                    <div class="input-group-icon">
                                        <input class="input--style-4 js-datepicker" type="text" id="birthday" runat="server" required>
                                        <i class="zmdi zmdi-calendar-note input-icon js-btn-calendar"></i>
                                    </div>
                                </div>--%>
                                <div class="input-group">
                                    <label class="label">NUIS</label>
                                    <input class="input--style-4" type="text" id="nuis" runat="server">
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Gjinia </label>
                                    <div class="p-t-10">
                                        <label class="radio-container m-r-45">
                                            M
                                            <input type="radio" value="M" id="gjinia1" runat="server" name="a">
                                            <span class="checkmark"></span>
                                        </label>
                                        <label class="radio-container">
                                            F
                                            <input type="radio" id="gjinia2" name="a" runat="server" value="F" checked="true">
                                            <span class="checkmark"></span>
                                        </label>
                                        <%--  <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                                            <asp:ListItem Value="male">male</asp:ListItem>
                                            <asp:ListItem Value="female">female</asp:ListItem>
                                        </asp:RadioButtonList>--%>
                                    </div>


                                </div>
                            </div>
                        </div>
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Email</label>
                                    <input class="input--style-4" type="email" id="email" runat="server">
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Phone Number</label>
                                    <input class="input--style-4" type="text" id="phone" runat="server">
                                </div>
                            </div>
                        </div>
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Adresa</label>
                                    <input class="input--style-4" type="text" id="adresa" runat="server">
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Numer Kontrate</label>
                                    <input class="input--style-4" type="text" id="kontrata" runat="server">
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


                        <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator1"
                            runat="server" ControlToValidate="atesia"
                            ErrorMessage="Please enter a value"
                            InitialValue="Please enter a value">
   
                        </asp:RequiredFieldValidator>

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2"
                            runat="server" ControlToValidate="mbiemri"
                            ErrorMessage="Please choose a value"
                            InitialValue="Please choose a value">
   
                        </asp:RequiredFieldValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3"
                            runat="server" ControlToValidate="idkarte"
                            ErrorMessage="Please choose  a value"
                            InitialValue="Please choose  a value">
   
                        </asp:RequiredFieldValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4"
                            runat="server" ControlToValidate="nuis"
                            ErrorMessage="Please choose a value"
                            InitialValue="Please choose a value">
   
                        </asp:RequiredFieldValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5"
                            runat="server" ControlToValidate="phone"
                            ErrorMessage="Please choose a value"
                            InitialValue="Please choose a value">
   
                        </asp:RequiredFieldValidator>

                        <asp:RegularExpressionValidator ID="remail" runat="server"
                            ControlToValidate="email" ErrorMessage="Enter your email"
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
                        </asp:RegularExpressionValidator>

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6"
                            runat="server" ControlToValidate="adresa"
                            ErrorMessage="Please choose a value"
                            InitialValue="Please choose a value">
   
                        </asp:RequiredFieldValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7"
                            runat="server" ControlToValidate="kontrata"
                            ErrorMessage="Please choose a value"
                            InitialValue="Please choose a value">
   
                        </asp:RequiredFieldValidator>--%>
                        <div class="p-t-15">
                            <button class="btn btn--radius-2 btn--blue asdf" type="submit" runat="server" onserverclick="save">Save</button>
                            <%--<button class="btn btn--radius-2 btn--blue  asdf" type="submit">Save and Send to mail</button>--%>
                        </div>
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
