﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace As_Your_Need_services.Vendor
{
    public partial class LogOut : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] != null)
            {
                Session.Clear();
                Response.Redirect("Default.aspx");

            }
            else
            {
                Response.Redirect("default.aspx");
            }

        }
    }
}