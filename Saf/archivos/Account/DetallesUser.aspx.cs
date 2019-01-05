using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using Archivo.Central;
using Archivo.Central.Layers.Data;

namespace Seguridad.Account
{
    public partial class DetallesUser : System.Web.UI.Page
    {
        //string user = "";
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                cargarDropDownlist();

                if (!string.IsNullOrEmpty(Request.QueryString["UserId"]))
               
                {

                    SqlParameter Parameter = new SqlParameter("@UserId", Request.QueryString["UserId"]);
                    DataSet Ds = getData("P_BUSCA_MEMBER", Parameter);

                    if (Ds.Tables[0].Rows.Count > 0)
                    {

                        TextBoxUseId.Text = Ds.Tables[0].Rows[0]["UserId"].ToString();
                        TextBoxAplicacionID.Text = Ds.Tables[0].Rows[0]["ApplicationId"].ToString();
                        TextBoxPregunta.Text = Ds.Tables[0].Rows[0]["PasswordQuestion"].ToString();
                        TextBoxRepuesta.Text = Ds.Tables[0].Rows[0]["PasswordAnswer"].ToString();
                        CheckBoxUserLock.Checked = Convert.ToBoolean(Ds.Tables[0].Rows[0]["IsLockedOut"]);
                        dropDownListEmpresa.SelectedValue = Ds.Tables[0].Rows[0]["Comment"].ToString();
                        //dropDownListDepartamento.SelectedValue = Ds.Tables[0].Rows[0]["Comment"].ToString();
                        TextBoxEmail.Text = Ds.Tables[0].Rows[0]["Email"].ToString();
                        Check_ACTIVO.Checked = Convert.ToBoolean(Ds.Tables[0].Rows[0]["IsApproved"]);

                    }
                }
            }
        }
        private DataSet getData(string spName, SqlParameter spParameter)
        {

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString);
            SqlDataAdapter da = new SqlDataAdapter(spName, con);
            DataSet Ds = null;

            try
            {
                Ds = new DataSet();
                da.SelectCommand.CommandType = CommandType.StoredProcedure;
                if (spParameter != null)
                {
                    da.SelectCommand.Parameters.Add(spParameter);
                }

                da.Fill(Ds);
            }
            catch (Exception ex)
            {
                throw new Exception("Error: " + ex.Message);
            }
            finally
            {
                Ds.Dispose();
                con.Close();
            }

            return Ds;
        }



        protected void Button2_Click(object sender, EventArgs e)
        {

            SqlConnection Con = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString);


            SqlCommand cmd = new SqlCommand("P_UPDATE_USER", Con);
            cmd.CommandType = CommandType.StoredProcedure;

            try
            {
                cmd.Parameters.Add(new SqlParameter("@UserId", SqlDbType.NVarChar, 256));
                cmd.Parameters["@UserId"].Value = TextBoxUseId.Text; //  "'F62E2697-E990-4737-B707-0876849F6389'"  ;

                cmd.Parameters.Add("@email", SqlDbType.NVarChar, 256).Value = TextBoxEmail.Text;
                cmd.Parameters.Add("@PasswordQuestion", SqlDbType.NVarChar, 256).Value = TextBoxPregunta.Text;
                cmd.Parameters.Add("@PasswordAnswer", SqlDbType.NVarChar, 128).Value = TextBoxRepuesta.Text;
                cmd.Parameters.Add("@Comment", SqlDbType.NVarChar, 256).Value = dropDownListEmpresa.SelectedIndex == 0 ? null : dropDownListEmpresa.SelectedValue;
                cmd.Parameters.Add("@IsLockedOut", SqlDbType.Bit).Value = CheckBoxUserLock.Checked;
                cmd.Parameters.Add("@IsApproved", SqlDbType.Bit).Value = Check_ACTIVO.Checked;


                if (dropDownListEmpresa.SelectedIndex > 0)
                {

                    Con.Open();
                    cmd.ExecuteNonQuery();
                    Lbl_anuncio.Text = "Usuario Actualizado";

                }
                else
                {
                    Label_error.Text = "Debe de Seleccionar una empresa";

                }

            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
            finally
            {
                Con.Close();
                cmd.Dispose();
            }
        }


        private void cargarDropDownlist()
        {

            dropDownListEmpresa.DataSource = ClassData.getSqlDataTable("SELECT ID_EMPRESA, NOMBRE_EMPRESA FROM EMPRESAS WHERE ID_ESTADO_EMPRESA=1 ORDER BY 2");
            dropDownListEmpresa.DataTextField = "NOMBRE_EMPRESA";
            dropDownListEmpresa.DataValueField = "ID_EMPRESA";
            dropDownListEmpresa.DataBind();

            ListItem listEmpresa = new ListItem("Seleccione una Empresa", "-1");
            dropDownListEmpresa.Items.Insert(0, listEmpresa);

        }


     
    }

}



