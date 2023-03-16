using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace logreg
{
    public partial class WebForm1 : System.Web.UI.Page
    {

        public static SqlConnection con = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=Dbo_logreg;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {


            if (con.State!=ConnectionState.Open)
            {
                con.Open();
            }
            SqlCommand komut = new SqlCommand(@"select * from Tbl_Main where Email=@p1 and Password=@p2",con);
            komut.Parameters.AddWithValue("@p1",TxtLogEmail.Text);
            komut.Parameters.AddWithValue("@p2", TxtLogSifre.Text);
            SqlDataReader dr =komut.ExecuteReader();
            if (dr.Read())
            {
                Session["Email"] = dr["Email"].ToString();
                Response.Redirect("~/Admin.aspx");

            }
            else
            {
                Label1.Text="Username or password is wrong.";
            }
            dr.Close();
            con.Close();

        }
        protected void Button1_Click1(object sender, EventArgs e)
        {

            SqlCommand komut = new SqlCommand("insert into Tbl_Main(Name,PhoneNumber,Email,Password) values(@p1,@p2,@p3,@p4)", con);

            if (komut.Connection.State != ConnectionState.Open)
            {
                komut.Connection.Open();
            }
            komut.Parameters.AddWithValue("@p1", TxtRegName.Text);
            komut.Parameters.AddWithValue("@p2", TxtRegTelefon.Text);
            komut.Parameters.AddWithValue("@p3", TxtRegEmail.Text);
            komut.Parameters.AddWithValue("@p4", TxtRegSifre.Text);


            SqlDataReader dr =  komut.ExecuteReader();
            dr.Read();
            dr.Close();


        }



    }
}