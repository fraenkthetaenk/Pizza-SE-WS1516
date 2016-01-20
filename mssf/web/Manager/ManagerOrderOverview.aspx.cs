using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace web.Manager
{
    public partial class ManagerOrder : System.Web.UI.Page
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

                bll.clsOrderFacade allOrders = new bll.clsOrderFacade();
                List<bll.clsOrderExtended> OrdersList = allOrders.OrdersGetAll();
                double sum = 0;
                foreach(bll.clsOrderExtended element in OrdersList)
                {
                    sum = sum + element.OrderSum;
                }
                lblTotal.Text = sum.ToString();
                lblAverage.Text = (sum / OrdersList.Count).ToString();

        }
    }
    }
}