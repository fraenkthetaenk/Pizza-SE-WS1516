﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace web.Costumer
{
    public partial class CostumerOrderOverview : System.Web.UI.Page
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
                if (user.Role != 0)
                {
                   Response.Redirect("../Error.aspx");
                    
                }
                lblUserID.Text = Convert.ToString(user.ID);
                bll.clsOrderFacade allOrders = new bll.clsOrderFacade();
                List<bll.clsOrderExtended> OrdersList = allOrders.OrdersGetByID(lblUserID.Text);
                double sum = 0;
                foreach (bll.clsOrderExtended element in OrdersList)
                {
                    sum = sum + element.OrderSum;
                }
                lblTotal.Text = sum.ToString();
             
            }

        }

        protected void ObjectDataSource2_Selecting(object sender, ObjectDataSourceSelectingEventArgs e)
        {

        }
    }
}