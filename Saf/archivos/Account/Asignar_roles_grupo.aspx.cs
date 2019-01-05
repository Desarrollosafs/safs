using archivos.Capa_Datos;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace archivos.Account
{
    public partial class Asignar_roles_grupo_spv : System.Web.UI.Page
    {
        DataClassesSeguridadDataContext db = new DataClassesSeguridadDataContext();

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        public void CleanControl(ControlCollection controles)
        {
            foreach (Control control in controles)
            {
                if (control is TextBox)
                    ((TextBox)control).Text = string.Empty;
                else if (control is DropDownList)
                    ((DropDownList)control).ClearSelection();
                else if (control is RadioButtonList)
                    ((RadioButtonList)control).ClearSelection();
                else if (control is CheckBoxList)
                    ((CheckBoxList)control).ClearSelection();
                else if (control is RadioButton)
                    ((RadioButton)control).Checked = false;
                else if (control is CheckBox)
                    ((CheckBox)control).Checked = false;
                else if (control.HasControls())

                    CleanControl(control.Controls);
            }
        }

        protected void Button_nueva_asignacion_Click(object sender, EventArgs e)
        {
            CleanControl(Controls);
        }
        

        protected void Button_registrar_Click(object sender, EventArgs e)
        {
            validar_registro();
        }

        private Boolean validar_registro()
        {
            if (DropDownList_grupo.SelectedValue== "1" && DropDownList_usuario.SelectedIndex != 0)
            {
                Lblerror.Text = "Este grupo no esta programado";
                //lblAviso.Text = "";
                return false;
            }
            if (DropDownList_grupo.SelectedIndex == 0 || DropDownList_usuario.SelectedIndex == 0)
            {
                Lblerror.Text = "Debe seleccionar un Grupo y un Usuario";
                lblAviso.Text = "";
                return false;
            }
            if (DropDownList_grupo.SelectedValue == "2" && DropDownList_usuario.SelectedIndex != 0)
            {
                registrar_roles_opr();
                //lblAviso.Text = "";
                return false;
            }

            if (DropDownList_grupo.SelectedValue == "3" && DropDownList_usuario.SelectedIndex != 0)
            {
                registrar_roles_Spv();
                //lblAviso.Text = "";
                return false;
            }

            

            return true;
        }

        private void registrar_roles_Spv()
        {
            string CS = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            using (SqlConnection Con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("P_INSERT_ROLES_SPV", Con);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@UserId", DropDownList_usuario.SelectedValue);


                try
                {

                    Con.Open();
                    cmd.ExecuteNonQuery();
                    lblAviso.Text = "Grupo asignado correctamente!";
                    Lblerror.Text = "";

                }

                catch (SqlException sqlexception)
                {
                    if (sqlexception.ErrorCode == -2146232060)
                    {
                        Lblerror.Text = "Esta Persona ya tiene roles de este grupo Asignado, verifique!";

                        lblAviso.Text = "";
                    }
                    else
                    {

                        Lblerror.Text = sqlexception.Message;
                        lblAviso.Text = "";
                    }

                }

                catch (Exception ex)
                {

                    Lblerror.Text = ex.Message;
                    lblAviso.Text = "";
                }
                finally
                {
                    Con.Close();
                    cmd.Dispose();
                }
            }
        }
        private void registrar_roles_opr()
        {
            string CS = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            using (SqlConnection Con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("P_INSERT_ROLES_OPR", Con);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@UserId", DropDownList_usuario.SelectedValue);
                

                try
                {
                    
                        Con.Open();
                        cmd.ExecuteNonQuery();
                        lblAviso.Text = "Grupo asignado correctamente!";
                        Lblerror.Text = "";
                      
                    }
                
                catch (SqlException sqlexception)
                {
                    if (sqlexception.ErrorCode == -2146232060)
                    {
                        Lblerror.Text = "Esta Persona ya tiene roles de este grupo Asignado, verifique!";

                        lblAviso.Text = "";
                    }
                    else
                    {

                        Lblerror.Text = sqlexception.Message;
                        lblAviso.Text = "";
                    }

                }

                catch (Exception ex)
                {

                    Lblerror.Text = ex.Message;
                    lblAviso.Text = "";
                }
                finally
                {
                    Con.Close();
                    cmd.Dispose();
                }
            }
        }

        private void registrar_roles_adm()
        {
            string CS = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            using (SqlConnection Con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("P_INSERT_ROLES_OPR", Con);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@UserId", DropDownList_usuario.SelectedValue);


                try
                {

                    Con.Open();
                    cmd.ExecuteNonQuery();
                    lblAviso.Text = "Grupo asignado correctamente!";
                    Lblerror.Text = "";

                }

                catch (SqlException sqlexception)
                {
                    if (sqlexception.ErrorCode == -2146232060)
                    {
                        Lblerror.Text = "Esta Persona ya tiene roles de este grupo Asignado, verifique!";

                        lblAviso.Text = "";
                    }
                    else
                    {

                        Lblerror.Text = sqlexception.Message;
                        lblAviso.Text = "";
                    }

                }

                catch (Exception ex)
                {

                    Lblerror.Text = ex.Message;
                    lblAviso.Text = "";
                }
                finally
                {
                    Con.Close();
                    cmd.Dispose();
                }
            }
        }


        protected void DropDownList_grupo_SelectedIndexChanged(object sender, EventArgs e)
        {
           
             cargarDropDown();
            
           
        }
        private void cargarDropDown()
        {
            var reg_servi = (from dto in db.P_GET_USER_BY_GRUPO(DropDownList_grupo.SelectedValue) select dto).ToList();

            DropDownList_usuario.DataSource = null;
            DropDownList_usuario.DataSource = reg_servi;
            DropDownList_usuario.DataValueField = "UserId";
            DropDownList_usuario.DataTextField = "UserName";
            DropDownList_usuario.DataBind();
            DropDownList_usuario.Items.Insert(0, new ListItem("Seleccione un Usuario", "NULL"));
            DropDownList_usuario.Enabled = true;


        }
    }
}