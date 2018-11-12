using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CookingBook
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                formularioRegistro.Visible = false;
            }
        }

        /// <summary>
        /// Evento del boton para visualizar el formulario de registro
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void btnRegistrate_Click(object sender, EventArgs e)
        {
            formularioRegistro.Visible = true;
            formularioInicioSesion.Visible = false;
        }

        protected void btnEnviarRegistro_Click(object sender, EventArgs e)
        {

        }
    }
}