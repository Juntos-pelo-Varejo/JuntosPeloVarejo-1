using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JuntosPeloVarejo.Web.Lojista
{
    public partial class admLojistaProduto : System.Web.UI.Page
    {

        private class Produto
        {
            public Int32 IDProduto { get; set; }
            public String Nome { get; set; }

            public Boolean Ativo { get; set; }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            IList<Produto> lista = new List<Produto>();

            for (int i = 0; i < 5; i++)
            {
                if (i % 2 == 0)
                    lista.Add(new Produto() { IDProduto = i, Nome = "Produto " + i.ToString(), Ativo = true });
                else
                    lista.Add(new Produto() { IDProduto = i, Nome = "Produto " + i.ToString(), Ativo = false });
            }

            rptLista.DataSource = lista;
            rptLista.DataBind();
        }

        protected void rptLista_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }

        protected void btnAdicionar_Click(object sender, EventArgs e)
        {
            mdpFormulario.Show();
        }

        protected void btnSalvar_Click(object sender, EventArgs e)
        {

        }
    }
}