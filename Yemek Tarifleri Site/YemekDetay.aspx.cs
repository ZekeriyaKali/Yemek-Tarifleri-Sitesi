using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifleri_Sitemiz
{
    public partial class YemekDetay : System.Web.UI.Page
    {
        SQLsinif bgl = new SQLsinif();
        String yemekid = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            yemekid = Request.QueryString["yemekid"];
            SqlCommand komut = new SqlCommand("Select YemekAd from tbl_Yemekler where yemekid=@p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", yemekid);
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                Label3.Text = dr[0].ToString();
            }
            bgl.baglanti().Close();

            // Yorumları listele
            SqlCommand komut2 = new SqlCommand("Select * from Tbl_Yorumlar where yemekid=@p2", bgl.baglanti());
            komut2.Parameters.AddWithValue("@p2", yemekid);
            SqlDataReader dr2 = komut2.ExecuteReader();
            DataList2.DataSource = dr2;
            DataList2.DataBind();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("insert into Tbl_Yorumlar (yorumadsoyad,yorummail,yorumicerik,yemekid) values (@p1,@p2,@p3,@p4)", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", TextBox2.Text);
            komut.Parameters.AddWithValue("@p2", TextBox3.Text);
            komut.Parameters.AddWithValue("@p3", TextBox4.Text);
            komut.Parameters.AddWithValue("@p4", yemekid);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}