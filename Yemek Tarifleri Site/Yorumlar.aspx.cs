﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifleri_Sitemiz
{
    public partial class Yorumlar : System.Web.UI.Page
    {
        SQLsinif bgl = new SQLsinif();
        string id = "";
        string islem = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;
            Panel4.Visible = false;

           
                id = Request.QueryString["Yorumid"];
                islem = Request.QueryString["islem"];
                //onaylı yorumlar
                SqlCommand komut = new SqlCommand("Select * From Tbl_Yorumlar where yorumonay=1", bgl.baglanti());
                SqlDataReader dr = komut.ExecuteReader();
                DataList1.DataSource = dr;
                DataList1.DataBind();
                //onaysız yorumlar
                SqlCommand komut2 = new SqlCommand("Select * From Tbl_Yorumlar where yorumonay=0", bgl.baglanti());
                SqlDataReader dr2 = komut2.ExecuteReader();
                DataList2.DataSource = dr2;
                DataList2.DataBind();
                   
            
                if (islem == "sil")
            {
                SqlCommand komut3 = new SqlCommand("Delete From Tbl_Yorumlar where Yorumid=@p1", bgl.baglanti());
                komut3.Parameters.AddWithValue("@p1", id);
                komut3.ExecuteNonQuery();
                bgl.baglanti().Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel4.Visible = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel4.Visible = false;
        }
    }
}