using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifleri_Sitemiz
{
    public partial class YemekDuzenle : System.Web.UI.Page
    {
        SQLsinif bgl = new SQLsinif();
        String id;

        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["Yemekid"];

            if (Page.IsPostBack == false)
            {
                SqlCommand komut = new SqlCommand("Select * from Tbl_Yemekler where Yemekid=@p1", bgl.baglanti());
                komut.Parameters.AddWithValue("@p1", id);
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    TextBox1.Text = dr[1].ToString();
                    TextBox2.Text = dr[2].ToString();
                    TextBox3.Text = dr[3].ToString();
                }
                bgl.baglanti().Close();



                if (Page.IsPostBack == false)
                {
                    //Kategori listesi
                    SqlCommand komut2 = new SqlCommand("Select * From Tbl_Kategoriler", bgl.baglanti());
                    SqlDataReader dr2 = komut2.ExecuteReader();
                    DropDownList1.DataTextField = "KategoriAdi";
                    DropDownList1.DataValueField = "Kategoriid";
                    DropDownList1.DataSource = dr2;
                    DropDownList1.DataBind();
                }
            }
            
        }

        protected void YemekGuncelle_Click(object sender, EventArgs e)
        {
            GorUp.SaveAs(Server.MapPath("~/Resimler/" + GorUp.FileName));

            SqlCommand komut = new SqlCommand("Update Tbl_Yemekler set yemekad=@p1,yemekmalzeme=@p2,yemektarifi=@p3,kategoriid=@p4, yemekresim=@p5 Where yemekid=@p6", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut.Parameters.AddWithValue("@p3", TextBox3.Text);
            komut.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            komut.Parameters.AddWithValue("@p5", "~/Resimler/"+GorUp.FileName);
            komut.Parameters.AddWithValue("@p6", id);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
        }

        protected void GununYemegiSec_Click(object sender, EventArgs e)
        {
            // yemekleri false yap
            SqlCommand komut = new SqlCommand("Update tbl_yemekler set durum=0", bgl.baglanti());
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();

            // günün yemeğini seç
            SqlCommand komut2 = new SqlCommand("update tbl_yemekler set durum=1 where yemekid=@p1", bgl.baglanti());
            komut2.Parameters.AddWithValue("@p1", id);
            komut2.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}