using archivos.Capa_Datos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Evaluacion.Account
{
    public partial class ChangePass : System.Web.UI.Page
    {
        DataClassesSeguridadDataContext db = new  DataClassesSeguridadDataContext();
       
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ChangePassword_OnClick(object sender, EventArgs e)
        {
            MembershipUser u = Membership.GetUser(User.Identity.Name);

            try
            {
                if (u.ChangePassword(OldPasswordTextbox.Text, PasswordTextbox.Text))
                {
                    Msg.Text = "Su contraseña ha sido modificada, sastifactoriamente.";
                    forzar_cambiar_pass();
                    Response.Redirect("~/Default.aspx");
                   
                }
                else
                {
                    Msg.Text = "Cambio de contraseña fallido. Por favor, vuelva a introducir los valores y vuelva a intentarlo.";
                }
            }
            catch (Exception ex)
            {
                Msg.Text = "Ha producido una excepción: " + Server.HtmlEncode(ex.Message) + ". Por favor, vuelva a introducir los valores y vuelva a intentarlo.";
            }
        }
        private void forzar_cambiar_pass()
        {
            var dto = (db.P_FORZAR_PASS_INSERT(User.Identity.Name));
            db.SubmitChanges();
        
        }
    }
}