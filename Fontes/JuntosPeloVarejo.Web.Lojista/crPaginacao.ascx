<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="crPaginacao.ascx.cs" Inherits="JuntosPeloVarejo.Web.Lojista.crPaginacao" %>
<div class="row">
    <div class="col-sm-12 col-md-2">

        <div class="dataTables_length">
            <label>
                <select name="example1_length" aria-controls="example1" class="custom-select custom-select-sm form-control form-control-sm">
                    <option value="10">Exibir 10 linhas</option>
                    <option value="25">25</option>
                    <option value="50">50</option>
                    <option value="100">100</option>
                </select></label>
        </div>

    </div>
    <div class="col-sm-12 col-md-6" style="text-align:center">
        Foram encontrado(s) 4 registro, exibindo 1 até 4.  
    </div> 
    <div class="col-sm-12 col-md-4 ">
         <div class="dataTables_paginate paging_simple_numbers float-right">
        <ul class="pagination">
            <li class="paginate_button page-item previous disabled"><a href="#" aria-controls="example2" data-dt-idx="0" tabindex="0" class="page-link">Previous</a></li>
            <li class="paginate_button page-item active"><a href="#" aria-controls="example2" data-dt-idx="1" tabindex="0" class="page-link">1</a></li>
            <li class="paginate_button page-item "><a href="#" aria-controls="example2" data-dt-idx="2" tabindex="0" class="page-link">2</a></li>
            <li class="paginate_button page-item "><a href="#" aria-controls="example2" data-dt-idx="3" tabindex="0" class="page-link">3</a></li>
            <li class="paginate_button page-item "><a href="#" aria-controls="example2" data-dt-idx="4" tabindex="0" class="page-link">4</a></li>
            <li class="paginate_button page-item "><a href="#" aria-controls="example2" data-dt-idx="5" tabindex="0" class="page-link">5</a></li>
            <li class="paginate_button page-item "><a href="#" aria-controls="example2" data-dt-idx="6" tabindex="0" class="page-link">6</a></li>
            <li class="paginate_button page-item next" id="example2_next"><a href="#" aria-controls="example2" data-dt-idx="7" tabindex="0" class="page-link">Next</a></li>
        </ul>
         </div>
    </div>
</div>
