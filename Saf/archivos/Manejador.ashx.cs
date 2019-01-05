using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace Archivo.Central
{
    /// <summary>
    /// Descripción breve de Manejador
    /// </summary>
    public class Manejador : IHttpHandler, System.Web.SessionState.IRequiresSessionState
    {

        public void ProcessRequest(HttpContext context)
        {
            //context.Response.ContentType = "texto/normal";
            //context.Response.Write("Hola a todos");
            context.Response.Clear();

            if (context.Session["Registro"] != null)
            {
                DataTable dt = (DataTable)context.Session["Registro"];
                DataRow drRegistro = dt.Select(string.Format("CODIGO={0}", context.Request.QueryString["CODIGO"]))[0];
                byte[] imagen = (byte[])drRegistro["foto"];
                context.Response.ContentType = "Images/png";
                context.Response.OutputStream.Write(imagen, 0, imagen.Length);
            }
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}