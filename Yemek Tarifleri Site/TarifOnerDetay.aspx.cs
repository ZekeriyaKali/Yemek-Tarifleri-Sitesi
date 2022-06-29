using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifleri_Sitemiz
{
    public partial class TarifOnerDetay : System.Web.UI.Page
    {
        SQLsinif bgl = new SQLsinif();
        String id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                id = Request.QueryString["Tarifid"];
                SqlCommand komut = new SqlCommand("Select * From tbl_Tarifler where tarifid=@p1", bgl.baglanti());
                komut.Parameters.AddWithValue("@p1", id);
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    TxtAd.Text = dr[1].ToString();
                    TxtMalzeme.Text = dr[2].ToString();
                    TxtYap.Text = dr[3].ToString();
                    TxtOneren.Text = dr[5].ToString();
                    TxtMail.Text = dr[6].ToString();
                }
                bgl.baglanti().Close();

                //Kategori listesi
                SqlCommand komut2 = new SqlCommand("Select * From Tbl_Kategoriler", bgl.baglanti());
                SqlDataReader dr2 = komut2.ExecuteReader();
                DropDownList1.DataTextField = "KategoriAdi";
                DropDownList1.DataValueField = "Kategoriid";
                DropDownList1.DataSource = dr2;
                DropDownList1.DataBind();
            }


        }

        protected void BtnOnayla_Click(object sender, EventArgs e)
        {
            // Durum Güncelleme
            SqlCommand komut = new SqlCommand("update tbl_tarifler set tarifdurum=1 where tarifid=@p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", id);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();

            // Yemeği Anasayfaya ekleme
            SqlCommand komut2 = new SqlCommand("insert into tbl_yemekler (yemekad,yemekmalzeme,yemektarifi,kategoriid) values (@p1,@p2,@p3,@p4)", bgl.baglanti());
            komut2.Parameters.AddWithValue("@p1", TxtAd.Text);
            komut2.Parameters.AddWithValue("@p2", TxtMalzeme.Text);
            komut2.Parameters.AddWithValue("@p3", TxtYap.Text);
            komut2.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            komut2.ExecuteNonQuery();
            bgl.baglanti().Close();

        }
    }
}