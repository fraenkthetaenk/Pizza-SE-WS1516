﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace web.Worker
{
    public partial class WorkerOrders : System.Web.UI.Page
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
                if (user.Role != 2)
                {
                    Response.Redirect("../Error.aspx");
                }
            }
        }
    }
}