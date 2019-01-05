using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace Seguridad.Account
{
    public partial class ListUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!HttpContext.Current.User.IsInRole("Administrar Usuario"))
            //    Response.Redirect("~/Loginerror.aspx");

            Gvblitsuser.DataSource = Membership.GetAllUsers();
            Gvblitsuser.DataBind();
        }

        protected void Gvblitsuser_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                Label lblNumeroFila = (Label)e.Row.FindControl("lblNumeroFila");
                lblNumeroFila.Text = ((e.Row.RowIndex + 1) + (Gvblitsuser.PageIndex * Gvblitsuser.PageSize)).ToString();
            }
        }

        protected void Gvblitsuser_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            this.Gvblitsuser.PageIndex = e.NewPageIndex;
        }
    }
}