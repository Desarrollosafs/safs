using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Membership.OpenAuth;

namespace Seguridad.Account
{
    public partial class Register : Page
    {
        protected void Page_Load(object sender, EventArgs e)

        {
            //if (!HttpContext.Current.User.IsInRole("Administrar Usuario"))
            //    Response.Redirect("~/Loginerror.aspx");

            RegisterUser.ContinueDestinationPageUrl = Request.QueryString["ReturnUrl"];
        }

        protected void RegisterUser_CreatedUser(object sender, EventArgs e)
        {
            FormsAuthentication.SetAuthCookie(RegisterUser.UserName, createPersistentCookie: false);

            string continueUrl = RegisterUser.ContinueDestinationPageUrl;
            if (!OpenAuth.IsLocalUrl(continueUrl))
            {
                continueUrl = "~/Account/Register.aspx";
            }
            Response.Redirect(continueUrl);
        }
    }
}