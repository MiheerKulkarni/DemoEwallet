using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Web.UI.WebControls;

namespace EWallet
{
    public partial class CustLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, ImageClickEventArgs e)
        {
            if (txtCustID.Text != null && txtPassword.Text != null)
            {
                string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;

                SqlConnection con = new SqlConnection(CS);
                SqlCommand cmd = new SqlCommand("Select Customer_ID,Customer_Password from F9T_UserLogin where Customer_ID=@CustomerID and Customer_Password=@Password", con);
                cmd.Parameters.AddWithValue("@CustomerID", txtCustID.Text);
                cmd.Parameters.AddWithValue("@Password", txtPassword.Text);
                Session["CustomerID"] = txtCustID.Text;
                con.Open();
                try
                {
                    if (cmd.ExecuteScalar() != null)
                    {
                        Response.Redirect("~/Fpay.aspx");
                        
                    }
                    else
                    {
                        lblmsg.Text = "Wrong Customer ID and/or Password!!";
                    }
                }
                catch (Exception)
                {
                    throw;
                }
                finally
                {
                    con.Close();
                }


            }

        }

        protected void lnkRegister_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/CustomerRegistration.aspx");


        }

        protected void lnkForgotPassword_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/ForgotPassword.aspx");
        }
    }
}