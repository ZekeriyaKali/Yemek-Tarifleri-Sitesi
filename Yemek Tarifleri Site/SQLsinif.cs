using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
namespace Yemek_Tarifleri_Sitemiz
{
    public class SQLsinif
    {   
        public SqlConnection baglanti() 
        {
            SqlConnection baglan = new SqlConnection(@"Data Source=DESKTOP-CRHO7CM;Initial Catalog=Dbo_yemektarifi;Integrated Security=true");
            baglan.Open();
            return baglan;
        }
            

    }
}