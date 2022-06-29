using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifleri_Sitemiz
{
    public partial class HakkimizdaAdmin : System.Web.UI.Page
    {
        SQLsinif bgl = new SQLsinif();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                SqlCommand komut = new SqlCommand("Select * from Tbl_hakkimizda", bgl.baglanti());
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    TxtHak.Text = dr[0].ToString().Replace("\n","<br />");
                }
                bgl.baglanti().Close();
            }
        }
        protected void BtnGuncelle_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("Update Tbl_hakkimizda set Metin=@p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", TxtHak.Text.Replace("@p1\r\n", "@p1"));
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}