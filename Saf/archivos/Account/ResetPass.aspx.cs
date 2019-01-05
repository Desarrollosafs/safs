using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security;
using System.Security.Authentication;
using System.Web.Security;

namespace Seguridad.Account
{
    public partial class ResetPass : System.Web.UI.Page
    {
        MembershipUser u;

        protected void Page_Load(object sender, EventArgs e)

        {
            //if (!HttpContext.Current.User.IsInRole("Administrar Usuario"))
            //    Response.Redirect("~/Loginerror.aspx");


            if (!Membership.EnablePasswordReset)
            {
                FormsAuthentication.RedirectToLoginPage();
            }

            Msg.Text = "";

            if (!IsPostBack)
            {
                Msg.Text = "Por Favor Introduzca un Usuario.";
            }
            else
            {
                VerifyUsername();
            }
        }


        public void VerifyUsername()
        {
            u = Membership.GetUser(UsernameTextBox.Text, false);

            if (u == null)
            {
                Msg.Text = "Usuario " + Server.HtmlEncode(UsernameTextBox.Text) + " Usuario no encontrado. Por favor verifique y trate de nuevo.";

                ResetPasswordButton.Enabled = false;
            }
            else
            {
                ResetPasswordButton.Enabled = true;
            }
        }

        protected void ResetPassword_OnClick(object sender, EventArgs e)
        {
            string newPassword;

            u = Membership.GetUser(UsernameTextBox.Text, false);

            if (u == null)
            {
                Msg.Text = "Usuario " + Server.HtmlEncode(UsernameTextBox.Text) + " Usuario no encontrado. Por favor verifique y trate de nuevo.";
                return;
            }

            try
            {
                newPassword = u.ResetPassword();
            }
            catch (MembershipPasswordException ex)
            {
                Msg.Text = "Contraseña Invalida Intente nuevamente.";
                return;
            }
            catch (Exception ex)
            {
                Msg.Text ="Error: " + ex.Message;
                return;
            }

            if (newPassword != null)
            {
                Msg.Text = "La contraseña fue restablecida. Su nueva contraseña es: " + Server.HtmlEncode(newPassword) + "</br>"+ "Esta contraseña es provisional se recomienda cambiarla por una que pueda recordar con facilidad";
            }
            else
            {
                Msg.Text = "Error al restablecer la contraseña. Por favor Intente de Nuevo.";
            }
        }
    }
}

      