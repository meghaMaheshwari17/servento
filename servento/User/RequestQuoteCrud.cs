﻿using As_Your_Need_services.Vendor;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;

namespace As_Your_Need_services.User
{
    public class RequestQuoteCrud
    {
        MyConnection MyCon = new MyConnection();
        public void requestmastercrud(String qry)
        {
            MyCon.cnopen();
            MyCon.cmd = new SqlCommand(qry, MyCon.cn);
            MyCon.cmd.ExecuteNonQuery();
            MyCon.cnclose();
        }

        public SqlDataReader select(String qry)
        {
            MyCon.cnopen();
            MyCon.cmd = new SqlCommand(qry, MyCon.cn);
            MyCon.dr = MyCon.cmd.ExecuteReader();
            return MyCon.dr;
        }
    }
}