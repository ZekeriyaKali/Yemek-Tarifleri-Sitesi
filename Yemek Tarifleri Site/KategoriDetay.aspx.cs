using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifleri_Sitemiz
{
    public partial class KategoriDetay : System.Web.UI.Page
    {
        SQLsinif bgl = new SQLsinif();
        String katid = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            katid = Request.QueryString["Kategoriid"];
            SqlCommand komut = new SqlCommand("Select * From Tbl_Yemekler Where Kategoriid=@p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", katid);
            SqlDataReader dr = komut.ExecuteReader();
            DataList2.DataSource = dr;
            DataList2.DataBind();
        }
    }
}