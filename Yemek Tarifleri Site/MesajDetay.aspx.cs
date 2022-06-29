using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifleri_Sitemiz
{
    public partial class MesajDetay : System.Web.UI.Page
    {
        SQLsinif bgl = new SQLsinif();
        String id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["Mesajid"];
            SqlCommand komut = new SqlCommand("Select * from tbl_mesajlar where mesajid=@p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", id);
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                TxtGonderen.Text = dr[1].ToString();
                TxtBaslik.Text = dr[2].ToString();
                TxtMail.Text = dr[3].ToString();
                Txticerik.Text = dr[4].ToString();                 
            }
            bgl.baglanti().Close();
        }
    }
}