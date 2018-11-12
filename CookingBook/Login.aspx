<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CookingBook.Login" %>

<%@ Register TagPrefix="uc" TagName="menu" Src="~/controlesUsuario/Menu.ascx" %>
<%@ Register TagPrefix="uc" TagName="footer" Src="~/controlesUsuario/Footer.ascx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Cooking Book</title>
    <link rel="icon" href="img/" />
    <link rel="stylesheet" type="text/css" href="App_Css/style.css" />
    <link rel="stylesheet" type="text/css" href="App_Css/bootstrap-4.min.css" />
    <link rel="stylesheet" type="text/css" href="App_Css/fontawesome-all.min.css" />
    <link rel="stylesheet" type="text/css" href="App_Css/jquery-ui.theme.min.css" />
    <link rel="stylesheet" type="text/css" href="App_Css/jquery-ui.min.css" />
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap-4.min.js"></script>
    <script src="js/jquery-ui.min.js"></script>

</head>
<body class="scroll-x">
   
    <form id="form1" runat="server">

        <!-- Formulario inicio sesion -->
        <div id="formularioInicioSesion" runat="server" visible="true" class="row">
            <div class="formulario-datos bg-light text-info col-md-6 offset-md-3 col-lg-4 offset-lg-4">
                <div class="content-formulario">
                    <h4 class="text-center col-md-12"><i class="fas fa-book"></i> COOCKING BOOK</h4>
                    <br />
                    <div class="form-row">
                        <div class="form-group col-md-12 col-lg-8 offset-lg-2">
                            <asp:TextBox runat="server" ID="txtUser" CssClass="form-control" placeholder="Usuario"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-12 col-lg-8 offset-lg-2">
                            <asp:TextBox runat="server" ID="txtPassword" CssClass="form-control" placeholder="Password"></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <div class="form-row">
                        <div class="form-group col-md-12">
                            <span class="button">
                                <asp:LinkButton ID="btnEntrarSesion" runat="server" class="btn text-white float-left" style="background-color:#17a2b8">Entrar&nbsp&nbsp <i class="fas fa-sign-in-alt"></i></asp:LinkButton>
                            </span>
                            <asp:LinkButton ID="btnRegistrate" CssClass="btn btn-outline-info bg-light float-right" runat="server" OnClick="btnRegistrate_Click">Regístrate</asp:LinkButton>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Formulario registro usuarios -->
        <div id="formularioRegistro" runat="server" visible="false" class="row">
            <div class="formulario-datos bg-light text-info col-md-6 offset-md-3 col-lg-4 offset-lg-4">
                <div class="content-formulario">
                    <h2 class="text-center">Formulario Nueva Cuenta</h2>
                    <br />
                    <h4 class="col-md-12">Datos Personales</h4>
                    <br />
                    <div class="form-row">
                        <div class="form-group col-md-12">
                            <asp:TextBox CssClass="form-control" ID="txtNombre" runat="server" Text="" placeholder="Nombre"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-12">
                            <asp:TextBox CssClass="form-control" ID="txtApellido" runat="server" Text="" placeholder="Apellido"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group col-md-12">
                        <label>Fecha Nacimiento:</label><br />
                        <div class="form-inline input-group date" data-date-format="dd-mm-yyyy">
                            <input class="form-control datepicker" runat="server" id="txtCalendar" />
                            <span class="input-group-addon calendar"><i class="fas fa-calendar-alt"></i></span>
                        </div>
                    </div>
                    <br />
                    <h4 class="col-md-12">Datos Usuario</h4>
                    <br />
                    <div class="form-row">
                        <div class="form-group col-md-12">
                            <div class="form-inline input-group">
                                <span><i class="fas fa-user icon"></i></span>
                                <asp:TextBox CssClass="form-control" ID="txtNombreUsuario" runat="server" Text="" placeholder="Nombre Usuario"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-12">
                            <div class="form-inline input-group">
                                <i class="fas fa-at icon"></i>
                                <asp:TextBox TextMode="Email" CssClass="form-control" runat="server" ID="txtEmail" Text="" placeholder="Correo Electrónico"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group col-md-12">
                            <div class="form-inline input-group">
                                <i class="fas fa-at icon"></i>
                                <asp:TextBox TextMode="Email" CssClass="form-control" runat="server" ID="txtConfirmEmail" placeholder="Confirme Correo"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-12">
                            <div class="form-inline input-group">
                                <i class="fas fa-unlock-alt icon"></i>
                                <asp:TextBox TextMode="Password" CssClass="form-control" runat="server" ID="txtPasswordRegistro" Text="" placeholder="Contraseña"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group col-md-12">
                            <div class="form-inline input-group">
                                <i class="fas fa-unlock-alt icon"></i>
                                <asp:TextBox TextMode="Password" CssClass="form-control" runat="server" ID="txtConfirmPassword" placeholder="Confirme Contraseña"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-12 float-right">
                            <span class="button"><asp:Button runat="server" ID="btnEnviarRegistro" OnClick="btnEnviarRegistro_Click" Text="Enviar" CssClass="btn text-white bg-info float-right" /></span>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <script type="text/javascript">

            $(function () {
                $('.datepicker').datepicker({
                    autoclose: true,
                    todayHighlight: true,
                    language: 'es'
                });

            });

        </script>

    </form>
    
</body>
</html>
