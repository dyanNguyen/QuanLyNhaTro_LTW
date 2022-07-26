using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using phongtro.HeThongXuLy;
using System.Data.SqlClient;
using System.Data;
using System.IO;
namespace phongtro.FileKetNoiCSDL
{
    class DataAccess
    {
        public static SqlConnection KetNoi()
        {
            string sChuoiKetNoi = @"Data Source=.\SQLEXPRESS;Initial Catalog=NhaTro;Integrated Security=True";
            SqlConnection con = new SqlConnection(sChuoiKetNoi);
            con.Open();
            return con;
        }


        //Đóng kết nối
        public static void DongKetNoi(SqlConnection con)
        {
            con.Close();
        }


        //Lấy DataTable
        public static DataTable LayDataTable(string sTruyVan, SqlConnection con)
        {
            SqlDataAdapter da = new SqlDataAdapter(sTruyVan, con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;
        }
        //Xóa, cập nhật, thêm...
        //Thực thi truy vấn ExcuteNonQuery
        public static void ThucThiTruyVanNonQuery(string sTruyVan, SqlConnection con)
        {
            SqlCommand com = new SqlCommand(sTruyVan, con);
            com.ExecuteNonQuery();
        }
    }
}
