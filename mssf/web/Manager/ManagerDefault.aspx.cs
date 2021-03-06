﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace web.Manager
{
    public partial class ManagerDefault : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session.Count == 0)
            {
                Response.Redirect("../Error.aspx");
            }
            else
            {
                bll.clsUser user = (bll.clsUser)Session["Current User"];
                if (user.Role != 1)
                {
                    Response.Redirect("../Error.aspx");
                }
                lblLogedIn.Text = user.Name;
            }

        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {

            Session.RemoveAll();
            Response.Redirect("../Redirect.aspx");


        }
    }
}