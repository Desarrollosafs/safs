using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security;
using System.Web.Security;

namespace Seguridad.Account
{
    public partial class AdminUser1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!HttpContext.Current.User.IsInRole("Administrar Usuario"))
            //    Response.Redirect("~/Loginerror.aspx");
 
        }

        protected void Gvbuscauser_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            this.Gvbuscauser.PageIndex = e.NewPageIndex;
        }

        protected void Gvbuscauser_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {

            //string UserID = (Gvbuscauser.DataKeys[e.NewSelectedIndex].ToString());

            ////string UserId = Request.QueryString["UserId"];
            //int User = Int32.Parse(UserID);

            //string UserId = Request.QueryString["UserId"].ToString();

            //Guid user = new Guid(Gvbuscauser.DataKeyNames[e.NewSelectedIndex].Value);
            //Guid g = new Guid(Gvbuscauser.DataKeys[e.NewSelectedIndex].Value);
            Session["data"]=(Gvbuscauser.DataKeys[e.NewSelectedIndex].Value);

            //int UserID = Convert.ToInt32(Gvbuscauser.DataKeys[e.NewSelectedIndex].Value);

            Response.Redirect(string.Format("~/Account/DetallesUser.aspx?UserId={0}", Session["data"].ToString()));
        }

          

         protected void Bnt_buscar_Click(object sender, EventArgs e)
        {
            if (txtbuscaruser != null)
                NotificarError.Visible = false;
            else
                NotificarError.Visible = true;
            Lblnitificaerror.Text = "Ingrese un Usuario valido";

            if (Gvbuscauser == null)
                NotificarError.Visible = true;
            Lblnitificaerror.Text = "No hubo resultado con este Usuario";
             
             
             //Gvbuscauser.DataSource = Membership.FindUsersByName(txtbuscaruser.Text);
            //Gvbuscauser.DataBind();
        }

        protected void Gvbuscauser_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                Label lblNumeroFila = (Label)e.Row.FindControl("lblNumeroFila");
                lblNumeroFila.Text = ((e.Row.RowIndex + 1) + (Gvbuscauser.PageIndex * Gvbuscauser.PageSize)).ToString();
            }
        }

        
        protected void Gvbuscauser_PageIndexChanged(object sender, EventArgs e)
        {
           Response.Redirect("~/Account/DetallesUser.aspx?UserId=" + this.Gvbuscauser.SelectedValue);
        }

        
    }
}