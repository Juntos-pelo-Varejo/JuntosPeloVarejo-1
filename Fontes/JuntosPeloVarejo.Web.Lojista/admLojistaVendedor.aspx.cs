using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JuntosPeloVarejo.Web.Lojista
{
    public partial class admLojistaVendedor : System.Web.UI.Page
    {

        private class Vendedor
        {
            public Int32 ID { get; set; }
            public String Nome { get; set; }

            public Boolean Ativo { get; set; }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            IList<Vendedor> lista = new List<Vendedor>();

            for (int i = 0; i < 5; i++)
            {
                if (i % 2 == 0)
                    lista.Add(new Vendedor() { ID = i, Nome = "Vendedor " + i.ToString(), Ativo = true });
                else
                    lista.Add(new Vendedor() { ID = i, Nome = "Vendedor " + i.ToString(), Ativo = false });
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