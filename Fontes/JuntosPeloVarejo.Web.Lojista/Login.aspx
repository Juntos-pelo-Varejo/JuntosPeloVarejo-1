<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="JuntosPeloVarejo.Web.Lojista.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <title>.:: Juntos pelo varejo - Lojista ::.</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!-- Font Awesome -->
    <link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css" />
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css" />
    <!-- icheck bootstrap -->
    <link rel="stylesheet" href="plugins/icheck-bootstrap/icheck-bootstrap.min.css" />
    <!-- Theme style -->
    <link rel="stylesheet" href="dist/css/adminlte.min.css" />
    <!-- Google Font: Source Sans Pro -->
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet" />
</head>
<body class="hold-transition login-page">
    <div class="login-box">
        <div class="login-logo">
            <b>Juntos</b> pelo varejo
        </div>
        <!-- /.login-logo -->
        <div class="card">
            <div class="card-body login-card-body">
                <p class="login-box-msg">Apoio ao lojista</p>

                <form id="form1" runat="server">

                    <div class="input-group mb-3">
                        <input type="text" class="form-control" placeholder="Loja">
                        <div class="input-group-append">
                            <div class="input-group-text">
                                <span class="fas fa-cash-register"></span>
                            </div>
                        </div>
                    </div>
                    <div class="input-group mb-3">
                        <input type="password" class="form-control" placeholder="Senha">
                        <div class="input-group-append">
                            <div class="input-group-text">
                                <span class="fas fa-lock"></span>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <!-- /.col -->
                        <div class="col-12">
                            <asp:LinkButton ID="btnLogin" runat="server" CssClass="btn btn-primary btn-block" OnClick="btnLogin_Click">Juntar-se a rede</asp:LinkButton>
                        </div>
                        <!-- /.col -->
                    </div>

                </form>

                <p class="mb-1">
                    <a href="forgot-password.html">Esqueceu a senha?</a>
                </p>
                <p class="mb-0">
                    <a href="SolicitarAdesaoLojista.aspx" class="text-center">Cadastrar na plataforma</a>
                </p>
            </div>
            <!-- /.login-card-body -->
        </div>
    </div>





    <!-- jQuery -->
    <script src="plugins/jquery/jquery.min.js"></script>
    <!-- Bootstrap 4 -->
    <script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- AdminLTE App -->
    <script src="dist/js/adminlte.min.js"></script>
</body>
</html>
