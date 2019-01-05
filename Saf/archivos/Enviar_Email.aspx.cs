using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Mail;
using System.Net.Mail;

namespace Archivo.Central
{
    public partial class Enviar_Email : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (System.Web.Security.Membership.GetUser(User.Identity.Name).Email != null)
                {
                    txtDe.Text = System.Web.Security.Membership.GetUser(User.Identity.Name).Email;
                }


        }

        protected void Button_ENVIAR_Click(object sender, EventArgs e)
        {
                     
            System.Net.Mail.MailMessage correo = new System.Net.Mail.MailMessage();
            correo.From = new System.Net.Mail.MailAddress(txtDe.Text);
            correo.To.Add(txtPara.Text);
            correo.Subject = txtAsunto.Text;
            txtTexto.Text += "\n\nFecha y hora GMT: " +
                DateTime.Now.ToUniversalTime().ToString("dd/MM/yyyy HH:mm:ss");
            txtTexto.Text += "\n\n Notificado por: " + User.Identity.Name;
            correo.Body = txtTexto.Text;
            correo.IsBodyHtml = false;
            correo.Priority = System.Net.Mail.MailPriority.Normal;
            //
            System.Net.Mail.SmtpClient smtp = new System.Net.Mail.SmtpClient();
            //
            //---------------------------------------------
            // Estos datos debes rellanarlos correctamente
            //---------------------------------------------

            SmtpClient clienteSmtp = new SmtpClient();
            smtp.Host = "smtp.hosting.gob.do";
            smtp.Port = 25;
            smtp.UseDefaultCredentials = false;
            smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
            smtp.Credentials = new System.Net.NetworkCredential("soporte@catastro.gob.do", "12345678");
            smtp.EnableSsl = false;

            try
            {
                smtp.Send(correo);
                Label_aviso.Text = "Mensaje enviado satisfactoriamente";

                txtTexto.Text = "";
                Label_error.Text = "";
                Update_form_email.Update();
               
            }
            catch (Exception ex)
            {
                Label_error.Text = "ERROR: " + ex.Message;
                Label_aviso.Text = "";
            }
        }
        }
    }
