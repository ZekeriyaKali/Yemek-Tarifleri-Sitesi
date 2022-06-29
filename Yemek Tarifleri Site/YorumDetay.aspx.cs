using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifleri_Sitemiz
{
    public partial class YorumDetay : System.Web.UI.Page
    {
        SQLsinif bgl = new SQLsinif();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["Yorumid"];


            if (Page.IsPostBack == false)
            {
                SqlCommand komut = new SqlCommand("Select YorumAdSoyad,YorumMail,Yorumicerik,Yemekad From Tbl_Yorumlar inner join Tbl_Yemekler on Tbl_Yorumlar.yemekid=Tbl_yemekler.yemekid Where Yorumid=@p1", bgl.baglanti());
                komut.Parameters.AddWithValue("@p1", id);
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    TxtAd.Text = dr[0].ToString();
                    TxtMail.Text = dr[1].ToString();
                    TxtYorum.Text = dr[2].ToString();
                    TxtYemek.Text = dr[3].ToString();
                }
                bgl.baglanti().Close();
            }
        }

        protected void BtnOnayla_Click(object sender, EventArgs e)
        {
                SqlCommand komut = new SqlCommand("UPDATE tbl_yorumlar SET Yorumicerik=@p1, yorumonay=@p2 where yorumid=@p3", bgl.baglanti());
                komut.Parameters.AddWithValue("@p1", TxtYorum.Text);
                komut.Parameters.AddWithValue("@p2", true);
                komut.Parameters.AddWithValue("@p3", id);
                komut.ExecuteNonQuery();
                bgl.baglanti().Close();
        }
    }
}