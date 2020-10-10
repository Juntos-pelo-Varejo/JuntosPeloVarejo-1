<%@ Page Title="" Language="C#" MasterPageFile="~/mpLojista.Master" AutoEventWireup="true" CodeBehind="admLojistaEspaco.aspx.cs" Inherits="JuntosPeloVarejo.Web.Lojista.admLojistaEspaco" %>


<%@ Register Src="crPaginacao.ascx" TagPrefix="uc1" TagName="crPaginacao" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>

    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Espaço para entrega 1</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="#">Home</a></li>
                        <li class="breadcrumb-item active">Espaço para entrega</li>
                    </ol>
                </div>
            </div>
        </div>
        <!-- /.container-fluid -->
    </section>

    <section class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header">


                            <asp:LinkButton ID="btnAdicionar" runat="server" ToolTip="Adicionar produto" OnClick="btnAdicionar_Click"><i class="fas fa-plus"></i> Adicionar</asp:LinkButton>


                            <div class="card-tools">
                                <div class="input-group input-group-sm" style="width: 300px;">
                                    <input type="text" name="table_search" class="form-control float-right" placeholder="Search">

                                    <div class="input-group-append">
                                        <button type="submit" class="btn btn-default"><i class="fas fa-search"></i></button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- /.card-header -->
                        <div class="card-body">

                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="table-responsive p-0">
                                        <asp:Repeater ID="rptLista" runat="server" OnItemCommand="rptLista_ItemCommand">
                                            <HeaderTemplate>
                                                <table class="table table-hover text-nowrap">
                                                    <thead>
                                                        <tr>
                                                            <th style="width: 5%">Código</th>
                                                            <th colspan="2">Nome</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                            </HeaderTemplate>
                                            <ItemTemplate>
                                                <tr style='<%#  Boolean.Parse( DataBinder.Eval(Container.DataItem, "Ativo").ToString()) ? "": "color:red;"  %>'>
                                                    <td style="width: 5%"><%#  DataBinder.Eval(Container.DataItem, "ID")%></td>
                                                    <td style="width: 90%"><%#  DataBinder.Eval(Container.DataItem, "Nome")%></td>
                                                    <td class="btn-group btn-group-lg text-right" style="width: 5%">
                                                        <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Consultar" CommandArgument='<%#  DataBinder.Eval(Container.DataItem, "ID")%>' ToolTip="Consultar"><i class="fas fa-edit"></i></asp:LinkButton>
                                                        |
                                            <asp:LinkButton ID="LinkButton3" runat="server" CommandName="Excluir" CommandArgument='<%# DataBinder.Eval(Container.DataItem, "ID")%>' ToolTip="Excluir"><i class="fas fa-trash"></i> </asp:LinkButton>
                                                        |
                                            <asp:LinkButton ID="LinkButton12" runat="server" CommandName="Retornar" CommandArgument='<%# DataBinder.Eval(Container.DataItem, "ID")%>' ToolTip="Retornar"><i class="fas fa-undo"></i>
                                            </asp:LinkButton>
                                                    </td>
                                                </tr>
                                            </ItemTemplate>
                                            <FooterTemplate>
                                                </tbody>
                                </table>
                                            </FooterTemplate>
                                        </asp:Repeater>
                                    </div>
                                </div>
                            </div>
                            <uc1:crPaginacao runat="server" ID="crPaginacao" />
                        </div>
                    </div>


                </div>
            </div>
        </div>
    </section>
    <asp:Panel ID="pnlFormulario" runat="server" Style="display: none;" CssClass="container-fluid">
        <div class="row">
            <!-- left column -->
            <div class="col-md-3">
            </div>
            <div class="col-md-6">
                <div class="card card-info">
                    <div class="card-header">
                        <h3 class="card-title">- Cadastro espaço para entrega 1</h3>
                    </div>
                    <!-- /.card-header -->

                    <div class="card-body">

                        <div class="form-group row">
                            <label for="inputEmail3" class="col-sm-2 col-form-label">Nome</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="inputEmail3">
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="inputEmail3" class="col-sm-2 col-form-label">Tipo Encomenda</label>
                            <div class="col-sm-10">
                                <select multiple="" class="custom-select">
                                    <option>Pacote Pequeno</option>
                                    <option>Pacote Médio</option>
                                    <option>Pacote Grande teste</option>
                                </select>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="inputPassword3" class="col-sm-2 col-form-label">Publicidade</label>
                            <div class="col-sm-10">
                                <textarea class="textarea" placeholder="Place some text here"
                                    style="width: 100%; height: 300px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;"></textarea>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label class="col-sm-10 col-form-label float-right">Receber encomendas terceiro?
                            </label>
                            <div class="col-sm-2">
                                <div class="form-check">
                                    <input type="checkbox" class="form-check-input">
                                </div>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label class="col-sm-2 col-form-label">Ativo</label>
                            <div class="col-sm-4">
                                <div class="form-check">
                                    <input type="checkbox" class="form-check-input" id="exampleCheck2">
                                </div>
                            </div> 
                        </div>

                    </div>
                    <!-- /.card-body -->
                    <div class="card-footer">
                        <button type="submit" class="btn btn-info float-right">Salvar</button>
                        <button type="submit" class="btn btn-default">Cancelar</button>
                    </div>
                    <!-- /.card-footer -->

                </div>
            </div>

            <div class="col-md-3">
            </div>

        </div>
    </asp:Panel>

    <ajaxToolkit:ModalPopupExtender ID="mdpFormulario" runat="server" TargetControlID="lbkExibir"
        PopupControlID="pnlFormulario" BackgroundCssClass="modalBackground">
    </ajaxToolkit:ModalPopupExtender>


    <asp:LinkButton ID="lbkExibir" runat="server" Style="display: none;"></asp:LinkButton>

     <!-- Summernote -->
    <script src="plugins/summernote/summernote-bs4.min.js"></script>
    <script>
        $(function () {
            // Summernote
            $('.textarea').summernote()
        })

</script>
</asp:Content>
