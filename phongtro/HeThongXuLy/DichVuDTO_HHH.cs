using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using phongtro.FileKetNoiCSDL;

namespace phongtro.HeThongXuLy
{
    class DichVuDTO_HHH
    {
        public string sMaDV { get; set; }
        public string sTenDV { get; set; }
        public string sDonGia { get; set; }
        public int sDonViTinh { get; set; }
    }
}
